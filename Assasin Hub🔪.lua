-- Assasin Hub - MM2 (Interface Própria)
-- Key: Murder

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Camera = workspace.CurrentCamera

-- ============================================================
-- CONFIGURAÇÕES
-- ============================================================
local KEY_CORRECT = "Murder"
local DISCORD_LINK = "https://discord.gg/yaASgMJyD"
local HUB_NAME = "Assasin Hub"

-- ⚠️ COLOQUE AQUI O ID DA IMAGEM (não do decal, se souber)
-- Se não souber, deixe o do decal que o script tenta os 2
local DECAL_ID = 97195023203528
local IMAGE_ID = 97195023203528 -- <-- troque aqui se o decal não funcionar

local DISCORD_ICON = "rbxassetid://13480988808"

-- ============================================================
-- FUNÇÃO: CRIAR IMAGEM COM MÚLTIPLAS TENTATIVAS
-- ============================================================
local function createLogo(parent, size, position, fallbackText)
    local container = Instance.new("Frame")
    container.Size = size
    container.Position = position
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    container.BorderSizePixel = 0
    container.Parent = parent

    local cCorner = Instance.new("UICorner")
    cCorner.CornerRadius = UDim.new(1, 0)
    cCorner.Parent = container

    local img = Instance.new("ImageLabel")
    img.Size = UDim2.new(1, 0, 1, 0)
    img.BackgroundTransparency = 1
    img.Image = "rbxassetid://" .. DECAL_ID
    img.Parent = container

    local fallback = Instance.new("TextLabel")
    fallback.Size = UDim2.new(1, 0, 1, 0)
    fallback.BackgroundTransparency = 1
    fallback.Text = fallbackText or "A"
    fallback.TextColor3 = Color3.fromRGB(255, 60, 60)
    fallback.TextSize = 18
    fallback.Font = Enum.Font.GothamBold
    fallback.Visible = false
    fallback.Parent = container

    -- Tentar carregar - testa decal primeiro, depois image
    task.spawn(function()
        task.wait(1.5)
        if not img.IsLoaded then
            -- Tentar o ID alternativo (Image)
            img.Image = "rbxassetid://" .. IMAGE_ID
            task.wait(1.5)
            if not img.IsLoaded then
                -- Falhou tudo: mostra fallback
                img.Image = ""
                fallback.Visible = true
            end
        end
    end)

    return container, img, fallback
end

-- ============================================================
-- INTRO
-- ============================================================
local introGui = Instance.new("ScreenGui")
introGui.Name = "AssasinIntro"
introGui.ResetOnSpawn = false
introGui.IgnoreGuiInset = true
introGui.Parent = CoreGui

local introText = Instance.new("TextLabel")
introText.Size = UDim2.new(1, 0, 0, 80)
introText.Position = UDim2.new(0, 0, 0.5, -40)
introText.BackgroundTransparency = 1
introText.Text = "Assasin Hub🔪"
introText.TextColor3 = Color3.fromRGB(255, 255, 255)
introText.TextSize = 48
introText.Font = Enum.Font.GothamBold
introText.TextStrokeTransparency = 0
introText.TextStrokeColor3 = Color3.fromRGB(120, 0, 0)
introText.TextTransparency = 1
introText.Parent = introGui

introText.TextTransparency = 0
introText.TextStrokeTransparency = 0
introText.Size = UDim2.new(1, 0, 0, 40)
TweenService:Create(introText, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(1, 0, 0, 80),
    TextSize = 48
}):Play()

