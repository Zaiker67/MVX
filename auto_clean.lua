local runService = game:GetService("RunService")
local workspace = game:GetService("Workspace")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
local coreGui = game:GetService("CoreGui")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local v1 = true
local v2 = true
local v3 = true
local v4 = 3
local v5 = 180
local v6 = false
local v7 = {}
local v8 = {}

if coreGui:FindFirstChild("EscanorAutoBossHUD") then
  coreGui.EscanorAutoBossHUD:Destroy()
end

local escanorAutoBossHUD = Instance.new("ScreenGui")
escanorAutoBossHUD.Name = "EscanorAutoBossHUD"
escanorAutoBossHUD.Parent = coreGui
escanorAutoBossHUD.ResetOnSpawn = false

local openBtn = Instance.new("TextButton")
openBtn.Name = "OpenBtn"
openBtn.Parent = escanorAutoBossHUD
openBtn.BackgroundColor3 = Color3.fromRGB(10, 14, 23)
openBtn.Position = UDim2.new(0.02, 0, 0.4, 0)
openBtn.Size = UDim2.new(0, 45, 0, 45)
openBtn.Visible = false
openBtn.Font = Enum.Font.GothamBold
openBtn.Text = "☀️"
openBtn.TextColor3 = Color3.fromRGB(255, 170, 0)
openBtn.TextSize = 22

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = openBtn

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 1.5
uiStroke.Color = Color3.fromRGB(255, 170, 0)
uiStroke.Parent = openBtn

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = escanorAutoBossHUD
mainFrame.BackgroundColor3 = Color3.fromRGB(10, 14, 23)
mainFrame.BackgroundTransparency = 0.15
mainFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
mainFrame.Size = UDim2.new(0, 310, 0, 300)
mainFrame.ClipsDescendants = true

local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(0, 10)
uiCorner2.Parent = mainFrame

local uiStroke2 = Instance.new("UIStroke")
uiStroke2.Thickness = 1.5
uiStroke2.Color = Color3.fromRGB(255, 170, 0)
uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke2.Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Parent = mainFrame
titleBar.BackgroundColor3 = Color3.fromRGB(20, 15, 25)
titleBar.BackgroundTransparency = 0.2
titleBar.Size = UDim2.new(1, 0, 0, 38)

local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 10)
uiCorner3.Parent = titleBar

local textLabel = Instance.new("TextLabel")
textLabel.Parent = titleBar
textLabel.BackgroundTransparency = 1
textLabel.Position = UDim2.new(0, 12, 0, 0)
textLabel.Size = UDim2.new(1, -80, 1, 0)
textLabel.Font = Enum.Font.GothamBold
textLabel.Text = "☀️ ESCANOR AUTO BOSS"
textLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
textLabel.TextSize = 13
textLabel.TextXAlignment = Enum.TextXAlignment.Left

local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Name = "MinimizeBtn"
minimizeBtn.Parent = titleBar
minimizeBtn.AnchorPoint = Vector2.new(1, 0.5)
minimizeBtn.Position = UDim2.new(1, -8, 0.5, 0)
minimizeBtn.Size = UDim2.new(0, 26, 0, 26)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(35, 25, 45)
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.Text = "─"
minimizeBtn.TextColor3 = Color3.fromRGB(255, 170, 0)
minimizeBtn.TextSize = 12

local uiCorner4 = Instance.new("UICorner")
uiCorner4.CornerRadius = UDim.new(0, 6)
uiCorner4.Parent = minimizeBtn

local function f1(p1)
  if p1 then
    tweenService:Create(mainFrame, TweenInfo.new(0.2), { Size = UDim2.new(0, 310, 0, 0) }):Play()
    task.wait(0.2)
    mainFrame.Visible = false
    openBtn.Visible = true
  else
    mainFrame.Visible = true
    openBtn.Visible = false
    tweenService:Create(mainFrame, TweenInfo.new(0.2), { Size = UDim2.new(0, 310, 0, 300) }):Play()
  end
end

minimizeBtn.MouseButton1Click:Connect(function() f1(true) end)
openBtn.MouseButton1Click:Connect(function() f1(false) end)

