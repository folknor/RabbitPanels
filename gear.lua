local panels = {
	LEFT = {
		width = 360,
		height = 160,
		point = "BOTTOMLEFT",
		relativePoint = "BOTTOMLEFT",
		x = 26,
		y = 26,
	},
	MIDDLE = {
		width = 510,
		height = 48,
		point = "BOTTOM",
		relativePoint = "BOTTOM",
		x = 0,
		y = 26,
	},
	RIGHT = {
		width = 360,
		height = 160,
		point = "BOTTOMRIGHT",
		relativePoint = "BOTTOMRIGHT",
		x = -26,
		y = 26,
	},
}

for k, details in pairs(panels) do
	local f = CreateFrame("Frame", "RabbitPanel" .. k, UIParent)
	f:SetPoint(details.point, "UIParent", details.relativePoint, details.x, details.y)
	f:SetWidth(details.width)
	f:SetHeight(details.height)
	f:SetFrameStrata("BACKGROUND")
	f:SetFrameLevel(2)
	f:EnableMouse(false)
	local bg = f:CreateTexture(nil, "BACKGROUND")
	bg:SetAllPoints(f)
	bg:SetTexture(0, 0, 0)
	bg:SetAlpha(0.8)
	CreateBorder(f, 12)
end