task.wait(2.5)
TweenService:Create(introText, TweenInfo.new(0.6), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
task.wait(0.8)
introGui:Destroy()

-- ============================================================
-- NOTIFICAÇÃO ROBLOX
-- ============================================================
local notifGui = Instance.new("ScreenGui")
notifGui.Name = "AssasinNotifRoblox"
notifGui.ResetOnSpawn = false
notifGui.IgnoreGuiInset = true
notifGui.Parent = CoreGui

local notifFrame = Instance.new("Frame")
notifFrame.Size = UDim2.new(0, 300, 0, 70)
notifFrame.Position = UDim2.new(0, -320, 0, 50)
notifFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
notifFrame.BorderSizePixel = 0
notifFrame.Parent = notifGui

local nfCorner = Instance.new("UICorner")
nfCorner.CornerRadius = UDim.new(0, 10)
nfCorner.Parent = notifFrame

local nfStroke = Instance.new("UIStroke")
nfStroke.Color = Color3.fromRGB(180, 30, 30)
nfStroke.Thickness = 1.5
nfStroke.Parent = notifFrame

createLogo(notifFrame, UDim2.new(0, 50, 0, 50), UDim2.new(0, 10, 0.5, -25), "A")

local nfTitle = Instance.new("TextLabel")
nfTitle.Size = UDim2.new(1, -75, 0, 22)
nfTitle.Position = UDim2.new(0, 68, 0, 12)
nfTitle.BackgroundTransparency = 1
nfTitle.Text = HUB_NAME
nfTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
nfTitle.TextSize = 15
nfTitle.Font = Enum.Font.GothamBold
nfTitle.TextXAlignment = Enum.TextXAlignment.Left
nfTitle.Parent = notifFrame

local nfMsg = Instance.new("TextLabel")
nfMsg.Size = UDim2.new(1, -75, 0, 20)
nfMsg.Position = UDim2.new(0, 68, 0, 36)
nfMsg.BackgroundTransparency = 1
nfMsg.Text = "Assasin Hub Executado Com Sucesso"
nfMsg.TextColor3 = Color3.fromRGB(200, 200, 200)
nfMsg.TextSize = 12
nfMsg.Font = Enum.Font.Gotham
nfMsg.TextXAlignment = Enum.TextXAlignment.Left
nfMsg.Parent = notifFrame

TweenService:Create(notifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Position = UDim2.new(0, 20, 0, 50)}):Play()
task.wait(4)
TweenService:Create(notifFrame, TweenInfo.new(0.5), {Position = UDim2.new(0, -320, 0, 50)}):Play()
task.wait(0.6)
notifGui:Destroy()

-- ============================================================
-- KEY SYSTEM
-- ============================================================
local keyVerified = false

local keyGui = Instance.new("ScreenGui")
keyGui.Name = "AssasinKey"
keyGui.ResetOnSpawn = false
keyGui.Parent = CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 280, 0, 170)
mainFrame.Position = UDim2.new(0.5, -140, 0.5, -85)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = keyGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(180, 30, 30)
stroke.Thickness = 1.5
stroke.Parent = mainFrame

createLogo(mainFrame, UDim2.new(0, 44, 0, 44), UDim2.new(0.5, -22, 0, 6), "A")

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 26)
title.Position = UDim2.new(0, 0, 0, 52)
title.BackgroundTransparency = 1
title.Text = HUB_NAME
title.TextColor3 = Color3.fromRGB(255, 60, 60)
title.TextSize = 18
title.Font = Enum.Font.GothamBold
title.Parent = mainFrame

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, 0, 0, 18)
subtitle.Position = UDim2.new(0, 0, 0, 76)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Insira a Key para continuar"
subtitle.TextColor3 = Color3.fromRGB(150, 150, 150)
subtitle.TextSize = 11
subtitle.Font = Enum.Font.Gotham
subtitle.Parent = mainFrame

local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0, 220, 0, 36)
keyBox.Position = UDim2.new(0.5, -110, 0, 98)
keyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
keyBox.BorderSizePixel = 0
keyBox.Text = ""
keyBox.PlaceholderText = "Digite: Murder"
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
keyBox.TextSize = 14
keyBox.Font = Enum.Font.Gotham
keyBox.ClearTextOnFocus = false
keyBox.Parent = mainFrame

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 8)
boxCorner.Parent = keyBox

local verifyBtn = Instance.new("TextButton")
verifyBtn.Size = UDim2.new(0, 120, 0, 30)
verifyBtn.Position = UDim2.new(0.5, -60, 0, 140)
verifyBtn.BackgroundColor3 = Color3.fromRGB(150, 25, 25)
verifyBtn.BorderSizePixel = 0
verifyBtn.Text = "Verificar"
verifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyBtn.TextSize = 13
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.Parent = mainFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = verifyBtn

