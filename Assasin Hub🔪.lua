--[[ Assasin Hub - Obfuscated Build ]]
local _0x0 = string.char
local _0x1 = string.gsub
local _0x2 = tonumber

local function _0xD(_s)
    return (_0x1(_s, "\\(%d+)", function(_n) return _0x0(_0x2(_n)) end))
end

local _0x3 = game:GetService(_0xD("\80\108\97\121\101\114\115"))
local _0x4 = _0x3.LocalPlayer
local _0x5 = game:GetService(_0xD("\67\111\114\101\71\117\105"))
local _0x6 = game:GetService(_0xD("\82\117\110\83\101\114\118\105\99\101"))
local _0x7 = game:GetService(_0xD("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101"))
local _0x8 = game:GetService(_0xD("\84\119\101\101\110\83\101\114\118\105\99\101"))
local _0x9 = workspace.CurrentCamera

local _0xA = _0xD("\77\117\114\100\101\114")
local _0xB = _0xD("\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\121\97\65\83\103\77\74\121\68")
local _0xC = _0xD("\65\115\115\97\115\105\110\32\72\117\98")
local _0xE = 97195023203528
local _0xF = 97195023203528
local _0x10 = _0xD("\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\52\56\48\57\56\56\56\48\56")

local function _0x11(_p, _s, _pos, _fb)
    local _c = Instance.new(_0xD("\70\114\97\109\101"))
    _c.Size = _s
    _c.Position = _pos
    _c.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    _c.BorderSizePixel = 0
    _c.Parent = _p
    local _cc = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
    _cc.CornerRadius = UDim.new(1, 0)
    _cc.Parent = _c
    local _i = Instance.new(_0xD("\73\109\97\103\101\76\97\98\101\108"))
    _i.Size = UDim2.new(1, 0, 1, 0)
    _i.BackgroundTransparency = 1
    _i.Image = _0xD("\114\98\120\97\115\115\101\116\105\100\58\47\47") .. _0xE
    _i.Parent = _c
    local _f = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
    _f.Size = UDim2.new(1, 0, 1, 0)
    _f.BackgroundTransparency = 1
    _f.Text = _fb or "A"
    _f.TextColor3 = Color3.fromRGB(255, 60, 60)
    _f.TextSize = 18
    _f.Font = Enum.Font.GothamBold
    _f.Visible = false
    _f.Parent = _c
    task.spawn(function()
        task.wait(1.5)
        if not _i.IsLoaded then
            _i.Image = _0xD("\114\98\120\97\115\115\101\116\105\100\58\47\47") .. _0xF
            task.wait(1.5)
            if not _i.IsLoaded then
                _i.Image = ""
                _f.Visible = true
            end
        end
    end)
    return _c, _i, _f
end

-- INTRO
local _0x12 = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
_0x12.Name = _0xD("\65\115\115\97\115\105\110\73\110\116\114\111")
_0x12.ResetOnSpawn = false
_0x12.IgnoreGuiInset = true
_0x12.Parent = _0x5

local _0x13 = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x13.Size = UDim2.new(1, 0, 0, 80)
_0x13.Position = UDim2.new(0, 0, 0.5, -40)
_0x13.BackgroundTransparency = 1
_0x13.Text = _0xD("\65\115\115\97\115\105\110\32\72\117\98\240\159\148\170")
_0x13.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x13.TextSize = 48
_0x13.Font = Enum.Font.GothamBold
_0x13.TextStrokeTransparency = 0
_0x13.TextStrokeColor3 = Color3.fromRGB(120, 0, 0)
_0x13.TextTransparency = 1
_0x13.Parent = _0x12

_0x13.TextTransparency = 0
_0x13.TextStrokeTransparency = 0
_0x13.Size = UDim2.new(1, 0, 0, 40)
_0x8:Create(_0x13, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(1, 0, 0, 80),
    TextSize = 48
}):Play()