local function f2(p2, p3)
  local inputBegan = p3.InputBegan
  local v9, position, position2

  inputBegan:Connect(function(p4)
    if p4.UserInputType == Enum.UserInputType.MouseButton1
      or p4.UserInputType == Enum.UserInputType.Touch then
      v9 = true
      position = p4.Position
      position2 = p2.Position

      p4.Changed:Connect(function()
        if p4.UserInputState == Enum.UserInputState.End then
          v9 = false
        end
      end)
    end
  end)

  local v10

  p3.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement
      or input.UserInputType == Enum.UserInputType.Touch then
      v10 = input
    end
  end)

  userInputService.InputChanged:Connect(function(input2)
    if input2 == v10 and v9 then
      local v11 = input2.Position - position

      tweenService:Create(p2, TweenInfo.new(0.08), {
        Position = UDim2.new(
          position2.X.Scale, position2.X.Offset + v11.X, position2.Y.Scale,
          position2.Y.Offset + v11.Y
        ),
      }):Play()
    end
  end)
end

f2(mainFrame, titleBar)
f2(openBtn, openBtn)

local frame = Instance.new("Frame")
frame.Parent = mainFrame
frame.BackgroundTransparency = 1
frame.Position = UDim2.new(0, 12, 0, 48)
frame.Size = UDim2.new(1, -24, 1, -55)

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = frame
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local udim = UDim.new(0, 8)

local function f3(p5, p6, p7, p8, fn)
  local v12 = p8

  local frame2 = Instance.new("Frame")
  frame2.Parent = frame
  frame2.BackgroundColor3 = Color3.fromRGB(20, 28, 45)
  frame2.Size = UDim2.new(1, 0, 0, 44)

  local uiCorner5 = Instance.new("UICorner")
  uiCorner5.CornerRadius = UDim.new(0, 6)
  uiCorner5.Parent = frame2

  local textLabel2 = Instance.new("TextLabel")
  textLabel2.Parent = frame2
  textLabel2.BackgroundTransparency = 1
  textLabel2.Position = UDim2.new(0, 10, 0, 4)
  textLabel2.Size = UDim2.new(1, -20, 0, 16)
  textLabel2.Font = Enum.Font.GothamMedium
  textLabel2.Text = p5 .. ": " .. tostring(v12)
  textLabel2.TextColor3 = Color3.fromRGB(200, 220, 245)
  textLabel2.TextSize = 10
  textLabel2.TextXAlignment = Enum.TextXAlignment.Left

  local frame3 = Instance.new("Frame")
  frame3.Parent = frame2
  frame3.BackgroundColor3 = Color3.fromRGB(35, 45, 65)
  frame3.Position = UDim2.new(0, 10, 0, 26)
  frame3.Size = UDim2.new(1, -20, 0, 5)

  local uiCorner6 = Instance.new("UICorner")
  uiCorner6.CornerRadius = UDim.new(1, 0)
  uiCorner6.Parent = frame3

  local frame4 = Instance.new("Frame")
  frame4.Parent = frame3
  frame4.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
  frame4.Size = UDim2.new((v12 - p6) / (p7 - p6), 0, 1, 0)

  local uiCorner7 = Instance.new("UICorner")
  uiCorner7.CornerRadius = UDim.new(1, 0)
  uiCorner7.Parent = frame4

  local textButton = Instance.new("TextButton")
  textButton.Parent = frame2
  textButton.BackgroundTransparency = 1
  textButton.Size = UDim2.new(1, 0, 1, 0)
  textButton.Text = ""

  local v13 = false

  local function f4(p9)
    local v14 = math.clamp(p9.Position.X - frame3.AbsolutePosition.X, 0, frame3.AbsoluteSize.X)
      / frame3.AbsoluteSize.X

    v12 = math.floor(p6 + (p7 - p6) * v14)
    textLabel2.Text = p5 .. ": " .. tostring(v12)
    frame4.Size = UDim2.new(v14, 0, 1, 0)
    fn(v12)
  end

  textButton.InputBegan:Connect(function(input3)
    if input3.UserInputType == Enum.UserInputType.MouseButton1
      or input3.UserInputType == Enum.UserInputType.Touch then
      v13 = true
      f4(input3)
    end
  end)

  textButton.InputEnded:Connect(function(input4)
    if input4.UserInputType == Enum.UserInputType.MouseButton1
      or input4.UserInputType == Enum.UserInputType.Touch then
      v13 = false
    end
  end)

  userInputService.InputChanged:Connect(function(input5)
    if v13
      and (input5.UserInputType == Enum.UserInputType.MouseMovement
        or input5.UserInputType == Enum.UserInputType.Touch) then
      f4(input5)
    end
  end)
