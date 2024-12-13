local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local EnableButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 170, 255)
MainFrame.Size = UDim2.new(0, 200, 0, 100)
MainFrame.Position = UDim2.new(0, 10, 0.5, -50)
MainFrame.Visible = false

Title.Parent = MainFrame
Title.Text = "Auto Void Kill"
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.BorderSizePixel = 2
Title.BorderColor3 = Color3.fromRGB(0, 170, 255)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true

ToggleButton.Parent = ScreenGui
ToggleButton.Text = "+"
ToggleButton.Size = UDim2.new(0, 30, 0, 30)
ToggleButton.Position = UDim2.new(0, 10, 0.5, -130)
ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ToggleButton.BorderSizePixel = 2
ToggleButton.BorderColor3 = Color3.fromRGB(0, 170, 255)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextScaled = true

EnableButton.Parent = MainFrame
EnableButton.Text = "Enable"
EnableButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
EnableButton.BorderSizePixel = 2
EnableButton.BorderColor3 = Color3.fromRGB(0, 170, 255)
EnableButton.Size = UDim2.new(1, -20, 0, 30)
EnableButton.Position = UDim2.new(0, 10, 0, 50)
EnableButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableButton.TextScaled = true

ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    ToggleButton.Text = MainFrame.Visible and "-" or "+"
end)

local scriptEnabled = false
EnableButton.MouseButton1Click:Connect(function()
    if not scriptEnabled then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tanos5305/t/refs/heads/main/script.lua"))()
        EnableButton.Text = "Disable"
        scriptEnabled = true
    else
        EnableButton.Text = "Enable"
        scriptEnabled = false
    end
end)