task.wait(2.5)
_0x8:Create(_0x13, TweenInfo.new(0.6), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
task.wait(0.8)
_0x12:Destroy()

-- NOTIFICAÇÃO INICIAL
local _0x14 = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
_0x14.Name = _0xD("\65\115\115\97\115\105\110\78\111\116\105\102")
_0x14.ResetOnSpawn = false
_0x14.IgnoreGuiInset = true
_0x14.Parent = _0x5

local _0x15 = Instance.new(_0xD("\70\114\97\109\101"))
_0x15.Size = UDim2.new(0, 300, 0, 70)
_0x15.Position = UDim2.new(0, -320, 0, 50)
_0x15.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
_0x15.BorderSizePixel = 0
_0x15.Parent = _0x14

local _0x16 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x16.CornerRadius = UDim.new(0, 10)
_0x16.Parent = _0x15

local _0x17 = Instance.new(_0xD("\85\73\83\116\114\111\107\101"))
_0x17.Color = Color3.fromRGB(180, 30, 30)
_0x17.Thickness = 1.5
_0x17.Parent = _0x15

_0x11(_0x15, UDim2.new(0, 50, 0, 50), UDim2.new(0, 10, 0.5, -25), "A")

local _0x18 = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x18.Size = UDim2.new(1, -75, 0, 22)
_0x18.Position = UDim2.new(0, 68, 0, 12)
_0x18.BackgroundTransparency = 1
_0x18.Text = _0xC
_0x18.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x18.TextSize = 15
_0x18.Font = Enum.Font.GothamBold
_0x18.TextXAlignment = Enum.TextXAlignment.Left
_0x18.Parent = _0x15

local _0x19 = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x19.Size = UDim2.new(1, -75, 0, 20)
_0x19.Position = UDim2.new(0, 68, 0, 36)
_0x19.BackgroundTransparency = 1
_0x19.Text = _0xD("\65\115\115\97\115\105\110\32\72\117\98\32\69\120\101\99\117\116\97\100\111\32\67\111\109\32\83\117\99\101\115\115\111")
_0x19.TextColor3 = Color3.fromRGB(200, 200, 200)
_0x19.TextSize = 12
_0x19.Font = Enum.Font.Gotham
_0x19.TextXAlignment = Enum.TextXAlignment.Left
_0x19.Parent = _0x15

_0x8:Create(_0x15, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Position = UDim2.new(0, 20, 0, 50)}):Play()
task.wait(4)
_0x8:Create(_0x15, TweenInfo.new(0.5), {Position = UDim2.new(0, -320, 0, 50)}):Play()
task.wait(0.6)
_0x14:Destroy()

-- KEY SYSTEM
local _0x1A = false

local _0x1B = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
_0x1B.Name = _0xD("\65\115\115\97\115\105\110\75\101\121")
_0x1B.ResetOnSpawn = false
_0x1B.Parent = _0x5

local _0x1C = Instance.new(_0xD("\70\114\97\109\101"))
_0x1C.Size = UDim2.new(0, 280, 0, 170)
_0x1C.Position = UDim2.new(0.5, -140, 0.5, -85)
_0x1C.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
_0x1C.BorderSizePixel = 0
_0x1C.Active = true
_0x1C.Draggable = true
_0x1C.Parent = _0x1B

local _0x1D = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x1D.CornerRadius = UDim.new(0, 12)
_0x1D.Parent = _0x1C

local _0x1E = Instance.new(_0xD("\85\73\83\116\114\111\107\101"))
_0x1E.Color = Color3.fromRGB(180, 30, 30)
_0x1E.Thickness = 1.5
_0x1E.Parent = _0x1C

_0x11(_0x1C, UDim2.new(0, 44, 0, 44), UDim2.new(0.5, -22, 0, 6), "A")

local _0x1F = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x1F.Size = UDim2.new(1, 0, 0, 26)
_0x1F.Position = UDim2.new(0, 0, 0, 52)
_0x1F.BackgroundTransparency = 1
_0x1F.Text = _0xC
_0x1F.TextColor3 = Color3.fromRGB(255, 60, 60)
_0x1F.TextSize = 18
_0x1F.Font = Enum.Font.GothamBold
_0x1F.Parent = _0x1C

local _0x20 = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x20.Size = UDim2.new(1, 0, 0, 18)
_0x20.Position = UDim2.new(0, 0, 0, 76)
_0x20.BackgroundTransparency = 1
_0x20.Text = _0xD("\73\110\115\105\114\97\32\97\32\75\101\121\32\112\97\114\97\32\99\111\110\116\105\110\117\97\114")
_0x20.TextColor3 = Color3.fromRGB(150, 150, 150)
_0x20.TextSize = 11
_0x20.Font = Enum.Font.Gotham
_0x20.Parent = _0x1C

