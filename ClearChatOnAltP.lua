for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:HookScript("OnKeyDown", function(self, key)
		if key == "P" and IsControlKeyDown() and IsAltKeyDown() then
			local text = self:GetText()
			if IsShiftKeyDown() then
				C_Timer.After(0, function() self:SetText(text.."Ö") end)
			else
				C_Timer.After(0, function() self:SetText(text.."ö") end)
			end
		end
	end)
end