end

uiListLayout.Padding = udim

local function f5(text, p10, fn2)
  local v15 = p10

  local frame5 = Instance.new("Frame")
  frame5.Parent = frame
  frame5.BackgroundColor3 = Color3.fromRGB(20, 28, 45)
  frame5.Size = UDim2.new(1, 0, 0, 36)

  local uiCorner8 = Instance.new("UICorner")
  uiCorner8.CornerRadius = UDim.new(0, 6)
  uiCorner8.Parent = frame5

  local uiStroke3 = Instance.new("UIStroke")
  uiStroke3.Thickness = 1
  uiStroke3.Color = Color3.fromRGB(35, 45, 65)
  uiStroke3.Parent = frame5

  local textLabel3 = Instance.new("TextLabel")
  textLabel3.Parent = frame5
  textLabel3.BackgroundTransparency = 1
  textLabel3.Position = UDim2.new(0, 10, 0, 0)
  textLabel3.Size = UDim2.new(1, -65, 1, 0)
  textLabel3.Font = Enum.Font.GothamMedium
  textLabel3.Text = text
  textLabel3.TextColor3 = Color3.fromRGB(200, 220, 245)
  textLabel3.TextSize = 11
  textLabel3.TextXAlignment = Enum.TextXAlignment.Left

  local frame6 = Instance.new("Frame")
  frame6.Parent = frame5
  frame6.AnchorPoint = Vector2.new(1, 0.5)
  frame6.Position = UDim2.new(1, -8, 0.5, 0)
  frame6.Size = UDim2.new(0, 40, 0, 18)
  frame6.BackgroundColor3 = v15 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(40, 50, 70)

  local uiCorner9 = Instance.new("UICorner")
  uiCorner9.CornerRadius = UDim.new(1, 0)
  uiCorner9.Parent = frame6

  local frame7 = Instance.new("Frame")
  frame7.Parent = frame6
  frame7.AnchorPoint = Vector2.new(0, 0.5)
  frame7.Position = v15 and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
  frame7.Size = UDim2.new(0, 14, 0, 14)
  frame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  local uiCorner10 = Instance.new("UICorner")
  uiCorner10.CornerRadius = UDim.new(1, 0)
  uiCorner10.Parent = frame7

  local textButton2 = Instance.new("TextButton")
  textButton2.Parent = frame5
  textButton2.BackgroundTransparency = 1
  textButton2.Size = UDim2.new(1, 0, 1, 0)
  textButton2.Text = ""

  textButton2.MouseButton1Click:Connect(function()
    v15 = not v15
    fn2(v15)
    local v16 = v15

    local udim2 = v16
    udim2 = v16 and UDim2.new(1, -16, 0.5, 0)

    local udim3 = udim2
    udim3 = udim2 or UDim2.new(0, 2, 0.5, 0)

    local v17 = v15
    local position3 = udim3
    local color = v17 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(40, 50, 70)

    tweenService:Create(frame7, TweenInfo.new(0.2), { Position = position3 }):Play()
    tweenService:Create(frame6, TweenInfo.new(0.2), { BackgroundColor3 = color }):Play()
  end)
end

f5("AUTO BOSS COMBAT", v1, function(p11) v1 = p11 end)
f5("AUTO PUNCH", v2, function(p12) v2 = p12 end)
f5("AUTO CLAIM CHEST", v3, function(p13) v3 = p13 end)

f3("MELEE DISTANCE", 1, 15, v4, function(p14) v4 = p14 end)
f3("STOMP DODGE DISTANCE", 50, 300, v5, function(p15) v5 = p15 end)

local function f6(p16)
  if not v3 then
    return
  elseif not p16:IsA("ProximityPrompt") then
    return
  else
    local v18 = string.lower(p16.ActionText or "")
    local v19 = string.lower(p16.ObjectText or "")

    if v18:find("claim") or v19:find("chest") then
      if typeof(fireproximityprompt) == "function" then
        pcall(function() fireproximityprompt(p16) end)
      end
    end

    return
  end
end

workspace.DescendantAdded:Connect(function(descendant)
  if descendant:IsA("ProximityPrompt") then
    task.wait(0.1)
    f6(descendant)
  end
end)

task.spawn(function()
  while task.wait(0.5) do
    if v3 then
      for index, value in ipairs(workspace:GetDescendants()) do
        if value:IsA("ProximityPrompt") then
          f6(value)
        end
      end
    end
  end
end)