local _0x21 = Instance.new(_0xD("\84\101\120\116\66\111\120"))
_0x21.Size = UDim2.new(0, 220, 0, 36)
_0x21.Position = UDim2.new(0.5, -110, 0, 98)
_0x21.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
_0x21.BorderSizePixel = 0
_0x21.Text = ""
_0x21.PlaceholderText = _0xD("\68\105\103\105\116\101\58\32\77\117\114\100\101\114")
_0x21.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x21.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
_0x21.TextSize = 14
_0x21.Font = Enum.Font.Gotham
_0x21.ClearTextOnFocus = false
_0x21.Parent = _0x1C

local _0x22 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x22.CornerRadius = UDim.new(0, 8)
_0x22.Parent = _0x21

local _0x23 = Instance.new(_0xD("\84\101\120\116\66\117\116\116\111\110"))
_0x23.Size = UDim2.new(0, 120, 0, 30)
_0x23.Position = UDim2.new(0.5, -60, 0, 140)
_0x23.BackgroundColor3 = Color3.fromRGB(150, 25, 25)
_0x23.BorderSizePixel = 0
_0x23.Text = _0xD("\86\101\114\105\102\105\99\97\114")
_0x23.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x23.TextSize = 13
_0x23.Font = Enum.Font.GothamBold
_0x23.Parent = _0x1C

local _0x24 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x24.CornerRadius = UDim.new(0, 8)
_0x24.Parent = _0x23

local function _0x25()
    if _0x21.Text == _0xA then
        _0x1A = true
        _0x1B:Destroy()
        local _n = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
        _n.Name = _0xD("\65\115\115\97\115\105\110\87\101\108\99\111\109\101")
        _n.ResetOnSpawn = false
        _n.Parent = _0x5
        local _f = Instance.new(_0xD("\70\114\97\109\101"))
        _f.Size = UDim2.new(0, 260, 0, 60)
        _f.Position = UDim2.new(0.5, -130, 0, 20)
        _f.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
        _f.BorderSizePixel = 0
        _f.Parent = _n
        local _c = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _c.CornerRadius = UDim.new(0, 10) _c.Parent = _f
        local _s = Instance.new(_0xD("\85\73\83\116\114\111\107\101")) _s.Color = Color3.fromRGB(180, 30, 30) _s.Parent = _f
        local _t = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
        _t.Size = UDim2.new(1, -20, 0, 24) _t.Position = UDim2.new(0, 10, 0, 6)
        _t.BackgroundTransparency = 1 _t.Text = _0xC
        _t.TextColor3 = Color3.fromRGB(255, 60, 60) _t.TextSize = 14
        _t.Font = Enum.Font.GothamBold _t.TextXAlignment = Enum.TextXAlignment.Left
        _t.Parent = _f
        local _m = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
        _m.Size = UDim2.new(1, -20, 0, 20) _m.Position = UDim2.new(0, 10, 0, 30)
        _m.BackgroundTransparency = 1 _m.Text = _0xD("\83\101\106\97\32\98\101\109\32\118\105\110\100\111\32\100\111\110\111")
        _m.TextColor3 = Color3.fromRGB(220, 220, 220) _m.TextSize = 12
        _m.Font = Enum.Font.Gotham _m.TextXAlignment = Enum.TextXAlignment.Left
        _m.Parent = _f
        task.wait(4)
        _n:Destroy()
    else
        _0x21.Text = ""
        _0x21.PlaceholderText = _0xD("\75\101\121\32\105\110\99\111\114\114\101\116\97\33")
        task.wait(2)
        _0x21.PlaceholderText = _0xD("\68\105\103\105\116\101\58\32\77\117\114\100\101\114")
    end
end

_0x23.MouseButton1Click:Connect(_0x25)
_0x21.FocusLost:Connect(function(_e) if _e then _0x25() end end)

local _0x26 = 0
while not _0x1A and _0x26 < 60 do task.wait(0.5) _0x26 = _0x26 + 1 end
if not _0x1A then return end

-- INTERFACE PRINCIPAL
local _0x27 = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
_0x27.Name = _0xD("\65\115\115\97\115\105\110\72\117\98")
_0x27.ResetOnSpawn = false
_0x27.Parent = _0x5

local _0x28 = Instance.new(_0xD("\70\114\97\109\101"))
_0x28.Size = UDim2.new(0, 320, 0, 400)
_0x28.Position = UDim2.new(0.5, -160, 0.5, -200)
_0x28.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
_0x28.BorderSizePixel = 0
_0x28.Active = true
_0x28.Draggable = true
_0x28.Visible = true
_0x28.Parent = _0x27

