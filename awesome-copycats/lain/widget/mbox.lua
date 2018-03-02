local wibox = require("wibox")
local helpers  = require("lain.helpers")
local io = { popen = io.popen }
local os = { getenv = os.getenv }
local pairs = pairs

local function factory(args)
local mbox = { accounts = {}, widget = wibox.widget.textbox() }
	local args = args or {}
	local settings = args.settings or function() end
	local timeout = args.timeout or 10

	local maildir = os.getenv("HOME") .. "/.mail"

	function mbox.update()
		-- Get all existing accounts
		local pipe = io.popen("find " .. maildir .. "/* -maxdepth 0 -type d -printf '%f\n'")
		for line in pipe:lines() do
			mbox.accounts[line] = 0
		end

		-- Count emails in "new" folders
		local allnew = 0
		for acc, _ in pairs(mbox.accounts) do
			local nmdir = maildir .. "/" .. acc .. "/INBOX/new"
			local pipe = io.popen("find " .. nmdir .. " -type f | wc -l")
			local newmail = pipe:read("*n")
			mbox.accounts[acc] = newmail
			allnew = allnew + newmail
		end

		mbox.allnewmail = allnew
		widget = mbox.widget

		mbox_now = {}
		mbox_now.allnewmail = mbox.allnewmail

		settings()
	end

	helpers.newtimer("mbox", timeout, mbox.update)
	return mbox
end

return factory