local function verifyKey()
    if keyBox.Text == KEY_CORRECT then
        keyVerified = true
        keyGui:Destroy()
        local notif = Instance.new("ScreenGui")
        notif.Name = "AssasinWelcome"
        notif.ResetOnSpawn = false
        notif.Parent = CoreGui
        local nFrame = Instance.new("Frame")
        nFrame.Size = UDim2.new(0, 260, 0, 60)
        nFrame.Position = UDim2.new(0.5, -130, 0, 20)
        nFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
        nFrame.BorderSizePixel = 0
        nFrame.Parent = notif
        local nCorner = Instance.new("UICorner") nCorner.CornerRadius = UDim.new(0, 10) nCorner.Parent = nFrame
        local nStroke = Instance.new("UIStroke") nStroke.Color = Color3.fromRGB(180, 30, 30) nStroke.Parent = nFrame
        local nTitle = Instance.new("TextLabel")
        nTitle.Size = UDim2.new(1, -20, 0, 24) nTitle.Position = UDim2.new(0, 10, 0, 6)
        nTitle.BackgroundTransparency = 1 nTitle.Text = HUB_NAME
        nTitle.TextColor3 = Color3.fromRGB(255, 60, 60) nTitle.TextSize = 14
        nTitle.Font = Enum.Font.GothamBold nTitle.TextXAlignment = Enum.TextXAlignment.Left
        nTitle.Parent = nFrame
        local nMsg = Instance.new("TextLabel")
        nMsg.Size = UDim2.new(1, -20, 0, 20) nMsg.Position = UDim2.new(0, 10, 0, 30)
        nMsg.BackgroundTransparency = 1 nMsg.Text = "Seja bem vindo dono"
        nMsg.TextColor3 = Color3.fromRGB(220, 220, 220) nMsg.TextSize = 12
        nMsg.Font = Enum.Font.Gotham nMsg.TextXAlignment = Enum.TextXAlignment.Left
        nMsg.Parent = nFrame
        task.wait(4)
        notif:Destroy()
    else
        keyBox.Text = ""
        keyBox.PlaceholderText = "Key incorreta!"
        task.wait(2)
        keyBox.PlaceholderText = "Digite: Murder"
    end
end

verifyBtn.MouseButton1Click:Connect(verifyKey)
keyBox.FocusLost:Connect(function(enterPressed) if enterPressed then verifyKey() end end)

local timeout = 0
while not keyVerified and timeout < 60 do task.wait(0.5) timeout = timeout + 1 end
if not keyVerified then return end

-- ============================================================
-- INTERFACE PRINCIPAL
-- ============================================================
local hubGui = Instance.new("ScreenGui")
hubGui.Name = "AssasinHub"
hubGui.ResetOnSpawn = false
hubGui.Parent = CoreGui

local hubFrame = Instance.new("Frame")
hubFrame.Size = UDim2.new(0, 320, 0, 400)
hubFrame.Position = UDim2.new(0.5, -160, 0.5, -200)
hubFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
hubFrame.BorderSizePixel = 0
hubFrame.Active = true
hubFrame.Draggable = true
hubFrame.Visible = true
hubFrame.Parent = hubGui

local hubCorner = Instance.new("UICorner")
hubCorner.CornerRadius = UDim.new(0, 14)
hubCorner.Parent = hubFrame

local hubStroke = Instance.new("UIStroke")
hubStroke.Color = Color3.fromRGB(70, 70, 80)
hubStroke.Thickness = 1
hubStroke.Parent = hubFrame

local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0, 60)
header.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
header.BorderSizePixel = 0
header.Parent = hubFrame

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0, 14)
headerCorner.Parent = header

createLogo(header, UDim2.new(0, 36, 0, 36), UDim2.new(0, 12, 0.5, -18), "A")

local hubName = Instance.new("TextLabel")
hubName.Size = UDim2.new(0, 180, 0, 22)
hubName.Position = UDim2.new(0, 58, 0, 12)
hubName.BackgroundTransparency = 1
hubName.Text = "ASSASIN HUB"
hubName.TextColor3 = Color3.fromRGB(255, 255, 255)
hubName.TextSize = 16
hubName.Font = Enum.Font.GothamBold
hubName.TextXAlignment = Enum.TextXAlignment.Left
hubName.Parent = header