local _0x29 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x29.CornerRadius = UDim.new(0, 14)
_0x29.Parent = _0x28

local _0x2A = Instance.new(_0xD("\85\73\83\116\114\111\107\101"))
_0x2A.Color = Color3.fromRGB(70, 70, 80)
_0x2A.Thickness = 1
_0x2A.Parent = _0x28

local _0x2B = Instance.new(_0xD("\70\114\97\109\101"))
_0x2B.Size = UDim2.new(1, 0, 0, 60)
_0x2B.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_0x2B.BorderSizePixel = 0
_0x2B.Parent = _0x28

local _0x2C = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x2C.CornerRadius = UDim.new(0, 14)
_0x2C.Parent = _0x2B

_0x11(_0x2B, UDim2.new(0, 36, 0, 36), UDim2.new(0, 12, 0.5, -18), "A")

local _0x2D = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x2D.Size = UDim2.new(0, 180, 0, 22)
_0x2D.Position = UDim2.new(0, 58, 0, 12)
_0x2D.BackgroundTransparency = 1
_0x2D.Text = _0xD("\65\83\83\65\83\73\78\32\72\85\66")
_0x2D.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x2D.TextSize = 16
_0x2D.Font = Enum.Font.GothamBold
_0x2D.TextXAlignment = Enum.TextXAlignment.Left
_0x2D.Parent = _0x2B

local _0x2E = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x2E.Size = UDim2.new(0, 180, 0, 16)
_0x2E.Position = UDim2.new(0, 58, 0, 32)
_0x2E.BackgroundTransparency = 1
_0x2E.Text = _0xD("\77\77\50\32\226\128\162\32\65\115\115\97\115\105\110\32\69\100\105\116\105\111\110")
_0x2E.TextColor3 = Color3.fromRGB(150, 150, 160)
_0x2E.TextSize = 10
_0x2E.Font = Enum.Font.Gotham
_0x2E.TextXAlignment = Enum.TextXAlignment.Left
_0x2E.Parent = _0x2B

local _0x2F = Instance.new(_0xD("\84\101\120\116\66\117\116\116\111\110"))
_0x2F.Size = UDim2.new(0, 32, 0, 32)
_0x2F.Position = UDim2.new(1, -80, 0.5, -16)
_0x2F.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
_0x2F.BorderSizePixel = 0
_0x2F.Text = ""
_0x2F.AutoButtonColor = false
_0x2F.Parent = _0x2B

local _0x30 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x30.CornerRadius = UDim.new(0, 8)
_0x30.Parent = _0x2F

local _0x31 = Instance.new(_0xD("\73\109\97\103\101\76\97\98\101\108"))
_0x31.Size = UDim2.new(0, 20, 0, 20)
_0x31.Position = UDim2.new(0.5, -10, 0.5, -10)
_0x31.BackgroundTransparency = 1
_0x31.Image = _0x10
_0x31.Parent = _0x2F

_0x2F.MouseButton1Click:Connect(function()
    if setclipboard then setclipboard(_0xB) end
    local _n = Instance.new(_0xD("\83\99\114\101\101\110\71\117\105"))
    _n.Name = _0xD("\65\115\115\97\115\105\110\78\111\116\105\102\68")
    _n.ResetOnSpawn = false
    _n.Parent = _0x5
    local _f = Instance.new(_0xD("\70\114\97\109\101"))
    _f.Size = UDim2.new(0, 260, 0, 50)
    _f.Position = UDim2.new(0.5, -130, 0, 20)
    _f.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    _f.BorderSizePixel = 0
    _f.Parent = _n
    local _c = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _c.CornerRadius = UDim.new(0, 10) _c.Parent = _f
    local _t = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
    _t.Size = UDim2.new(1, -20, 1, 0) _t.Position = UDim2.new(0, 10, 0, 0)
    _t.BackgroundTransparency = 1
    _t.Text = _0xD("\76\105\110\107\32\100\111\32\68\105\115\99\111\114\100\32\99\111\112\105\97\100\111\33")
    _t.TextColor3 = Color3.fromRGB(220, 220, 220)
    _t.TextSize = 12 _t.Font = Enum.Font.Gotham
    _t.Parent = _f
    task.wait(2)
    _n:Destroy()
end)

