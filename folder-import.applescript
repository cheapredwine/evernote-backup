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