task.spawn(function()
  while task.wait(0.1) do
    if v2 then
      local character = localPlayer.Character
      local humanoid = character and character:FindFirstChildOfClass("Humanoid")
      local backpack = localPlayer:FindFirstChild("Backpack")

      if character and humanoid and humanoid.Health > 0 then
        local punch = character:FindFirstChild("Punch")
          or backpack and backpack:FindFirstChild("Punch")

        if punch then
          if punch.Parent ~= character then
            humanoid:EquipTool(punch)
          end

          punch:Activate()
        end
      end
    end
  end
end)

local function f7(p17)
  local v20 = not v1 or v6
  local getServerTimeNow

  if v20 then
    return
  else
    local character2 = localPlayer.Character
    local humanoidRootPart = character2 and character2:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
      return
    else
      local bossAttackCFrame = p17:GetAttribute("BossAttackCFrame")
      local bossAttackImpactTime = p17:GetAttribute("BossAttackImpactTime")
      v6 = true

      local cframe = typeof(bossAttackCFrame) == "CFrame" and bossAttackCFrame
        or humanoidRootPart.CFrame

      local vector = Vector3.new(0, 15, 0)

      humanoidRootPart.CFrame = CFrame.new(
        cframe.Position - cframe.LookVector * v5 + vector, cframe.Position
      )

      local v21 = 0.8

      if typeof(bossAttackImpactTime) == "number" then
        getServerTimeNow = nil
        pcall(function() getServerTimeNow = workspace:GetServerTimeNow() end)

        if getServerTimeNow then
          v21 = math.clamp(bossAttackImpactTime - getServerTimeNow, 0.2, 5)
        end
      end

      task.wait(v21 + 0.25)
      v6 = false
      return
    end
  end
end

local function f8(p18)
  local bossArena = workspace:FindFirstChild("Events")
    and workspace.Events:FindFirstChild("BossArena")

  if not bossArena then
    return nil
  else
    local v22 = "Boss" .. p18
    local findFirstChild = bossArena:FindFirstChild(v22)

    if findFirstChild then
      return findFirstChild
    end

    for index2, value2 in ipairs(bossArena:GetDescendants()) do
      if value2.Name == v22 and value2:IsA("Model") then
        return value2
      end
    end

    return nil
  end
end

local function f9(p19, p20)
  local f10

  if not p19 then
    return
  else
    if v7[p20] then
      for index3, value3 in ipairs(v7[p20]) do
        value3:Disconnect()
      end
    end

    v7[p20] = {}
    v8[p20] = nil

    function f10()
      if not v1 then
        return
      else
        local bossAttackSequence = p19:GetAttribute("BossAttackSequence")
        local bossAttackKind = p19:GetAttribute("BossAttackKind")

        if bossAttackSequence == nil or tostring(bossAttackKind) ~= "Stomp"
          or v8[p20] == bossAttackSequence then
          return
        end

        v8[p20] = bossAttackSequence
        task.spawn(function() f7(p19) end)
        return
      end
    end

    local bossAttackSequence2 = p19:GetAttributeChangedSignal("BossAttackSequence")
    table.insert(v7[p20], bossAttackSequence2:Connect(f10))
    local bossAttackKind2 = p19:GetAttributeChangedSignal("BossAttackKind")

    table.insert(v7[p20], bossAttackKind2:Connect(function()
      task.delay(0.03, function()
        if v1 then
          f10()
        end
      end)
    end))

    return
  end
end

local function f11()
  for i = 1, 5 do
    local v23 = f8(i)

    if v23 then
      f9(v23, i)
    end
  end
end

f11()

runService.RenderStepped:Connect(function()
  if not v1 or v6 then
    return
  else
    local v24 = f8(1) or f8(2) or f8(3) or f8(4) or f8(5)

    if v24 then
      local character3 = localPlayer.Character
      local humanoidRootPart2 = character3 and character3:FindFirstChild("HumanoidRootPart")
      local humanoidRootPart3 = v24:FindFirstChild("HumanoidRootPart") or v24.PrimaryPart

      if humanoidRootPart2 and humanoidRootPart3 then
        humanoidRootPart2.CFrame = humanoidRootPart3.CFrame * CFrame.new(0, 0, v4)
      end
    end

    return
  end
end)

localPlayer.CharacterAdded:Connect(function()
  task.wait(1)

  if v1 then
    f11()
  end
end)