local hubSub = Instance.new("TextLabel")
hubSub.Size = UDim2.new(0, 180, 0, 16)
hubSub.Position = UDim2.new(0, 58, 0, 32)
hubSub.BackgroundTransparency = 1
hubSub.Text = "MM2 • Assasin Edition"
hubSub.TextColor3 = Color3.fromRGB(150, 150, 160)
hubSub.TextSize = 10
hubSub.Font = Enum.Font.Gotham
hubSub.TextXAlignment = Enum.TextXAlignment.Left
hubSub.Parent = header

-- Discord com ícone
local discordBtn = Instance.new("TextButton")
discordBtn.Size = UDim2.new(0, 32, 0, 32)
discordBtn.Position = UDim2.new(1, -80, 0.5, -16)
discordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
discordBtn.BorderSizePixel = 0
discordBtn.Text = ""
discordBtn.AutoButtonColor = false
discordBtn.Parent = header

local discordCorner = Instance.new("UICorner")
discordCorner.CornerRadius = UDim.new(0, 8)
discordCorner.Parent = discordBtn

local discordIcon = Instance.new("ImageLabel")
discordIcon.Size = UDim2.new(0, 20, 0, 20)
discordIcon.Position = UDim2.new(0.5, -10, 0.5, -10)
discordIcon.BackgroundTransparency = 1
discordIcon.Image = DISCORD_ICON
discordIcon.Parent = discordBtn

discordBtn.MouseButton1Click:Connect(function()
    if setclipboard then setclipboard(DISCORD_LINK) end
    local notif = Instance.new("ScreenGui")
    notif.Name = "AssasinNotifD"
    notif.ResetOnSpawn = false
    notif.Parent = CoreGui
    local nFrame = Instance.new("Frame")
    nFrame.Size = UDim2.new(0, 260, 0, 50)
    nFrame.Position = UDim2.new(0.5, -130, 0, 20)
    nFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    nFrame.BorderSizePixel = 0
    nFrame.Parent = notif
    local nC = Instance.new("UICorner") nC.CornerRadius = UDim.new(0, 10) nC.Parent = nFrame
    local nT = Instance.new("TextLabel")
    nT.Size = UDim2.new(1, -20, 1, 0) nT.Position = UDim2.new(0, 10, 0, 0)
    nT.BackgroundTransparency = 1
    nT.Text = "Link do Discord copiado!"
    nT.TextColor3 = Color3.fromRGB(220, 220, 220)
    nT.TextSize = 12 nT.Font = Enum.Font.Gotham
    nT.Parent = nFrame
    task.wait(2)
    notif:Destroy()
end)

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -40, 0.5, -15)
closeBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
closeBtn.TextSize = 20
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = header

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeBtn

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, -20, 1, -75)
scroll.Position = UDim2.new(0, 10, 0, 67)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 3
scroll.ScrollBarImageColor3 = Color3.fromRGB(180, 30, 30)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.Parent = hubFrame

local scrollLayout = Instance.new("UIListLayout")
scrollLayout.Padding = UDim.new(0, 8)
scrollLayout.SortOrder = Enum.SortOrder.LayoutOrder
scrollLayout.Parent = scroll