local _0x32 = Instance.new(_0xD("\84\101\120\116\66\117\116\116\111\110"))
_0x32.Size = UDim2.new(0, 30, 0, 30)
_0x32.Position = UDim2.new(1, -40, 0.5, -15)
_0x32.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
_0x32.BorderSizePixel = 0
_0x32.Text = _0xD("\195\151")
_0x32.TextColor3 = Color3.fromRGB(200, 200, 200)
_0x32.TextSize = 20
_0x32.Font = Enum.Font.GothamBold
_0x32.Parent = _0x2B

local _0x33 = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x33.CornerRadius = UDim.new(0, 8)
_0x33.Parent = _0x32

local _0x34 = Instance.new(_0xD("\83\99\114\111\108\108\105\110\103\70\114\97\109\101"))
_0x34.Size = UDim2.new(1, -20, 1, -75)
_0x34.Position = UDim2.new(0, 10, 0, 67)
_0x34.BackgroundTransparency = 1
_0x34.BorderSizePixel = 0
_0x34.ScrollBarThickness = 3
_0x34.ScrollBarImageColor3 = Color3.fromRGB(180, 30, 30)
_0x34.CanvasSize = UDim2.new(0, 0, 0, 0)
_0x34.AutomaticCanvasSize = Enum.AutomaticSize.Y
_0x34.Parent = _0x28

local _0x35 = Instance.new(_0xD("\85\73\76\105\115\116\76\97\121\111\117\116"))
_0x35.Padding = UDim.new(0, 8)
_0x35.SortOrder = Enum.SortOrder.LayoutOrder
_0x35.Parent = _0x34

local function _0x36(_tT, _sT, _c)
    local _cd = Instance.new(_0xD("\70\114\97\109\101"))
    _cd.Size = UDim2.new(1, 0, 0, 70)
    _cd.BackgroundColor3 = Color3.fromRGB(22, 22, 27)
    _cd.BorderSizePixel = 0
    _cd.Parent = _0x34
    local _cc = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _cc.CornerRadius = UDim.new(0, 10) _cc.Parent = _cd
    local _cs = Instance.new(_0xD("\85\73\83\116\114\111\107\101")) _cs.Color = Color3.fromRGB(45, 45, 52) _cs.Thickness = 1 _cs.Parent = _cd
    local _b = Instance.new(_0xD("\70\114\97\109\101"))
    _b.Size = UDim2.new(0, 4, 1, -12) _b.Position = UDim2.new(0, 6, 0, 6)
    _b.BackgroundColor3 = _c or Color3.fromRGB(180, 30, 30) _b.BorderSizePixel = 0 _b.Parent = _cd
    local _bc = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _bc.CornerRadius = UDim.new(1, 0) _bc.Parent = _b
    local _tl = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
    _tl.Size = UDim2.new(1, -90, 0, 22) _tl.Position = UDim2.new(0, 18, 0, 10)
    _tl.BackgroundTransparency = 1 _tl.Text = _tT
    _tl.TextColor3 = Color3.fromRGB(255, 255, 255) _tl.TextSize = 14
    _tl.Font = Enum.Font.GothamBold _tl.TextXAlignment = Enum.TextXAlignment.Left
    _tl.Parent = _cd
    local _sl = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
    _sl.Size = UDim2.new(1, -90, 0, 18) _sl.Position = UDim2.new(0, 18, 0, 34)
    _sl.BackgroundTransparency = 1 _sl.Text = _sT
    _sl.TextColor3 = Color3.fromRGB(140, 140, 150) _sl.TextSize = 11
    _sl.Font = Enum.Font.Gotham _sl.TextXAlignment = Enum.TextXAlignment.Left
    _sl.Parent = _cd
    local _tb = Instance.new(_0xD("\70\114\97\109\101"))
    _tb.Size = UDim2.new(0, 44, 0, 24) _tb.Position = UDim2.new(1, -54, 0.5, -12)
    _tb.BackgroundColor3 = Color3.fromRGB(50, 50, 58) _tb.BorderSizePixel = 0 _tb.Parent = _cd
    local _tc = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _tc.CornerRadius = UDim.new(1, 0) _tc.Parent = _tb
    local _td = Instance.new(_0xD("\70\114\97\109\101"))
    _td.Size = UDim2.new(0, 18, 0, 18) _td.Position = UDim2.new(0, 3, 0.5, -9)
    _td.BackgroundColor3 = Color3.fromRGB(180, 180, 180) _td.BorderSizePixel = 0 _td.Parent = _tb
    local _dc = Instance.new(_0xD("\85\73\67\111\114\110\101\114")) _dc.CornerRadius = UDim.new(1, 0) _dc.Parent = _td
    return _cd, _tb, _td
