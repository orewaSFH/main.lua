local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 100)
Frame.Position = UDim2.new(0.5, -150, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(0, 200, 0, 50)
Button.Position = UDim2.new(0.5, -100, 0.5, -25)
Button.Text = "Auto Farm"
Button.MouseButton1Click:Connect(function()
    print("Auto Farm button clicked")
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RedzHub/All-Scripts/main/BF%20AutoFarm"))()
    end)
    if not success then
        warn("Error loading Auto Farm: "..err)
    end
end)
