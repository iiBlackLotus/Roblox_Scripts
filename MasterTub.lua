local Library = {}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local TaigaAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/iiBlackLotus/Roblox_Scripts/main/TaigaAPI.lua"))()

function Library:Window(WindowName, GameName, VersionNumber)
	if game:GetService("RunService"):IsStudio() then
	else
		if game.CoreGui:FindFirstChild("Masterhub") then
			game.CoreGui["Masterhub"]:Destroy()
		end
	end
	local Masterhub = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local lineY = Instance.new("Frame")
	local LeftFrame = Instance.new("Frame")
	local GameTitle = Instance.new("TextLabel")
	local TabHolder = Instance.new("Frame")
	local TabHolderLayout = Instance.new("UIListLayout")

	local UICorner = Instance.new("UICorner")
	local HubTitle = Instance.new("TextLabel")
	local VersionLabel = Instance.new("TextLabel")
	local ContainerHold = Instance.new("Frame")
	local DragFrame2 = Instance.new("Frame")
	local DragFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")

	Masterhub.Name = "Masterhub"
	Masterhub.Parent = game:GetService("RunService"):IsStudio() and script.Parent or game.CoreGui

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Masterhub
	MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.476147354, -246, 0.218474507, -6)
	MainFrame.Size = UDim2.new(0, 549, 0, 349)

	lineY.Name = "lineY"
	lineY.Parent = MainFrame
	lineY.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	lineY.BorderSizePixel = 0
	lineY.Position = UDim2.new(0.307057321, 0, -0.000614548801, 0)
	lineY.Size = UDim2.new(0, 4, 1, 0)

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	LeftFrame.Size = UDim2.new(0, 168, 0, 348)

	GameTitle.Name = "GameTitle"
	GameTitle.Parent = LeftFrame
	GameTitle.AnchorPoint = Vector2.new(0.5, 0)
	GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.BackgroundTransparency = 1.000
	GameTitle.Position = UDim2.new(0.5, 0, 0.104999997, 0)
	GameTitle.Size = UDim2.new(1, 0, 0, 18)
	GameTitle.Font = Enum.Font.Gotham
	GameTitle.Text = GameName
	GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.TextSize = 18.000

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = LeftFrame
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.Position = UDim2.new(0.0773809552, 0, 0.186781615, 0)
	TabHolder.Size = UDim2.new(0, 143, 0, 268)

	TabHolderLayout.Name = "TabHolderLayout"
	TabHolderLayout.Parent = TabHolder
	TabHolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	TabHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabHolderLayout.Padding = UDim.new(0, 2)

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = LeftFrame

	HubTitle.Name = "HubTitle"
	HubTitle.Parent = LeftFrame
	HubTitle.AnchorPoint = Vector2.new(0.5, 0)
	HubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.BackgroundTransparency = 1.000
	HubTitle.Position = UDim2.new(0.5, 0, 0.00800000038, 4)
	HubTitle.Size = UDim2.new(1, 0, 0, 25)
	HubTitle.Font = Enum.Font.GothamSemibold
	HubTitle.Text = WindowName
	HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.TextSize = 26.000
	HubTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.TextWrapped = true

	VersionLabel.Name = "Version"
	VersionLabel.Parent = LeftFrame
	VersionLabel.AnchorPoint = Vector2.new(0.5, 0)
	VersionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VersionLabel.BackgroundTransparency = 1.000
	VersionLabel.Position = UDim2.new(0.5, 0, 0.920000017, 0)
	VersionLabel.Size = UDim2.new(1, 0, 0, 25)
	VersionLabel.Font = Enum.Font.Arial
	VersionLabel.Text = "Version "..VersionNumber
	VersionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	VersionLabel.TextSize = 15.000
	VersionLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	VersionLabel.TextWrapped = true

	ContainerHold.Name = "ContainerHold"
	ContainerHold.Parent = MainFrame
	ContainerHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContainerHold.BackgroundTransparency = 1.000
	ContainerHold.Position = UDim2.new(0.313296914, 0, 0.0487106033, 0)
	ContainerHold.Size = UDim2.new(0, 371, 0, 322)

	DragFrame2.Name = "DragFrame2"
	DragFrame2.Parent = MainFrame
	DragFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DragFrame2.BackgroundTransparency = 1.000
	DragFrame2.Size = UDim2.new(0, 168, 0, 348)

	DragFrame.Name = "DragFrame"
	DragFrame.Parent = MainFrame
	DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DragFrame.BackgroundTransparency = 1.000
	DragFrame.Size = UDim2.new(0, 549, 0, 18)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = MainFrame

	TaigaAPI.MakeDraggable(DragFrame, MainFrame)
	TaigaAPI.MakeDraggable(DragFrame2, MainFrame)

	local Tabs = {}
	local FirstTab = true

	local uitoggled = false
	UserInputService.InputBegan:Connect(
		function(io, p)
			if io.KeyCode == Enum.KeyCode.RightControl then
				if uitoggled == false then
					ContainerHold.Visible = false
					LeftFrame.Visible = false
					lineY.Visible = false
					TweenService:Create(
						MainFrame,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					repeat task.wait() until MainFrame.Size == UDim2.new(0, 0, 0, 0)
					MainFrame.Visible = false
					uitoggled = true
				else
					MainFrame.Visible = true
					TweenService:Create(
						MainFrame,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 549, 0, 349)}
					):Play()
					repeat task.wait() until MainFrame.Size == UDim2.new(0, 549, 0, 349)
					ContainerHold.Visible = true
					LeftFrame.Visible = true
					lineY.Visible = true
					uitoggled = false
				end
			end
		end)


	function Tabs:Tab(TabName)

		local Containers = {}
		local TabTemplate = Instance.new("TextButton")
		local TabCorner = Instance.new("UICorner")

		TabTemplate.Name = "TabTemplate"
		TabTemplate.Parent = TabHolder
		TabTemplate.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
		TabTemplate.Position = UDim2.new(0.0242161341, 0, 0.186639979, 0)
		TabTemplate.Size = UDim2.new(0, 140, 0, 30)
		TabTemplate.Font = Enum.Font.SourceSans
		TabTemplate.Text = TabName
		TabTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabTemplate.TextSize = 20.000

		TabCorner.CornerRadius = UDim.new(0, 3)
		TabCorner.Name = "TabCorner"
		TabCorner.Parent = TabTemplate


		local Container = Instance.new("ScrollingFrame")
		local ContainerLayout = Instance.new("UIListLayout")

		Container.Name = "Container"
		Container.Parent = ContainerHold
		Container.Active = true
		Container.Visible = false

		Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container.BackgroundTransparency = 1.000
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(-0.000220450427, 0, 8.84251567e-05, 0)
		Container.Size = UDim2.new(0, 371, 0, 323)
		Container.CanvasSize = UDim2.new(0, 0, 0, 0)
		Container.ScrollBarThickness = 8

		ContainerLayout.Name = "ContainerLayout"
		ContainerLayout.Parent = Container
		ContainerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ContainerLayout.Padding = UDim.new(0, 7)

		if FirstTab == true then
			TabTemplate.BackgroundTransparency = 0
			Container.Visible = true
		else
			TabTemplate.BackgroundTransparency = 1

		end
		FirstTab = false

		TabTemplate.MouseButton1Click:Connect(function()
			for i, v in next, ContainerHold:GetChildren() do
				if v.ClassName == "ScrollingFrame" then
					v.Visible = false
				end
			end

			for i, v in next, TabHolder:GetChildren() do
				if v.ClassName == "TextButton" then
					TweenService:Create(v, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play()
					TweenService:Create(TabTemplate, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
				end
			end
			Container.Visible = true

		end)

		function Containers:Button(buttonName, callback)
			local ButtonTemplate = Instance.new("Frame")
			local ButtonCorner = Instance.new("UICorner")
			local ButtonButton = Instance.new("TextButton")
			ButtonTemplate.Name = "ButtonTemplate"
			ButtonTemplate.Parent = Container
			ButtonTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			ButtonTemplate.BorderSizePixel = 0
			ButtonTemplate.Size = UDim2.new(0.899999976, 0, 0, 30)
			ButtonTemplate.ClipsDescendants = true

			ButtonCorner.CornerRadius = UDim.new(0, 5)
			ButtonCorner.Name = "ButtonCorner"
			ButtonCorner.Parent = ButtonTemplate

			ButtonButton.Name = "ButtonButton"
			ButtonButton.Parent = ButtonTemplate
			ButtonButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonButton.BackgroundTransparency = 1.000
			ButtonButton.Size = UDim2.new(1, 0, 1, 0)
			ButtonButton.Font = Enum.Font.Gotham
			ButtonButton.Text = buttonName
			ButtonButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonButton.TextSize = 16.000

			ButtonButton.MouseButton1Click:Connect(function()
				TaigaAPI.CircleAnimation(ButtonTemplate, Color3.fromRGB(205,205,205), Color3.fromRGB(125,125,125))
				return pcall(callback)
			end)
			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
		end

		function Containers:Dropdown(Title, List, Callback)
			local DropdownOpen = true
			local dropfunc = {}
			
			local DropToggled = false
			local FrameSize = 0
			local ItemCount = 0

			local DropdownTemplate = Instance.new("Frame")
			local Corner = Instance.new("UICorner")
			local DropdownTitle = Instance.new("TextLabel")
			local ImageLabel = Instance.new("ImageLabel")
			local DropdownHolder = Instance.new("ScrollingFrame")
			local DropdownHolderLayout = Instance.new("UIListLayout")
			local DropdownButton = Instance.new("TextButton")

			DropdownTemplate.Name = "DropdownTemplate"
			DropdownTemplate.Parent = Container
			DropdownTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			DropdownTemplate.BackgroundTransparency = 1.000
			DropdownTemplate.BorderSizePixel = 0
			DropdownTemplate.ClipsDescendants = true
			DropdownTemplate.Position = UDim2.new(0.0499999672, 0, 0.229102165, 0)
			DropdownTemplate.Size = UDim2.new(0.899999976, 0, 0, 30)

			Corner.CornerRadius = UDim.new(0, 5)
			Corner.Name = "Corner"
			Corner.Parent = DropdownTemplate

			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Parent = DropdownTemplate
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			DropdownTitle.Size = UDim2.new(0, 316, 0, 30)
			DropdownTitle.ZIndex = 2
			DropdownTitle.Font = Enum.Font.Gotham
			DropdownTitle.Text = "Select One"
			DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.TextSize = 15.000
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			ImageLabel.Parent = DropdownTemplate
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Position = UDim2.new(0.874000013, 0, 0, 4)
			ImageLabel.Size = UDim2.new(0, 30, 0, 22)
			ImageLabel.ZIndex = 2
			ImageLabel.Image = "rbxassetid://6034818372"
			ImageLabel.ScaleType = Enum.ScaleType.Fit

			DropdownHolder.Name = "DropdownHolder"
			DropdownHolder.Parent = DropdownTemplate
			DropdownHolder.Active = true
			DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownHolder.BackgroundTransparency = 1.000
			DropdownHolder.BorderSizePixel = 0
			DropdownHolder.ClipsDescendants = false
			DropdownHolder.Position = UDim2.new(0, 0, 0, 36)
			DropdownHolder.Size = UDim2.new(0, 324, 0, 156)
			DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 165)
			DropdownHolder.ScrollBarThickness = 0
			DropdownHolder.ScrollingEnabled = false

			DropdownHolderLayout.Name = "DropdownHolderLayout"
			DropdownHolderLayout.Parent = DropdownHolder
			DropdownHolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			DropdownHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownHolderLayout.Padding = UDim.new(0, 6)

			DropdownButton.Name = "DropdownButton"
			DropdownButton.Parent = DropdownTemplate
			DropdownButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			DropdownButton.BorderSizePixel = 0
			DropdownButton.Size = UDim2.new(1, 0, 0, 30)
			DropdownButton.Font = Enum.Font.SourceSans
			DropdownButton.Text = ""
			DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropdownButton.TextSize = 14.000
			DropdownButton.ClipsDescendants = true

			DropdownButton.MouseButton1Click:Connect(function()
				--TaigaAPI.CircleAnimation(DropdownButton, Color3.fromRGB(205,205,205), Color3.fromRGB(125,125,125))
				local Y = (#DropdownHolder:GetChildren()-1) * 26
				if DropdownOpen then 
					local tweenNew = TweenService:Create(DropdownTemplate, TweenInfo.new(.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(.9,0,0,Y+36)})
					tweenNew:Play()
					tweenNew.Completed:Connect(function()
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					end)
				else
					local tweenNew = TweenService:Create(DropdownTemplate, TweenInfo.new(.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(.9,0,0,30)})
					tweenNew:Play()
					tweenNew.Completed:Connect(function()
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					end)
				end
				DropdownOpen = not DropdownOpen
			end)

			for i, v in next, List do
				print(i,v)
				function dropfunc:Add(toadd)
					ItemCount = ItemCount + 1

					local DropdownItem = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")

					DropdownItem.Name = "DropdownItem"
					DropdownItem.Parent = DropdownHolder
					DropdownItem.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					DropdownItem.Position = UDim2.new(0.0462962948, 0, 0, 0)
					DropdownItem.Size = UDim2.new(0, 294, 0, 20)
					DropdownItem.ZIndex = 10
					DropdownItem.AutoButtonColor = true
					DropdownItem.Font = Enum.Font.Gotham
					DropdownItem.Text = tostring(v)
					DropdownItem.TextColor3 = Color3.fromRGB(255, 255, 255)
					DropdownItem.TextSize = 15.000
					
					ItemCorner.CornerRadius = UDim.new(0, 3)
					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = DropdownItem


					DropdownItem.MouseButton1Click:Connect(function()
						DropdownTitle.Text = tostring(Title) .. " - " .. tostring(v)
						DropToggled = false
					end)
				end
				dropfunc.Add(v)
				Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

			end
			return dropfunc
		end

		function Containers:Slider(Text, min, max, start, callback)
			local SliderTemplate = Instance.new("TextButton")
			local SliderCorner = Instance.new("UICorner")
			local SliderTitle = Instance.new("TextLabel")
			local SliderValue = Instance.new("TextLabel")
			local SliderFrame = Instance.new("Frame")
			local SliderFrameCorner = Instance.new("UICorner")
			local SliderIndicator = Instance.new("Frame")
			local SliderFrameCorner_2 = Instance.new("UICorner")
			local SliderCircle = Instance.new("Frame")
			local SliderFrameCorner_3 = Instance.new("UICorner")

			SliderTemplate.Name = "SliderTemplate"
			SliderTemplate.Parent = Container
			SliderTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			SliderTemplate.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SliderTemplate.LayoutOrder = 6
			SliderTemplate.Position = UDim2.new(0.0837500021, 0, 0.349431813, 0)
			SliderTemplate.Size = UDim2.new(0, 333, 0, 42)
			SliderTemplate.AutoButtonColor = false
			SliderTemplate.Font = Enum.Font.Gotham
			SliderTemplate.Text = ""
			SliderTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTemplate.TextSize = 16.000

			SliderCorner.CornerRadius = UDim.new(0, 5)
			SliderCorner.Name = "SliderCorner"
			SliderCorner.Parent = SliderTemplate

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = SliderTemplate
			SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.BackgroundTransparency = 1.000
			SliderTitle.Position = UDim2.new(0.0420420431, 0, 0.119047619, 0)
			SliderTitle.Size = UDim2.new(0, 165, 0, 15)
			SliderTitle.Font = Enum.Font.Gotham
			SliderTitle.Text = Text
			SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.TextSize = 15.000
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			SliderValue.Name = "SliderValue"
			SliderValue.Parent = SliderTemplate
			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.BackgroundTransparency = 1.000
			SliderValue.Position = UDim2.new(0.813813806, 0, 0.119047619, 0)
			SliderValue.Size = UDim2.new(0, 62, 0, 15)
			SliderValue.Font = Enum.Font.Gotham
			SliderValue.Text = tostring(start)
			SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.TextSize = 15.000

			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = SliderTemplate
			SliderFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			SliderFrame.Position = UDim2.new(0.0360360369, 0, 0.619047642, 0)
			SliderFrame.Size = UDim2.new(0, 309, 0, 8)

			SliderFrameCorner.Name = "SliderFrameCorner"
			SliderFrameCorner.Parent = SliderFrame

			SliderIndicator.Name = "SliderIndicator"
			SliderIndicator.Parent = SliderFrame
			SliderIndicator.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
			SliderIndicator.Position = UDim2.new(0.00367361517, 0, -0.00595092773, 0)
			SliderIndicator.Size = UDim2.new((start or 0) / max, 0, 0, 8)

			SliderFrameCorner_2.Name = "SliderFrameCorner"
			SliderFrameCorner_2.Parent = SliderIndicator

			SliderCircle.Name = "SliderCircle"
			SliderCircle.Parent = SliderIndicator
			SliderCircle.AnchorPoint = Vector2.new(0, 0.5)
			SliderCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderCircle.Position = UDim2.new(1, -11, 0.5, 0)
			SliderCircle.Size = UDim2.new(0, 12, 0, 12)
			SliderCircle.BackgroundTransparency = 1

			SliderFrameCorner_3.CornerRadius = UDim.new(0, 18)
			SliderFrameCorner_3.Name = "SliderFrameCorner"
			SliderFrameCorner_3.Parent = SliderCircle

			local dragging = false
			local function slide(input)
				local pos = UDim2.new(math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),0,0,8)
				SliderIndicator:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
				local val = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
				SliderValue.Text = tostring(val)
				SliderCircle.BackgroundTransparency = 0
				spawn(function()
					while task.wait() do
						pcall(function()
							pcall(callback, val)
						end)
					end 
				end)
			end

			SliderTemplate.MouseEnter:Connect(function()
				TweenService:Create(SliderCircle, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
			end)

			SliderTemplate.MouseLeave:Connect(function()
				TweenService:Create(SliderCircle, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play()
			end)

			SliderFrame.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					slide(input)
					dragging = true
				end
			end)

			SliderFrame.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					slide(input)
				end
			end)
			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
		end

		function Containers:Toggle(Title, Callback)
			local ToggleTemplate = Instance.new("TextButton")
			local ToggleCorner = Instance.new("UICorner")
			local ToggleTitle = Instance.new("TextLabel")
			local ToggleFrame = Instance.new("Frame")
			local ToggleFrameCorner = Instance.new("UICorner")
			local ToggleDot = Instance.new("Frame")
			local ToggleDotCorner = Instance.new("UICorner")
			ToggleTemplate.Name = "ToggleTemplate"
			ToggleTemplate.Parent = Container
			ToggleTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			ToggleTemplate.BorderColor3 = Color3.fromRGB(27, 42, 53)
			ToggleTemplate.Position = UDim2.new(0.107500002, 0, 0, 0)
			ToggleTemplate.Size = UDim2.new(0, 333, 0, 31)
			ToggleTemplate.AutoButtonColor = true
			ToggleTemplate.Font = Enum.Font.Gotham
			ToggleTemplate.Text = ""
			ToggleTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTemplate.TextSize = 16.000
			ToggleTemplate.ClipsDescendants = true

			ToggleCorner.CornerRadius = UDim.new(0, 5)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = ToggleTemplate

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = ToggleTemplate
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			ToggleTitle.Size = UDim2.new(0, 316, 0, 30)
			ToggleTitle.Font = Enum.Font.Gotham
			ToggleTitle.Text = Title
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 15.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = ToggleTemplate
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			ToggleFrame.Position = UDim2.new(0.861861885, 0, 0.225806445, 0)
			ToggleFrame.Size = UDim2.new(0, 38, 0, 17)

			ToggleFrameCorner.Name = "ToggleFrameCorner"
			ToggleFrameCorner.Parent = ToggleFrame

			ToggleDot.Name = "ToggleDot"
			ToggleDot.Parent = ToggleFrame
			ToggleDot.AnchorPoint = Vector2.new(0, 0.5)
			ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDot.Position = UDim2.new(0, 0, 0.5, 0)
			ToggleDot.Size = UDim2.new(0, 17, 0, 17)

			ToggleDotCorner.CornerRadius = UDim.new(44, 0)
			ToggleDotCorner.Name = "ToggleDotCorner"
			ToggleDotCorner.Parent = ToggleDot

			local Toggled = false

			if Toggled == false then
				ToggleDot.Position = UDim2.new(0, 0, 0.5, 0)
			else
				ToggleDot.Position = UDim2.new(0.552631557, .5, 0, 0)
				pcall(Callback, Toggled)
			end

			ToggleTemplate.MouseButton1Click:Connect(function()
				TaigaAPI.CircleAnimation(ToggleTemplate, Color3.fromRGB(205,205,205), Color3.fromRGB(125,125,125))
				if Toggled == false then
					TweenService:Create(
						ToggleDot,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(0.552631557, 0, 0.5, 0)}
					):Play()

					ToggleFrame.BackgroundColor3 = Color3.fromRGB(37, 234, 67)
				else
					TweenService:Create(
						ToggleDot,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(0, 0, 0.5, 0)}
					):Play()

					ToggleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				end
				Toggled = not Toggled
				pcall(Callback, Toggled)
			end)
			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
		end

		function Containers:Bind(Title, callback)
			local keybind_data = {}
			local KeybindTemplate = Instance.new("Frame")
			local ButtonCorner_2 = Instance.new("UICorner")
			local KeybindFrame = Instance.new("Frame")
			local KeybindFrameCorner = Instance.new("UICorner")
			local KeybindButton = Instance.new("TextButton")
			local KeybindText = Instance.new("TextLabel")
			local DropdownTemplate = Instance.new("Frame")
			local Corner = Instance.new("UICorner")

			KeybindTemplate.Name = "KeybindTemplate"
			KeybindTemplate.Parent = Container
			KeybindTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			KeybindTemplate.BorderSizePixel = 0
			KeybindTemplate.Size = UDim2.new(0.899999976, 0, 0, 30)

			ButtonCorner_2.CornerRadius = UDim.new(0, 5)
			ButtonCorner_2.Name = "ButtonCorner"
			ButtonCorner_2.Parent = KeybindTemplate

			KeybindFrame.Name = "KeybindFrame"
			KeybindFrame.Parent = KeybindTemplate
			KeybindFrame.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			KeybindFrame.Position = UDim2.new(0.621999979, 0, 0.128999993, 0)
			KeybindFrame.Size = UDim2.new(0, 119, 0, 23)

			KeybindFrameCorner.CornerRadius = UDim.new(0, 5)
			KeybindFrameCorner.Name = "KeybindFrameCorner"
			KeybindFrameCorner.Parent = KeybindFrame

			KeybindButton.Name = "KeybindButton"
			KeybindButton.Parent = KeybindFrame
			KeybindButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			KeybindButton.BackgroundTransparency = 1.000
			KeybindButton.Size = UDim2.new(1, 0, 1, 0)
			KeybindButton.Font = Enum.Font.GothamSemibold
			KeybindButton.Text = "RightShift"
			KeybindButton.TextColor3 = Color3.fromRGB(20, 20, 20)
			KeybindButton.TextSize = 15.000

			KeybindText.Name = "KeybindText"
			KeybindText.Parent = KeybindTemplate
			KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KeybindText.BackgroundTransparency = 1.000
			KeybindText.Position = UDim2.new(0.0420420431, 0, 0, 0)
			KeybindText.Size = UDim2.new(0, 316, 0, 30)
			KeybindText.Font = Enum.Font.Gotham
			KeybindText.Text = Title
			KeybindText.TextColor3 = Color3.fromRGB(255, 255, 255)
			KeybindText.TextSize = 15.000
			KeybindText.TextXAlignment = Enum.TextXAlignment.Left

			keybind_name = tostring(keybind_name or "New Keybind")
			callback = typeof(callback) == "function" and callback or function()end
			keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
			keybind_options = {
				["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
			}

			callback = typeof(callback) == "function" and callback or function()end
			keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
			keybind_options = {
				["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
			}

			local shortkeys = {
				RightControl = 'RightControl',
				LeftControl = 'LeftControl',
				LeftShift = 'LeftShift',
				RightShift = 'RightShift',
				MouseButton1 = "MouseButton1",
				MouseButton2 = "MouseButton2"
			}
			local checks = {
				binding = false,

			}

			function keybind_data:SetKeybind(Keybind)
				local key = shortkeys[Keybind.Name] or Keybind.Name
				KeybindButton.Text = key
				keybind = Keybind
			end

			UserInputService.InputBegan:Connect(function(a, b)
				if checks.binding then
					spawn(function()
						wait()
						checks.binding = false
					end)
					return
				end
				if a.KeyCode == keybind and not b then
					pcall(callback, keybind)
				end
			end)

			keybind_data:SetKeybind(keybind_options.standard)

			KeybindButton.MouseButton1Click:Connect(function()
				if checks.binding then return end
				KeybindButton.Text = "..."
				checks.binding = true
				local a, b = UserInputService.InputBegan:Wait()
				keybind_data:SetKeybind(a.KeyCode)
			end)
			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
			return keybind_data
		end

		function Containers:Textbox(Title, disapper, callback)
			local TextBoxTemplate = Instance.new("Frame")
			local Box = Instance.new("TextBox")
			local BoxCorner = Instance.new("UICorner")
			local TextboxCorner = Instance.new("UICorner")
			local TextboxTitle = Instance.new("TextLabel")

			TextBoxTemplate.Name = "TextBoxTemplate"
			TextBoxTemplate.Parent = Container
			TextBoxTemplate.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			TextBoxTemplate.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextBoxTemplate.LayoutOrder = 7
			TextBoxTemplate.Position = UDim2.new(0.0724999979, 0, 0.710227251, 0)
			TextBoxTemplate.Size = UDim2.new(0, 333, 0, 31)

			Box.Name = "Box"
			Box.Parent = TextBoxTemplate
			Box.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			Box.Position = UDim2.new(0.621621609, 0, 0.129032254, 0)
			Box.Size = UDim2.new(0, 119, 0, 23)
			Box.Font = Enum.Font.Gotham
			Box.Text = "Random Key"
			Box.TextColor3 = Color3.fromRGB(0, 0, 0)
			Box.TextSize = 15.000

			BoxCorner.CornerRadius = UDim.new(0, 4)
			BoxCorner.Name = "BoxCorner"
			BoxCorner.Parent = Box

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = TextBoxTemplate

			TextboxTitle.Name = "TextboxTitle"
			TextboxTitle.Parent = TextBoxTemplate
			TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxTitle.BackgroundTransparency = 1.000
			TextboxTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			TextboxTitle.Size = UDim2.new(0, 316, 0, 30)
			TextboxTitle.Font = Enum.Font.Gotham
			TextboxTitle.Text = Title
			TextboxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextboxTitle.TextSize = 15.000
			TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

			Box.FocusLost:Connect(function(ep)
				if ep then
					if #Box.Text > 0 then
						pcall(callback, Box.Text)
						if disapper then
							Box.Text = ""
						end
					end
				end
			end)
			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
		end

		return Containers
	end
	return Tabs
end

return Library
