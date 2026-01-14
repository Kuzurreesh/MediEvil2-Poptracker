function Has(item)
	return Tracker:FindObjectForCode(item).Active
end

function Can(location)
	if Tracker:FindObjectForCode(location).AccessibilityLevel > 5 then
		return true
	else
		return false
	end
end


function Keyitem(item)
	if (Has("keyitemsanity") and Has(item) or not Has("keyitemsanity")) then
		return true
	else
		return false
	end
end

function Highlighting(list)
	for key, value in pairs(list) do
		local obj = Tracker:FindObjectForCode(value[1])
		if obj then
			obj.Highlight = Highlight.NoPriority
		end
	end
end

function Unlighting(list)
	for key, value in pairs(list) do
		local obj = Tracker:FindObjectForCode(value[1])
		if obj then
			obj.Highlight = Highlight.None
		end
	end
end