local textBox = script.Parent.TextBox
local displayLabel = script.Parent.TextLabel

--========|| Colorisation (set colors) ||========--
local Colors = {
	[Color3.fromRGB(248, 109, 124)] = {
		"function",
		"local",
		"global",
		"return",
		"if",
		"else",
		"elseif",
		"while",
		"for",
		"in",
		"do",
		"end",
		"then",
	},
	[Color3.fromRGB(74, 191, 198)] = {
		"plugin",
		"Enum",
		"game",
		"shared",
		"workspace",
		"service",
		"script",
	},
	[Color3.fromRGB(107, 171, 243)] = {
		"parent",
		"children",
		"print",
	},
	[Color3.fromRGB(248, 248, 124)] = {
		"warn",
		"Kick",
		"FindFirstChild",
		"FindFirstChildOfClass",
		"FindFirstChildWhichIsA",
		"WaitForChild",
		"Remove",
		"Destroy",
		"Clone",
		"IsA",
		"IsDescendantOf",
		"GetChildren",
		"GetDescendants",
		"SetPrimaryPartCFrame",
	},
	[Color3.fromRGB(20, 134, 0)] = {
		"true",
		"false",
		"nil",
	},
	[Color3.fromRGB(255, 0, 0)] = {
		"error",
		"assert",
	},
	[Color3.fromRGB(255, 165, 0)] = {
		"math",
		"string",
		"table",
		"coroutine",
	},
	[Color3.fromRGB(245, 207, 0)] = {
		"warn",
	},
	--========|| Integers ||========--
	[Color3.fromRGB(255, 235, 102)] = {
		0,
		1,
		2,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
	},
	[Color3.fromRGB(79, 191, 194)] = {
		"require",
		"module",
	},
	--Services (wip)
	[Color3.fromRGB(254, 245, 152)] = {
		"ReplicatedStorage",
		"Workspace",
		"Players",
		"StarterPlayer",
		"StarterPack",
		"StarterCharacterScripts",
		"StarterCharacter",
		"Lighting",
		"Teams",
		"TweenService",
		"PhysicsService",
		"Debris",
		"InsertService",
		"UserInputService",
		"UserGameSettings",
		"Chat",
		"HttpService",
		"ContentProvider",
		"SoundService",
		"TextService",
		"RunService",
		"MarketplaceService",
		"PlayersService",
		"GroupService",
		"CollectionService",
		"GuiService",
		"StudioService",
		"TeleportService",
		"BadgeService",
		"LogService",
		"AnalyticsService",
		"TestService",
		"VRService",
		"ReplicatedFirst",
		"RobloxReplicatedStorage",
		"JointsService",
		"ContextActionService",
		"VRHub",
		"PackageLink",

	},
	--========|| Lua standard library functions ||========--
	[Color3.fromRGB(128, 0, 128)] = { 
		"ipairs",
		"pairs",
		"next",
		"tostring",
		"tonumber",
		"assert",
		"collectgarbage",
		"dofile",
		"error",
		"getmetatable",
		"load",
		"loadfile",
		"pcall",
		"rawequal",
		"rawget",
		"rawset",
		"select",
		"setmetatable",
		"type",
		"xpcall",
	},
}

--========|| String color ||========--
local stringColor = Color3.fromRGB(20, 134, 0)

--========|| Main/Function start ||========--
local function updateDisplayText()
	local inputText = textBox.Text
	local coloredText = ""

	local function colorizeKeyword(keyword, color)
		return string.format('<font color="rgb(%d,%d,%d)">%s</font>', color.r * 255, color.g * 255, color.b * 255, keyword)
	end

	local function isNumeric(char)
		--========|| Scans for digits or / ||========--
		return char:match("[%d./]")
	end

	local i = 1
	local inputLength = #inputText
	while i <= inputLength do
		local char = inputText:sub(i, i)

		--========|| Detect colon ||========--
		if char == ':' then
			coloredText = coloredText .. char
			i = i + 1

			--========|| Colorise colon followings ||========--
			local colonWord = ""
			while i <= inputLength do
				local nextChar = inputText:sub(i, i)
				if nextChar:match("[%s%(%){}%[%]%.,;]") then
					break
				else
					colonWord = colonWord .. nextChar
					i = i + 1
				end
			end

			coloredText = coloredText .. colorizeKeyword(colonWord, Color3.fromRGB(254, 245, 152))
		else
			--========|| String Detector ||========--
			if char == '"' then
				local matchStart, matchEnd = inputText:find('"', i + 1)
				if matchStart and matchEnd then
					local stringLiteral = inputText:sub(i, matchEnd)
					coloredText = coloredText .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', stringColor.r * 255, stringColor.g * 255, stringColor.b * 255, stringLiteral)
					i = matchEnd + 1
				else
					coloredText = coloredText .. char
					i = i + 1
				end
			else
				--========|| Main/Keyword colorisation ||========--
				local foundKeyword = false
				for color, keywords in pairs(Colors) do
					for _, keyword in pairs(keywords) do
						local pattern = "(%f[%a])" .. keyword .. "(%f[%A])"
						local matchStart, matchEnd = inputText:find(pattern, i)
						if matchStart and matchStart == i then
							coloredText = coloredText .. colorizeKeyword(keyword, color)
							i = matchEnd + 1
							foundKeyword = true
							break
						end
					end
					if foundKeyword then
						break
					end
				end
				--========|| Integer colorisation ||========--
				if not foundKeyword then
					if isNumeric(char) then
						local numericLiteral = ""
						while i <= inputLength do
							local nextChar = inputText:sub(i, i)
							if isNumeric(nextChar) then
								numericLiteral = numericLiteral .. nextChar
								i = i + 1
							else
								break
							end
						end
						coloredText = coloredText .. colorizeKeyword(numericLiteral, Color3.fromRGB(255, 235, 102))
					else
						coloredText = coloredText .. char
						i = i + 1
					end
				end
			end
		end
	end
	displayLabel.Text = coloredText
end

--========|| Main/Function call ||========--
textBox:GetPropertyChangedSignal("Text"):Connect(updateDisplayText)
updateDisplayText()
