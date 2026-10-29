--[[
  Even after being banned,
  you are still trying to crack?
  youre disgusting
]]

------------------------------

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local function fixPrompt(prompt)
    local label = prompt:FindFirstChild("ErrorMessage", true)
    if label then
        label.Text = btext
        label:GetPropertyChangedSignal("Text"):Connect(function()
            if label.Text ~= btext then
                label.Text = btext
            end
        end)
    end
end

local overlay = CoreGui:WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay")

overlay.ChildAdded:Connect(function(child)
    if child.Name == "ErrorPrompt" then
        task.wait()
        fixPrompt(child)
    end
end)