end

local function _0x37(_cd, _tb, _td, _cb)
    local _st = false
    local function _upd(_v)
        if _v then
            _0x8:Create(_tb, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(180, 30, 30)}):Play()
            _0x8:Create(_td, TweenInfo.new(0.2), {Position = UDim2.new(1, -21, 0.5, -9), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        else
            _0x8:Create(_tb, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 58)}):Play()
            _0x8:Create(_td, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9), BackgroundColor3 = Color3.fromRGB(180, 180, 180)}):Play()
        end
    end
    local _ck = Instance.new(_0xD("\84\101\120\116\66\117\116\116\111\110"))
    _ck.Size = UDim2.new(1, 0, 1, 0) _ck.BackgroundTransparency = 1 _ck.Text = ""
    _ck.Parent = _cd
    _ck.MouseButton1Click:Connect(function()
        _st = not _st _upd(_st)
        if _cb then _cb(_st) end
    end)
    return _upd
end

local _0x38 = false
local _0x39 = false
local _0x3A = false
local _0x3B = false
local _0x3C = false

local _0x3D = {
    Murderer = Color3.fromRGB(255, 0, 0),
    Sheriff  = Color3.fromRGB(0, 100, 255),
    Innocent = Color3.fromRGB(0, 255, 0)
}

local _c1, _t1, _d1 = _0x36(_0xD("\65\105\109\98\111\116\32\83\104\105\102\116\108\111\99\107"), _0xD("\77\105\114\97\32\110\111\32\77\117\114\100\101\114\101\114\32\99\111\109\32\97\114\109\97\32\100\111\32\83\104\101\114\105\102\102"), Color3.fromRGB(255, 60, 60))
_0x37(_c1, _t1, _d1, function(_v) _0x38 = _v end)

local _c2, _t2, _d2 = _0x36(_0xD("\65\117\116\111\32\80\101\103\97\114\32\65\114\109\97"), _0xD("\80\101\103\97\32\97\32\97\114\109\97\32\100\111\32\83\104\101\114\105\102\102\32\110\111\32\99\104\195\163\111"), Color3.fromRGB(60, 150, 255))
_0x37(_c2, _t2, _d2, function(_v) _0x39 = _v end)

local _c3, _t3, _d3 = _0x36(_0xD("\82\97\103\101\32\83\104\111\111\116"), _0xD("\65\116\105\114\97\32\97\116\114\97\118\195\169\115\32\100\97\115\32\112\97\114\101\100\101\115\32\110\111\32\77\117\114\100\101\114\101\114"), Color3.fromRGB(255, 150, 0))
_0x37(_c3, _t3, _d3, function(_v) _0x3A = _v end)

local _c4, _t4, _d4 = _0x36(_0xD("\65\117\116\111\32\70\97\114\109\32\67\111\105\110\115"), _0xD("\84\101\108\101\112\111\114\116\97\32\101\109\32\99\105\109\97\32\100\97\115\32\109\111\101\100\97\115\32\100\111\32\109\97\112\97"), Color3.fromRGB(255, 215, 0))
_0x37(_c4, _t4, _d4, function(_v) _0x3B = _v end)

local _c5, _t5, _d5 = _0x36(_0xD("\69\83\80\32\82\111\108\101\115"), _0xD("\86\101\114\109\101\108\104\111\61\77\117\114\100\101\114\101\114\32\124\32\65\122\117\108\61\83\104\101\114\105\102\102\32\124\32\86\101\114\100\101\61\73\110\110\111\99\101\110\116"), Color3.fromRGB(0, 255, 100))
_0x37(_c5, _t5, _d5, function(_v) _0x3C = _v end)

-- BOLHA FLUTUANTE
local _0x3E = Instance.new(_0xD("\73\109\97\103\101\66\117\116\116\111\110"))
_0x3E.Size = UDim2.new(0, 55, 0, 55)
_0x3E.Position = UDim2.new(0, 20, 0.5, -27)
_0x3E.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
_0x3E.BorderSizePixel = 0
_0x3E.Image = _0xD("\114\98\120\97\115\115\101\116\105\100\58\47\47") .. _0xE
_0x3E.Visible = false
_0x3E.Active = true
_0x3E.Draggable = true
_0x3E.Parent = _0x27

local _0x3F = Instance.new(_0xD("\85\73\67\111\114\110\101\114"))
_0x3F.CornerRadius = UDim.new(1, 0)
_0x3F.Parent = _0x3E

