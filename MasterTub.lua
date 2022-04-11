local MainHou = {}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local API = loadstring(game:HttpGet("https://raw.githubusercontent.com/iiBlackLotus/Roblox_Scripts/main/TaigaAPI.lua"))()
local MakeDraggable = API.MakeDraggable
local buttonAnim = API.ClickButton

local Masterhub = Instance.new("ScreenGui")
Masterhub.Name = "Masterhub"
Masterhub.Parent = script.Parent

function MainHou:Window(hubname, gamename)
	local FirstTab = false

	local MainFrame = Instance.new("Frame")
	local Shadow = Instance.new("ImageLabel")
	local lineY = Instance.new("Frame")
	local LeftFrame = Instance.new("Frame")
	local GameTitle = Instance.new("TextLabel")
	local HubTitle = Instance.new("TextLabel")
	local TabHolder = Instance.new("Frame")
	local TabHolderLayout = Instance.new("UIListLayout")
	local ContainerHold = Instance.new("Frame")
	local DragFrame = Instance.new("Frame")
	local DragFrame2 = Instance.new("Frame")

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Masterhub
	MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.463882267, 0, 0.30581075, 0)
	MainFrame.Size = UDim2.new(0, 549, 0, 349)

	local uitoggled = false
	UserInputService.InputBegan:Connect(
		function(io, p)
			if io.KeyCode == Enum.KeyCode.RightControl then
				if uitoggled == false then
					TweenService:Create(
						Shadow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					repeat task.wait() until Shadow.ImageTransparency == 1
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
					TweenService:Create(
						Shadow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad),
						{ImageTransparency = 0}
					):Play()
					repeat task.wait() until Shadow.ImageTransparency == 0
					uitoggled = false
				end
			end
		end)

	Shadow.Name = "Shadow"
	Shadow.Parent = MainFrame
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.ClipsDescendants = true
	Shadow.Position = UDim2.new(0, 274, 0, 174)
	Shadow.Size = UDim2.new(0, 606, 0, 413)
	Shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
	Shadow.ImageColor3 = Color3.fromRGB(16, 16, 16)

	lineY.Name = "lineY"
	lineY.Parent = MainFrame
	lineY.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	lineY.Position = UDim2.new(0.3070, 0, 0.015, 0)
	lineY.Size = UDim2.new(0, 4, 0, 340)
	lineY.BorderSizePixel = 0

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LeftFrame.BackgroundTransparency = 1.000
	LeftFrame.Size = UDim2.new(0, 168, 0, 348)

	GameTitle.Name = "GameTitle"
	GameTitle.Parent = LeftFrame
	GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.BackgroundTransparency = 1.000
	GameTitle.Position = UDim2.new(0.223018974, 0, 0.119069532, 0)
	GameTitle.Size = UDim2.new(0, 90, 0, 18)
	GameTitle.Font = Enum.Font.Gotham
	GameTitle.Text = gamename
	GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.TextSize = 18.000

	HubTitle.Name = "HubTitle"
	HubTitle.Parent = LeftFrame
	HubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.BackgroundTransparency = 1.000
	HubTitle.Position = UDim2.new(0.0464340001, 0, 0.00797319598, 0)
	HubTitle.Size = UDim2.new(0, 149, 0, 38)
	HubTitle.Font = Enum.Font.Gotham
	HubTitle.Text = hubname
	HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.TextSize = 25.000
	HubTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

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


	MakeDraggable(DragFrame, MainFrame)
	MakeDraggable(DragFrame2, MainFrame)

	local Tabs = {}
	function Tabs:Tab(Title)
		local Tab = Instance.new("TextButton")
		local TabCorner = Instance.new("UICorner")
		local Container = Instance.new("ScrollingFrame")
		local ContainerLayout = Instance.new("UIListLayout")

		Tab.Name = "Tab"
		Tab.Parent = TabHolder
		Tab.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
		Tab.Position = UDim2.new(0.0242161341, 0, 0.186639979, 0)
		Tab.Size = UDim2.new(0, 140, 0, 30)
		Tab.Font = Enum.Font.SourceSansBold
		Tab.Text = Title
		Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tab.TextSize = 20.000
		Tab.BackgroundTransparency = 1.000

		TabCorner.CornerRadius = UDim.new(0, 3)
		TabCorner.Name = "TabCorner"
		TabCorner.Parent = Tab

		Container.Name = "Container"
		Container.Parent = ContainerHold
		Container.Active = true
		Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container.BackgroundTransparency = 1.000
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(-0.000220450427, 0, 8.84251567e-05, 0)
		Container.Size = UDim2.new(0, 371, 0, 323)
		Container.ScrollBarThickness = 8
		Container.Visible = false

		ContainerLayout.Name = "ContainerLayout"
		ContainerLayout.Parent = Container
		ContainerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ContainerLayout.Padding = UDim.new(0, 10)

		if FirstTab == false then
			FirstTab = true
			Tab.BackgroundTransparency = 0.000
			Container.Visible = true
		end

		Tab.MouseButton1Click:Connect(			
			function()
				buttonAnim(Tab, Color3.fromRGB(205,205,205),Color3.fromRGB(205,205,205))
				for i, v in next, ContainerHold:GetChildren() do
					if v.ClassName == "ScrollingFrame" then
						v.Visible = false
					end
				end

				for i, v in next, TabHolder:GetChildren() do
					if v.ClassName == "TextButton" then
						TweenService:Create(
							v,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency = 1}
						):Play()
						TweenService:Create(
							Tab,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency = 0}
						):Play()
					end
				end
				Container.Visible = true
			end)

		local ContainerItems = {}

		function ContainerItems:Button(title, callback)
			local Button = Instance.new("TextButton")
			local ButtonCorner = Instance.new("UICorner")

			Button.Name = "Button"
			Button.Parent = Container
			Button.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Button.Position = UDim2.new(0.107500002, 0, 0, 0)
			Button.Size = UDim2.new(0, 333, 0, 31)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.Gotham
			Button.Text = title
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextSize = 16.000

			ButtonCorner.CornerRadius = UDim.new(0, 5)
			ButtonCorner.Name = "ButtonCorner"
			ButtonCorner.Parent = Button

			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

			Button.MouseEnter:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
					{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
				):Play()
			end)

			Button.MouseLeave:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(59, 59, 59)}
				):Play()
			end)

			Button.MouseButton1Click:Connect(function()
				Button.TextSize = 0.000
				TweenService:Create(
					Button,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextSize = 18}
				):Play()
				TweenService:Create(
					Button,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextSize = 16}
				):Play()
				pcall(callback)
			end)
		end

		function ContainerItems:Dropdown(text, list, callback)
			local dropfunc = {}
			local DropToggled = false
			local FrameSize = 0
			local ItemCount = 0

			local Dropdown = Instance.new("TextButton")
			local DropdownCorner = Instance.new("UICorner")
			local DropdownTitle = Instance.new("TextLabel")
			local Arrow = Instance.new("ImageLabel")
			local DropdownFrame = Instance.new("Frame")
			local DropdownFrameCorner = Instance.new("UICorner")
			local DropdownHolder = Instance.new("ScrollingFrame")
			local DropdownHolderLayout = Instance.new("UIListLayout")
			local DropdownHolderPadding = Instance.new("UIPadding")
			local Item = Instance.new("TextButton")
			local ItemCorner = Instance.new("UICorner")


			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Container
			Dropdown.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Dropdown.Position = UDim2.new(0.107500002, 0, 0, 0)
			Dropdown.Size = UDim2.new(0, 333, 0, 31)
			Dropdown.AutoButtonColor = false
			Dropdown.Font = Enum.Font.Gotham
			Dropdown.Text = ""
			Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
			Dropdown.TextSize = 16.000

			DropdownCorner.CornerRadius = UDim.new(0, 5)
			DropdownCorner.Name = "DropdownCorner"
			DropdownCorner.Parent = Dropdown

			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Parent = Dropdown
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			DropdownTitle.Size = UDim2.new(0, 316, 0, 30)
			DropdownTitle.Font = Enum.Font.Gotham
			DropdownTitle.Text = text
			DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.TextSize = 15.000
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			Arrow.Parent = Dropdown
			Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Arrow.BackgroundTransparency = 1.000
			Arrow.Position = UDim2.new(0.873873889, 0, 0.129032254, 0)
			Arrow.Size = UDim2.new(0, 30, 0, 22)
			Arrow.Image = "rbxassetid://6034818372"

			DropdownFrame.Name = "DropdownFrame"
			DropdownFrame.Parent = Container
			DropdownFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			DropdownFrame.Position = UDim2.new(0.0837500021, 0, 0.349431813, 0)
			DropdownFrame.Size = UDim2.new(0, 324, 0, 0)
			DropdownFrame.Visible = false
			--0, 324, 0, 125

			DropdownFrameCorner.CornerRadius = UDim.new(0, 4)
			DropdownFrameCorner.Name = "DropdownFrameCorner"
			DropdownFrameCorner.Parent = DropdownFrame

			DropdownHolder.Name = "DropdownHolder"
			DropdownHolder.Parent = DropdownFrame
			DropdownHolder.Active = true
			DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownHolder.BackgroundTransparency = 1.000
			DropdownHolder.BorderSizePixel = 0
			DropdownHolder.Size = UDim2.new(0, 324, 0, 0)
			DropdownHolder.ScrollBarThickness = 8

			DropdownHolderLayout.Name = "DropdownHolderLayout"
			DropdownHolderLayout.Parent = DropdownHolder
			DropdownHolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			DropdownHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownHolderLayout.Padding = UDim.new(0, 6)

			DropdownHolderPadding.Name = "DropdownHolderPadding"
			DropdownHolderPadding.Parent = DropdownHolder
			DropdownHolderPadding.PaddingBottom = UDim.new(0, 6)
			DropdownHolderPadding.PaddingTop = UDim.new(0, 6)

    --[[
    Item.Name = "Item"
    Item.Parent = DropdownHolder
    Item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Item.Position = UDim2.new(0.0462962948, 0, 0, 0)
    Item.Size = UDim2.new(0, 294, 0, 20)
    Item.AutoButtonColor = false
    Item.Font = Enum.Font.Gotham
    Item.TextColor3 = Color3.fromRGB(255, 255, 255)
    Item.TextSize = 15.000
    Item.TextWrapped = false

    Item.Text = "Item"
]]
			ItemCorner.CornerRadius = UDim.new(0, 3)
			ItemCorner.Name = "ItemCorner"
			ItemCorner.Parent = Item

			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

			Dropdown.MouseEnter:Connect(
				function()
					TweenService:Create(
						Dropdown,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundColor3 = Color3.fromRGB(59, 59, 59)}
					):Play()
				end
			)
			Dropdown.MouseLeave:Connect(
				function()
					TweenService:Create(
						Dropdown,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
					):Play()
				end
			)

			Dropdown.MouseButton1Click:Connect(
				function()
					if DropToggled == false then
						DropdownFrame.Visible = true
						DropdownFrame:TweenSize(
							UDim2.new(0, 324, 0, FrameSize),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 324, 0, FrameSize),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						TweenService:Create(
							Arrow,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 180}
						):Play()
						repeat
							wait()
						until DropdownFrame.Size == UDim2.new(0, 324, 0, FrameSize)
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					else
						DropdownFrame:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						TweenService:Create(
							Arrow,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						repeat
							wait()
						until DropdownFrame.Size == UDim2.new(0, 324, 0, 0)
						DropdownFrame.Visible = false
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					end
					DropToggled = not DropToggled
				end
			)

			for i, v in next, list do
				ItemCount = ItemCount + 1

				if ItemCount == 1 then
					FrameSize = 39
				elseif ItemCount == 2 then
					FrameSize = 69
				elseif ItemCount >= 3 then
					FrameSize = 100
				end

				local Item = Instance.new("TextButton")
				local ItemCorner = Instance.new("UICorner")

				Item.Name = "Item"
				Item.Parent = DropdownHolder
				Item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				Item.Position = UDim2.new(0.0462962948, 0, 0, 0)
				Item.Size = UDim2.new(0, 294, 0, 20)
				Item.AutoButtonColor = false
				Item.Font = Enum.Font.Gotham
				Item.TextColor3 = Color3.fromRGB(255, 255, 255)
				Item.TextSize = 15.000
				Item.TextWrapped = false
				Item.Text = v

				ItemCorner.CornerRadius = UDim.new(0, 3)
				ItemCorner.Name = "ItemCorner"
				ItemCorner.Parent = Item

				Item.MouseEnter:Connect(
					function()
						TweenService:Create(
							Item,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = Color3.fromRGB(47, 47, 47)}
						):Play()
					end
				)
				Item.MouseLeave:Connect(
					function()
						TweenService:Create(
							Item,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = Color3.fromRGB(40, 40, 40)}
						):Play()
					end
				)

				Item.MouseButton1Click:Connect(
					function()
						DropdownTitle.Text = text .. " - " .. v
						pcall(callback, v)
						DropToggled = false
						DropdownFrame:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						TweenService:Create(
							Arrow,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						repeat
							wait()
						until DropdownFrame.Size == UDim2.new(0, 324, 0, 0)
						DropdownFrame.Visible = false
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					end
				)

				DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownHolderLayout.AbsoluteContentSize.Y + 15)
			end

			function dropfunc:Clear()
				DropdownTitle.Text = text
				FrameSize = 0
				ItemCount = 0

				for i,v in next, DropdownHolder:GetChildren() do
					if v.Name == "Item" then
						v:Destroy()
					end
				end

				DropdownFrame:TweenSize(
					UDim2.new(0, 324, 0, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quart,
					0.1,
					true
				)
				DropdownHolder:TweenSize(
					UDim2.new(0, 324, 0, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quart,
					0.1,
					true
				)
				TweenService:Create(
					Arrow,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				repeat
					wait()
				until DropdownFrame.Size == UDim2.new(0, 324, 0, 0)
				DropdownFrame.Visible = false
				Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
			end

			function dropfunc:Add(toadd)
				ItemCount = ItemCount + 1

				if ItemCount == 1 then
					FrameSize = 39
				elseif ItemCount == 2 then
					FrameSize = 69
				elseif ItemCount >= 3 then
					FrameSize = 100
				end

				local Item = Instance.new("TextButton")
				local ItemCorner = Instance.new("UICorner")

				Item.Name = "Item"
				Item.Parent = DropdownHolder
				Item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				Item.Position = UDim2.new(0.0462962948, 0, 0, 0)
				Item.Size = UDim2.new(0, 294, 0, 20)
				Item.AutoButtonColor = false
				Item.Font = Enum.Font.Gotham
				Item.TextColor3 = Color3.fromRGB(255, 255, 255)
				Item.TextSize = 15.000
				Item.TextWrapped = false
				Item.Text = toadd

				ItemCorner.CornerRadius = UDim.new(0, 3)
				ItemCorner.Name = "ItemCorner"
				ItemCorner.Parent = Item

				Item.MouseEnter:Connect(
					function()
						TweenService:Create(
							Item,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = Color3.fromRGB(47, 47, 47)}
						):Play()
					end
				)
				Item.MouseLeave:Connect(
					function()
						TweenService:Create(
							Item,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = Color3.fromRGB(40, 40, 40)}
						):Play()
					end
				)

				Item.MouseButton1Click:Connect(
					function()
						DropdownTitle.Text = text .. " - " .. toadd
						pcall(callback, toadd)
						DropToggled = false
						DropdownFrame:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 324, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						TweenService:Create(
							Arrow,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						repeat
							wait()
						until DropdownFrame.Size == UDim2.new(0, 324, 0, 0)
						DropdownFrame.Visible = false
						Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
					end
				)

				DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownHolderLayout.AbsoluteContentSize.Y + 15)
			end

			return dropfunc
		end

		function ContainerItems:Slider(text, min, max, start, callback)
			local dragging = false

			local Slider = Instance.new("TextButton")
			local SliderCorner = Instance.new("UICorner")
			local SliderTitle = Instance.new("TextLabel")
			local Value = Instance.new("TextLabel")
			local SliderFrame = Instance.new("Frame")
			local SliderFrameCorner = Instance.new("UICorner")
			local SliderIndicator = Instance.new("Frame")
			local SliderFrameCorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = Container
			Slider.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Slider.Position = UDim2.new(0.0837500021, 0, 0.349431813, 0)
			Slider.Size = UDim2.new(0, 333, 0, 42)
			Slider.AutoButtonColor = false
			Slider.Font = Enum.Font.Gotham
			Slider.Text = ""
			Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
			Slider.TextSize = 16.000

			SliderCorner.CornerRadius = UDim.new(0, 5)
			SliderCorner.Name = "SliderCorner"
			SliderCorner.Parent = Slider

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = Slider
			SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.BackgroundTransparency = 1.000
			SliderTitle.Position = UDim2.new(0.0420420431, 0, 0.119047619, 0)
			SliderTitle.Size = UDim2.new(0, 165, 0, 15)
			SliderTitle.Font = Enum.Font.Gotham
			SliderTitle.Text = text
			SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.TextSize = 15.000
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			Value.Name = "Value"
			Value.Parent = Slider
			Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Value.BackgroundTransparency = 1.000
			Value.Position = UDim2.new(0.813813806, 0, 0.119047619, 0)
			Value.Size = UDim2.new(0, 62, 0, 15)
			Value.Font = Enum.Font.Gotham
			Value.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
			Value.TextColor3 = Color3.fromRGB(255, 255, 255)
			Value.TextSize = 15.000

			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = Slider
			SliderFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			SliderFrame.Position = UDim2.new(0.0360360369, 0, 0.619047642, 0)
			SliderFrame.Size = UDim2.new(0, 309, 0, 8)

			SliderFrameCorner.Name = "SliderFrameCorner"
			SliderFrameCorner.Parent = SliderFrame

			SliderIndicator.Name = "SliderIndicator"
			SliderIndicator.Parent = SliderFrame
			SliderIndicator.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			SliderIndicator.Position = UDim2.new(0.00367356581, 0, -0.00595092773, 0)
			SliderIndicator.Size = UDim2.new((start or 0) / max, 0, 0, 8)

			SliderFrameCorner_2.Name = "SliderFrameCorner"
			SliderFrameCorner_2.Parent = SliderIndicator

			local function slide(input)
				local pos =
					UDim2.new(
						math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
						0,
						0,
						8
					)
				SliderIndicator:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
				local val = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
				Value.Text = tostring(val)
				spawn(function()
					while task.wait() do
						pcall(function()
							pcall(callback, val)
						end)
					end 
				end)

			end

			SliderFrame.InputBegan:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						slide(input)
						dragging = true
					end
				end
			)

			SliderFrame.InputEnded:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = false
					end
				end
			)

			UserInputService.InputChanged:Connect(
				function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						slide(input)
					end
				end
			)

			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
		end

		function ContainerItems:Label(text)
			local labelfunc = {}
			local Label = Instance.new("TextLabel")
			local LabelCorner = Instance.new("UICorner")

			Label.Name = "Label"
			Label.Parent = Container
			Label.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Label.Position = UDim2.new(0.128348216, 0, 0.752747178, 0)
			Label.Size = UDim2.new(0, 333, 0, 26)
			Label.Font = Enum.Font.Gotham
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 16.000

			LabelCorner.CornerRadius = UDim.new(0, 5)
			LabelCorner.Name = "LabelCorner"
			LabelCorner.Parent = Label

			function labelfunc:Refresh(hai)
				Label.Text = hai
			end
			return labelfunc
		end

		function ContainerItems:line()
			local line = Instance.new("TextLabel")
			local lineCorner = Instance.new("UICorner")

			line.Name = "line"
			line.Parent = Container
			line.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			line.Position = UDim2.new(0.0837500021, 0, 0.613636374, 0)
			line.Size = UDim2.new(0, 333, 0, 7)
			line.Font = Enum.Font.Gotham
			line.Text = ""
			line.TextColor3 = Color3.fromRGB(255, 255, 255)
			line.TextSize = 16.000

			lineCorner.CornerRadius = UDim.new(0, 5)
			lineCorner.Name = "lineCorner"
			lineCorner.Parent = line
		end

		function ContainerItems:Textbox(text, disapper, callback)
			local TextBox = Instance.new("Frame")
			local Box = Instance.new("TextBox")
			local BoxCorner = Instance.new("UICorner")
			local TextboxCorner = Instance.new("UICorner")
			local TextboxTitle = Instance.new("TextLabel")
			local info = Instance.new("TextLabel")

			TextBox.Name = text
			TextBox.Parent = Container
			TextBox.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			TextBox.Position = UDim2.new(0.0724999979, 0, 0.710227251, 0)
			TextBox.Size = UDim2.new(0, 333, 0, 31)

			Box.Name = "Box"
			Box.Parent = TextBox
			Box.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
			Box.Position = UDim2.new(0.621621609, 0, 0.129032254, 0)
			Box.Size = UDim2.new(0, 119, 0, 23)
			Box.Font = Enum.Font.Gotham
			Box.Text = ""
			Box.TextColor3 = Color3.fromRGB(255, 255, 255)
			Box.TextSize = 15.000

			BoxCorner.CornerRadius = UDim.new(0, 4)
			BoxCorner.Name = "BoxCorner"
			BoxCorner.Parent = Box

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = TextBox

			TextboxTitle.Name = "TextboxTitle"
			TextboxTitle.Parent = TextBox
			TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxTitle.BackgroundTransparency = 1.000
			TextboxTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			TextboxTitle.Size = UDim2.new(0, 316, 0, 30)
			TextboxTitle.Font = Enum.Font.Gotham
			TextboxTitle.Text = text
			TextboxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextboxTitle.TextSize = 15.000
			TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

			info.Name = "info"
			info.Parent = TextBox
			info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			info.BackgroundTransparency = 1.000
			info.Position = UDim2.new(0.516516507, 0, 0, 0)
			info.Size = UDim2.new(0, 153, 0, 30)
			info.Font = Enum.Font.Gotham
			info.Text = "->"
			info.TextColor3 = Color3.fromRGB(255, 255, 255)
			info.TextSize = 15.000
			info.TextXAlignment = Enum.TextXAlignment.Left

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

		function ContainerItems:Bind(Title, keybind_options, callback)
			local keybind_data = {}

			local Keybind = Instance.new("TextButton")
			local KeybindFrame = Instance.new("Frame")
			local KeybindFrameCorner = Instance.new("UICorner")
			local TextButton = Instance.new("TextButton")
			local KeybindCorner = Instance.new("UICorner")
			local Titl = Instance.new("TextLabel")

			Keybind.Name = "Keybind"
			Keybind.Parent = Container
			Keybind.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Keybind.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Keybind.Position = UDim2.new(0.192028984, 0, 0.265582561, 0)
			Keybind.Size = UDim2.new(0, 333, 0, 31)
			Keybind.AutoButtonColor = false
			Keybind.Font = Enum.Font.Gotham
			Keybind.Text = ""
			Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
			Keybind.TextSize = 14.000

			KeybindFrame.Name = "KeybindFrame"
			KeybindFrame.Parent = Keybind
			KeybindFrame.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
			KeybindFrame.Position = UDim2.new(0.650123954, 0, 0.140661418, 0)
			KeybindFrame.Size = UDim2.new(0, 106, 0, 23)

			KeybindFrameCorner.CornerRadius = UDim.new(0, 5)
			KeybindFrameCorner.Name = "KeybindFrameCorner"
			KeybindFrameCorner.Parent = KeybindFrame

			TextButton.Parent = KeybindFrame
			TextButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Size = UDim2.new(0, 104, 0, 23)
			TextButton.Font = Enum.Font.GothamBold
			TextButton.Text = "RightShift"
			TextButton.TextColor3 = Color3.fromRGB(20, 20, 20)
			TextButton.TextSize = 15.000

			KeybindCorner.CornerRadius = UDim.new(0, 5)
			KeybindCorner.Name = "KeybindCorner"
			KeybindCorner.Parent = Keybind

			Titl.Name = "Titl"
			Titl.Parent = Keybind
			Titl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Titl.BackgroundTransparency = 1.000
			Titl.Position = UDim2.new(0.0420420431, 0, 0, 0)
			Titl.Size = UDim2.new(0, 316, 0, 30)
			Titl.Font = Enum.Font.Gotham
			Titl.Text = Title
			Titl.TextColor3 = Color3.fromRGB(255, 255, 255)
			Titl.TextSize = 15.000
			Titl.TextXAlignment = Enum.TextXAlignment.Left

			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

			local UIS = game:GetService('UserInputService')


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
				TextButton.Text = key
				keybind = Keybind
			end

			UIS.InputBegan:Connect(function(a, b)
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

			TextButton.MouseButton1Click:Connect(function()
				if checks.binding then return end
				TextButton.Text = "..."
				checks.binding = true
				local a, b = UIS.InputBegan:Wait()
				keybind_data:SetKeybind(a.KeyCode)
			end)
			return keybind_data
		end

		function ContainerItems:Toggle(title, callback)
			local Toggled = false

			local Toggle = Instance.new("TextButton")
			local ToggleCorner = Instance.new("UICorner")
			local ToggleTitle = Instance.new("TextLabel")
			local ToggleFrame = Instance.new("Frame")
			local ToggleFrameCorner = Instance.new("UICorner")
			local ToggleDot = Instance.new("Frame")
			local ToggleDotCorner = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = Container
			Toggle.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
			Toggle.Position = UDim2.new(0.107500002, 0, 0, 0)
			Toggle.Size = UDim2.new(0, 333, 0, 31)
			Toggle.AutoButtonColor = false
			Toggle.Font = Enum.Font.Gotham
			Toggle.Text = ""
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextSize = 16.000

			ToggleCorner.CornerRadius = UDim.new(0, 5)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = Toggle

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.Position = UDim2.new(0.0420420431, 0, 0, 0)
			ToggleTitle.Size = UDim2.new(0, 316, 0, 30)
			ToggleTitle.Font = Enum.Font.Gotham
			ToggleTitle.Text = title
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 15.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = Toggle
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			ToggleFrame.Position = UDim2.new(0.861861885, 0, 0.225806445, 0)
			ToggleFrame.Size = UDim2.new(0, 38, 0, 17)

			ToggleFrameCorner.Name = "ToggleFrameCorner"
			ToggleFrameCorner.Parent = ToggleFrame

			ToggleDot.Name = "ToggleDot"
			ToggleDot.Parent = ToggleFrame
			ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDot.Position = UDim2.new(0.552631557, 0, 0, 0)
			ToggleDot.Size = UDim2.new(0, 17, 0, 16)
			--UDim2.new(0.552631557, 0, 0, 0)
			--UDim2.new(0, 0, 0, 0)

			ToggleDotCorner.CornerRadius = UDim.new(2, 0)
			ToggleDotCorner.Name = "ToggleDotCorner"
			ToggleDotCorner.Parent = ToggleDot

			Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

			Toggle.MouseEnter:Connect(function()
				TweenService:Create(
					Toggle,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
					{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
				):Play()
			end)

			Toggle.MouseLeave:Connect(function()
				TweenService:Create(
					Toggle,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(59, 59, 59)}
				):Play()
			end)

			if Toggled == false then
				ToggleDot.Position = UDim2.new(0, 0, 0, 0)
			else
				ToggleDot.Position = UDim2.new(0.552631557, 0, 0, 0)
				pcall(callback, Toggled)
			end

			Toggle.MouseButton1Click:Connect(function()
				if Toggled == false then
					TweenService:Create(
						ToggleDot,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(0.552631557, 0, 0, 0)}
					):Play()
				else
					TweenService:Create(
						ToggleDot,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(0, 0, 0, 0)}
					):Play()
				end
				Toggled = not Toggled
				pcall(callback, Toggled)
			end)
		end


		return ContainerItems
	end
	return Tabs
end
return MainHou