local function createCard(titleText, subtitleText, color)
    local card = Instance.new("Frame")
    card.Size = UDim2.new(1, 0, 0, 70)
    card.BackgroundColor3 = Color3.fromRGB(22, 22, 27)
    card.BorderSizePixel = 0
    card.Parent = scroll
    local cCorner = Instance.new("UICorner") cCorner.CornerRadius = UDim.new(0, 10) cCorner.Parent = card
    local cStroke = Instance.new("UIStroke") cStroke.Color = Color3.fromRGB(45, 45, 52) cStroke.Thickness = 1 cStroke.Parent = card
    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 4, 1, -12) bar.Position = UDim2.new(0, 6, 0, 6)
    bar.BackgroundColor3 = color or Color3.fromRGB(180, 30, 30) bar.BorderSizePixel = 0 bar.Parent = card
    local barCorner = Instance.new("UICorner") barCorner.CornerRadius = UDim.new(1, 0) barCorner.Parent = bar
    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size = UDim2.new(1, -90, 0, 22) titleLbl.Position = UDim2.new(0, 18, 0, 10)
    titleLbl.BackgroundTransparency = 1 titleLbl.Text = titleText
    titleLbl.TextColor3 = Color3.fromRGB(255, 255, 255) titleLbl.TextSize = 14
    titleLbl.Font = Enum.Font.GothamBold titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.Parent = card
    local subLbl = Instance.new("TextLabel")
    subLbl.Size = UDim2.new(1, -90, 0, 18) subLbl.Position = UDim2.new(0, 18, 0, 34)
    subLbl.BackgroundTransparency = 1 subLbl.Text = subtitleText
    subLbl.TextColor3 = Color3.fromRGB(140, 140, 150) subLbl.TextSize = 11
    subLbl.Font = Enum.Font.Gotham subLbl.TextXAlignment = Enum.TextXAlignment.Left
    subLbl.Parent = card
    local toggleBg = Instance.new("Frame")
    toggleBg.Size = UDim2.new(0, 44, 0, 24) toggleBg.Position = UDim2.new(1, -54, 0.5, -12)
    toggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 58) toggleBg.BorderSizePixel = 0 toggleBg.Parent = card
    local tCorner = Instance.new("UICorner") tCorner.CornerRadius = UDim.new(1, 0) tCorner.Parent = toggleBg
    local toggleDot = Instance.new("Frame")
    toggleDot.Size = UDim2.new(0, 18, 0, 18) toggleDot.Position = UDim2.new(0, 3, 0.5, -9)
    toggleDot.BackgroundColor3 = Color3.fromRGB(180, 180, 180) toggleDot.BorderSizePixel = 0 toggleDot.Parent = toggleBg
    local dCorner = Instance.new("UICorner") dCorner.CornerRadius = UDim.new(1, 0) dCorner.Parent = toggleDot
    return card, toggleBg, toggleDot
end

local function makeToggle(card, toggleBg, toggleDot, callback)
    local state = false
    local function update(v)
        if v then
            TweenService:Create(toggleBg, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(180, 30, 30)}):Play()
            TweenService:Create(toggleDot, TweenInfo.new(0.2), {Position = UDim2.new(1, -21, 0.5, -9), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        else
            TweenService:Create(toggleBg, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 58)}):Play()
            TweenService:Create(toggleDot, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9), BackgroundColor3 = Color3.fromRGB(180, 180, 180)}):Play()
        end
    end
    local click = Instance.new("TextButton")
    click.Size = UDim2.new(1, 0, 1, 0) click.BackgroundTransparency = 1 click.Text = ""
    click.Parent = card
    click.MouseButton1Click:Connect(function()
        state = not state update(state)
        if callback then callback(state) end
    end)
    return update
end

local aimbotEnabled = false
local autoGunEnabled = false
local rageShootEnabled = false
local autoFarmCoinsEnabled = false
local espEnabled = false

local ROLE_COLORS = {
    Murderer = Color3.fromRGB(255, 0, 0),
    Sheriff  = Color3.fromRGB(0, 100, 255),
    Innocent = Color3.fromRGB(0, 255, 0)
}

local card1, tg1, dt1 = createCard("Aimbot Shiftlock", "Mira no Murderer com arma do Sheriff", Color3.fromRGB(255, 60, 60))
makeToggle(card1, tg1, dt1, function(v) aimbotEnabled = v end)

local card2, tg2, dt2 = createCard("Auto Pegar Arma", "Pega a arma do Sheriff no chão", Color3.fromRGB(60, 150, 255))
makeToggle(card2, tg2, dt2, function(v) autoGunEnabled = v end)

local card3, tg3, dt3 = createCard("Rage Shoot", "Atira através das paredes no Murderer", Color3.fromRGB(255, 150, 0))
makeToggle(card3, tg3, dt3, function(v) rageShootEnabled = v end)