local _0x40 = Instance.new(_0xD("\85\73\83\116\114\111\107\101"))
_0x40.Color = Color3.fromRGB(255, 60, 60)
_0x40.Thickness = 2
_0x40.Parent = _0x3E

local _0x41 = Instance.new(_0xD("\84\101\120\116\76\97\98\101\108"))
_0x41.Size = UDim2.new(1, 0, 1, 0)
_0x41.BackgroundTransparency = 1
_0x41.Text = "A"
_0x41.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x41.TextSize = 22
_0x41.Font = Enum.Font.GothamBold
_0x41.Visible = false
_0x41.Parent = _0x3E

task.spawn(function()
    task.wait(1.5)
    if not _0x3E.IsLoaded then
        _0x3E.Image = _0xD("\114\98\120\97\115\115\101\116\105\100\58\47\47") .. _0xF
        task.wait(1.5)
        if not _0x3E.IsLoaded then
            _0x3E.Image = ""
            _0x41.Visible = true
        end
    end
end)

_0x32.MouseButton1Click:Connect(function()
    _0x28.Visible = false
    _0x3E.Visible = true
end)

_0x3E.MouseButton1Click:Connect(function()
    _0x28.Visible = true
    _0x3E.Visible = false
end)

-- ROLES
local function _0x42(_p)
    local _ch = _p.Character
    if not _ch then return _0xD("\73\110\110\111\99\101\110\116") end
    local _bp = _p:FindFirstChild(_0xD("\66\97\99\107\112\97\99\107"))
    if _bp then
        if _bp:FindFirstChild(_0xD("\75\110\105\102\101")) or _ch:FindFirstChild(_0xD("\75\110\105\102\101")) then return _0xD("\77\117\114\100\101\114\101\114") end
        if _bp:FindFirstChild(_0xD("\71\117\110")) or _ch:FindFirstChild(_0xD("\71\117\110")) then return _0xD("\83\104\101\114\105\102\102") end
    end
    return _0xD("\73\110\110\111\99\101\110\116")
end
local function _0x43() return _0x42(_0x4) end

-- ESP
local _0x44 = {}
local function _0x45(_p, _sp, _r)
    if not _sp or _sp.Z <= 0 then
        if _0x44[_p] then
            for _, _o in pairs(_0x44[_p]) do if _o then _o.Visible = false end end
        end
        return
    end
    local _col = _0x3D[_r] or _0x3D.Innocent
    if not _0x44[_p] then
        local _bx = Drawing.new(_0xD("\83\113\117\97\114\101"))
        _bx.Visible = false _bx.Color = _col _bx.Thickness = 1 _bx.Filled = false
        local _tx = Drawing.new(_0xD("\84\101\120\116"))
        _tx.Visible = false _tx.Color = _col _tx.Size = 14 _tx.Center = true
        _tx.Outline = true _tx.OutlineColor = Color3.fromRGB(0, 0, 0)
        _0x44[_p] = {box = _bx, text = _tx, role = _r}
    end
    local _dt = _0x44[_p]
    if _dt.role ~= _r then
        _dt.role = _r
        _dt.box.Color = _0x3D[_r] or _0x3D.Innocent
        _dt.text.Color = _dt.box.Color
    end
    local _ch = _p.Character
    if not _ch then return end
    local _hrp = _ch:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
    local _hd = _ch:FindFirstChild(_0xD("\72\101\97\100"))
    if not _hrp or not _hd then return end
    local _hs = _0x9:WorldToViewportPoint(_hrp.Position)
    local _hds = _0x9:WorldToViewportPoint(_hd.Position)
    if _hs.Z <= 0 or _hds.Z <= 0 then
        _dt.box.Visible = false _dt.text.Visible = false return
    end
    local _h = math.abs(_hds.Y - _hs.Y) * 1.8
    local _w = _h * 0.6
    local _bx = _hs.X - _w / 2
    local _by = _hds.Y - (_h * 0.2)
    _dt.box.Size = Vector2.new(_w, _h)
    _dt.box.Position = Vector2.new(_bx, _by)
    _dt.box.Visible = true
    _dt.text.Text = _r
    _dt.text.Position = Vector2.new(_hs.X, _by - 18)
    _dt.text.Visible = true
end

local function _0x46(_p)
    if _0x44[_p] then
        for _, _o in pairs(_0x44[_p]) do if _o and _o.Remove then _o:Remove() end end
        _0x44[_p] = nil
    end
