-- Manual installation:
-- Automator > New Script
-- Type of "Folder Action"
-- Select target "hot folder" at top of code pane
-- Add "Run AppleScript" action
-- Paste this code in code pane
-- Optionally add "Move Finder Items to Trash" action after code step
-- Save, done.

on run {input, parameters}
	
	repeat with this_item in the input
		set the item_info to info for this_item
		tell application id "com.evernote.evernote"
			activate
			create note from file this_item
		end tell
	end repeat
	return input
end run