local card4, tg4, dt4 = createCard("Auto Farm Coins", "Teleporta em cima das moedas do mapa", Color3.fromRGB(255, 215, 0))
makeToggle(card4, tg4, dt4, function(v) autoFarmCoinsEnabled = v end)

local card5, tg5, dt5 = createCard("ESP Roles", "Vermelho=Murderer | Azul=Sheriff | Verde=Innocent", Color3.fromRGB(0, 255, 100))
makeToggle(card5, tg5, dt5, function(v) espEnabled = v end)

-- BOLHA FLUTUANTE
local bubble = Instance.new("ImageButton")
bubble.Size = UDim2.new(0, 55, 0, 55)
bubble.Position = UDim2.new(0, 20, 0.5, -27)
bubble.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
bubble.BorderSizePixel = 0
bubble.Image = "rbxassetid://" .. DECAL_ID
bubble.Visible = false
bubble.Active = true
bubble.Draggable = true
bubble.Parent = hubGui

local bubbleCorner = Instance.new("UICorner")
bubbleCorner.CornerRadius = UDim.new(1, 0)
bubbleCorner.Parent = bubble

local bubbleStroke = Instance.new("UIStroke")
bubbleStroke.Color = Color3.fromRGB(255, 60, 60)
bubbleStroke.Thickness = 2
bubbleStroke.Parent = bubble

local bubbleFallback = Instance.new("TextLabel")
bubbleFallback.Size = UDim2.new(1, 0, 1, 0)
bubbleFallback.BackgroundTransparency = 1
bubbleFallback.Text = "A"
bubbleFallback.TextColor3 = Color3.fromRGB(255, 255, 255)
bubbleFallback.TextSize = 22
bubbleFallback.Font = Enum.Font.GothamBold
bubbleFallback.Visible = false
bubbleFallback.Parent = bubble

task.spawn(function()
    task.wait(1.5)
    if not bubble.IsLoaded then
        bubble.Image = "rbxassetid://" .. IMAGE_ID
        task.wait(1.5)
        if not bubble.IsLoaded then
            bubble.Image = ""
            bubbleFallback.Visible = true
        end
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    hubFrame.Visible = false
    bubble.Visible = true
end)

bubble.MouseButton1Click:Connect(function()
    hubFrame.Visible = true
    bubble.Visible = false
end)

-- ROLES
local function getPlayerRole(player)
    local char = player.Character
    if not char then return "Innocent" end
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        if backpack:FindFirstChild("Knife") or char:FindFirstChild("Knife") then return "Murderer" end
        if backpack:FindFirstChild("Gun") or char:FindFirstChild("Gun") then return "Sheriff" end
    end
    return "Innocent"
end
local function getLocalRole() return getPlayerRole(LocalPlayer) end

-- ESP
local espDrawings = {}
local function updateESPForPlayer(player, screenPos, role)
    if not screenPos or screenPos.Z <= 0 then
        if espDrawings[player] then
            for _, obj in pairs(espDrawings[player]) do if obj then obj.Visible = false end end
        end
        return
    end
    local color = ROLE_COLORS[role] or ROLE_COLORS.Innocent
    if not espDrawings[player] then
        local box = Drawing.new("Square")
        box.Visible = false box.Color = color box.Thickness = 1 box.Filled = false
        local text = Drawing.new("Text")
        text.Visible = false text.Color = color text.Size = 14 text.Center = true
        text.Outline = true text.OutlineColor = Color3.fromRGB(0, 0, 0)
        espDrawings[player] = {box = box, text = text, role = role}
    end
    local data = espDrawings[player]
    if data.role ~= role then
        data.role = role
        data.box.Color = ROLE_COLORS[role] or ROLE_COLORS.Innocent
        data.text.Color = data.box.Color
    end
    local char = player.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local head = char:FindFirstChild("Head")
    if not hrp or not head then return end
    local hrpScreen = Camera:WorldToViewportPoint(hrp.Position)
    local headScreen = Camera:WorldToViewportPoint(head.Position)
    if hrpScreen.Z <= 0 or headScreen.Z <= 0 then
        data.box.Visible = false data.text.Visible = false return
    end
    local height = math.abs(headScreen.Y - hrpScreen.Y) * 1.8
    local width = height * 0.6
    local boxX = hrpScreen.X - width / 2
    local boxY = headScreen.Y - (height * 0.2)
    data.box.Size = Vector2.new(width, height)
    data.box.Position = Vector2.new(boxX, boxY)
    data.box.Visible = true
    data.text.Text = role
    data.text.Position = Vector2.new(hrpScreen.X, boxY - 18)
    data.text.Visible = true