end

local function _0x47()
    local _bt = nil local _bd = math.huge
    for _, _p in ipairs(_0x3:GetPlayers()) do
        if _p ~= _0x4 and _p.Character then
            if _0x42(_p) == _0xD("\77\117\114\100\101\114\101\114") then
                local _hrp = _p.Character:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
                local _hm = _p.Character:FindFirstChildOfClass(_0xD("\72\117\109\97\110\111\105\100"))
                if _hrp and _hm and _hm.Health > 0 then
                    local _d = (_0x9.CFrame.Position - _hrp.Position).Magnitude
                    if _d < _bd then _bd = _d _bt = _p end
                end
            end
        end
    end
    return _bt
end

-- LOOP PRINCIPAL
local _0x48 = _0x6.RenderStepped:Connect(function()
    local _mc = _0x4.Character
    if not _mc then return end
    local _mh = _mc:FindFirstChildOfClass(_0xD("\72\117\109\97\110\111\105\100"))
    if not _mh or _mh.Health <= 0 then return end
    local _mr = _0x43()

    if _0x3C then
        for _, _p in ipairs(_0x3:GetPlayers()) do
            if _p ~= _0x4 and _p.Character then
                local _hm = _p.Character:FindFirstChildOfClass(_0xD("\72\117\109\97\110\111\105\100"))
                if _hm and _hm.Health > 0 then
                    local _r = _0x42(_p)
                    local _hrp = _p.Character:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
                    if _hrp then
                        local _sp = _0x9:WorldToViewportPoint(_hrp.Position)
                        _0x45(_p, _sp, _r)
                    end
                else
                    if _0x44[_p] then
                        _0x44[_p].box.Visible = false
                        _0x44[_p].text.Visible = false
                    end
                end
            end
        end
    else
        for _, _d in pairs(_0x44) do
            _d.box.Visible = false _d.text.Visible = false
        end
    end

    if _0x38 and _mr == _0xD("\83\104\101\114\105\102\102") then
        local _tg = _0x47()
        if _tg and _tg.Character then
            local _th = _tg.Character:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
            if _th then
                local _la = _th.Position
                local _mp = _0x9.CFrame.Position
                if (_la - _mp).Magnitude > 1 then
                    _0x9.CFrame = CFrame.lookAt(_mp, _la)
                end
            end
        end
    end

    if _0x39 then
        for _, _o in ipairs(workspace:GetChildren()) do
            if _o.Name == _0xD("\71\117\110") or _o.Name == _0xD("\71\117\110\68\114\111\112") then
                if _o:IsA(_0xD("\66\97\115\101\80\97\114\116")) then
                    local _mhrp = _mc:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
                    if _mhrp then
                        local _d = (_mhrp.Position - _o.Position).Magnitude
                        if _d < 50 then _mhrp.CFrame = CFrame.new(_o.Position + Vector3.new(0, 2, 0)) end
                    end
                end
            end
        end
    end

    if _0x3A and _mr == _0xD("\83\104\101\114\105\102\102") then
        local _tg = _0x47()
        if _tg and _tg.Character then
            local _th = _tg.Character:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
            local _tl = _mc:FindFirstChildOfClass(_0xD("\84\111\111\108"))
            if _tl and _th then
                local _mhrp = _mc:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
                if _mhrp then _mhrp.CFrame = CFrame.lookAt(_mhrp.Position, _th.Position) end
                _tl:Activate()
            end
        end
    end

    if _0x3B then
        local _mhrp = _mc:FindFirstChild(_0xD("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116"))
        if _mhrp then
            for _, _o in ipairs(workspace:GetDescendants()) do
                if _o:IsA(_0xD("\66\97\115\101\80\97\114\116")) and (_o.Name:lower():find(_0xD("\99\111\105\110")) or _o.Name == _0xD("\67\111\105\110") or _o.Name:lower():find(_0xD("\109\111\101\100\97"))) then
                    local _d = (_mhrp.Position - _o.Position).Magnitude
                    if _d < 100 then
                        _mhrp.CFrame = CFrame.new(_o.Position + Vector3.new(0, 3, 0))
                        break
                    end
                end
            end
        end
    end
end)

_0x3.PlayerRemoving:Connect(function(_p) _0x46(_p) end)
_0x4.CharacterRemoving:Connect(function()
    for _p, _ in pairs(_0x44) do _0x46(_p) end
end)

getgenv().AssasinHubConnection = _0x48