end

local function cleanupESP(player)
    if espDrawings[player] then
        for _, obj in pairs(espDrawings[player]) do if obj and obj.Remove then obj:Remove() end end
        espDrawings[player] = nil
    end
end

local function getMurdererTarget()
    local bestTarget = nil local bestDistance = math.huge
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            if getPlayerRole(player) == "Murderer" then
                local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if hrp and humanoid and humanoid.Health > 0 then
                    local dist = (Camera.CFrame.Position - hrp.Position).Magnitude
                    if dist < bestDistance then bestDistance = dist bestTarget = player end
                end
            end
        end
    end
    return bestTarget
end

-- LOOP PRINCIPAL
local renderConnection = RunService.RenderStepped:Connect(function()
    local myChar = LocalPlayer.Character
    if not myChar then return end
    local myHumanoid = myChar:FindFirstChildOfClass("Humanoid")
    if not myHumanoid or myHumanoid.Health <= 0 then return end
    local myRole = getLocalRole()

    if espEnabled then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    local role = getPlayerRole(player)
                    local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local screenPos = Camera:WorldToViewportPoint(hrp.Position)
                        updateESPForPlayer(player, screenPos, role)
                    end
                else
                    if espDrawings[player] then
                        espDrawings[player].box.Visible = false
                        espDrawings[player].text.Visible = false
                    end
                end
            end
        end
    else
        for _, data in pairs(espDrawings) do
            data.box.Visible = false data.text.Visible = false
        end
    end

    if aimbotEnabled and myRole == "Sheriff" then
        local target = getMurdererTarget()
        if target and target.Character then
            local targetHrp = target.Character:FindFirstChild("HumanoidRootPart")
            if targetHrp then
                local lookAt = targetHrp.Position
                local myPos = Camera.CFrame.Position
                if (lookAt - myPos).Magnitude > 1 then
                    Camera.CFrame = CFrame.lookAt(myPos, lookAt)
                end
            end
        end
    end

    if autoGunEnabled then
        for _, obj in ipairs(workspace:GetChildren()) do
            if obj.Name == "Gun" or obj.Name == "GunDrop" then
                if obj:IsA("BasePart") then
                    local myHrp = myChar:FindFirstChild("HumanoidRootPart")
                    if myHrp then
                        local dist = (myHrp.Position - obj.Position).Magnitude
                        if dist < 50 then myHrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 2, 0)) end
                    end
                end
            end
        end
    end

    if rageShootEnabled and myRole == "Sheriff" then
        local target = getMurdererTarget()
        if target and target.Character then
            local targetHrp = target.Character:FindFirstChild("HumanoidRootPart")
            local tool = myChar:FindFirstChildOfClass("Tool")
            if tool and targetHrp then
                local myHrp = myChar:FindFirstChild("HumanoidRootPart")
                if myHrp then myHrp.CFrame = CFrame.lookAt(myHrp.Position, targetHrp.Position) end
                tool:Activate()
            end
        end
    end

    if autoFarmCoinsEnabled then
        local myHrp = myChar:FindFirstChild("HumanoidRootPart")
        if myHrp then
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and (obj.Name:lower():find("coin") or obj.Name == "Coin" or obj.Name:lower():find("moeda")) then
                    local dist = (myHrp.Position - obj.Position).Magnitude
                    if dist < 100 then
                        myHrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 3, 0))
                        break
                    end
                end
            end
        end
    end
end)

Players.PlayerRemoving:Connect(function(player) cleanupESP(player) end)
LocalPlayer.CharacterRemoving:Connect(function()
    for player, _ in pairs(espDrawings) do cleanupESP(player) end
end)

getgenv().AssasinHubConnection = renderConnection
