-- deobf by discord.gg/speedhub
print("deobf by discord.gg/speedhub")
print("deobf by discord.gg/speedhub")
print("deobf by discord.gg/speedhub")
print("deobf by discord.gg/speedhub")
print("deobf by discord.gg/speedhub")

if _G.HondubetRunning then return end
_G.HondubetRunning = true

repeat task.wait() until game:IsLoaded()

-- ===================== HONDUBET - STARTUP SPLASH =====================
do
	local Players = game:GetService("Players")
	local LP2 = Players.LocalPlayer
	local TweenService2 = game:GetService("TweenService")
	local SoundService2 = game:GetService("SoundService")

	local splashGui = Instance.new("ScreenGui")
	splashGui.Name = "Venom.vs"
	splashGui.ResetOnSpawn = false
	splashGui.DisplayOrder = 999
	splashGui.IgnoreGuiInset = true
	if not pcall(function() splashGui.Parent = game:GetService("CoreGui") end) then
		splashGui.Parent = LP2:WaitForChild("PlayerGui")
	end

	local overlay = Instance.new("Frame", splashGui)
	overlay.Size = UDim2.new(1,0,1,0)
	overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
	overlay.BackgroundTransparency = 0
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 1

	local tapHint = Instance.new("TextLabel", splashGui)
	tapHint.Size = UDim2.new(1, 0, 0, 20)
	tapHint.Position = UDim2.new(0, 0, 1, -36)
	tapHint.BackgroundTransparency = 1
	tapHint.Text = "CLICK TO SKIP"
	tapHint.TextColor3 = Color3.fromRGB(0, 180, 255)
	tapHint.Font = Enum.Font.Gotham
	tapHint.TextSize = 11
	tapHint.ZIndex = 10
	tapHint.TextXAlignment = Enum.TextXAlignment.Center

	local skipZone = Instance.new("TextButton", splashGui)
	skipZone.Size = UDim2.new(1,0,1,0)
	skipZone.BackgroundTransparency = 1
	skipZone.Text = ""
	skipZone.ZIndex = 9

	local container = Instance.new("Frame", splashGui)
	container.Size = UDim2.new(0,320,0,120)
	container.Position = UDim2.new(0.5,-160,0,-140)
	container.BackgroundTransparency = 1
	container.BorderSizePixel = 0
	container.ZIndex = 2
	container.ClipsDescendants = false

	local titleSplash = Instance.new("TextLabel", container)
	titleSplash.Size = UDim2.new(1,0,0,70)
	titleSplash.Position = UDim2.new(0,0,0,0)
	titleSplash.BackgroundTransparency = 1
	titleSplash.Text = "HONDUBET"
	titleSplash.TextColor3 = Color3.fromRGB(255,255,255)
	titleSplash.Font = Enum.Font.GothamBlack
	titleSplash.TextSize = 48
	titleSplash.TextTransparency = 0
	titleSplash.ZIndex = 3
	do
		local g = Instance.new("UIGradient", titleSplash)
		g.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 220, 255)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 245, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 140, 255))
		})
		local st = Instance.new("UIStroke", titleSplash)
		st.Color = Color3.fromRGB(90, 230, 255)
		st.Thickness = 2.2
		st.Transparency = 0.1
		local st2 = Instance.new("UIStroke", titleSplash)
		st2.Color = Color3.fromRGB(0, 200, 255)
		st2.Thickness = 8
		st2.Transparency = 0.55
	end

	local subSplash = Instance.new("TextLabel", container)
	subSplash.Size = UDim2.new(1,0,0,24)
	subSplash.Position = UDim2.new(0,0,0,72)
	subSplash.BackgroundTransparency = 1
	subSplash.Text = "ON TOP"
	subSplash.TextColor3 = Color3.fromRGB(0, 200, 255)
	subSplash.Font = Enum.Font.Gotham
	subSplash.TextSize = 13
	subSplash.TextTransparency = 0
	subSplash.ZIndex = 3

	local fragments = {}
	local fragTexts = {"CY","CLO","OO","O","HU","B"}
	local fragColors = {
		Color3.fromRGB(80,160,255),
		Color3.fromRGB(140,100,255),
		Color3.fromRGB(200,225,255),
		Color3.fromRGB(100,80,255),
		Color3.fromRGB(80,180,255),
		Color3.fromRGB(160,120,255),
	}
	for i, txt in ipairs(fragTexts) do
		local frag = Instance.new("TextLabel", splashGui)
		frag.Size = UDim2.new(0,90,0,60)
		frag.AnchorPoint = Vector2.new(0.5,0.5)
		frag.Position = UDim2.new(0.5, (i-3.5)*52, 0.5, -30)
		frag.BackgroundTransparency = 1
		frag.Text = txt
		frag.TextColor3 = fragColors[i]
		frag.Font = Enum.Font.GothamBlack
		frag.TextSize = 44
		frag.TextTransparency = 1
		frag.ZIndex = 5
		frag.Rotation = 0
		table.insert(fragments, frag)
	end

	local function playSound(id, pitch, vol, parent, delay)
		task.delay(delay or 0, function()
			local s = Instance.new("Sound")
			s.SoundId = id
			s.PlaybackSpeed = pitch
			s.Volume = vol
			s.Parent = parent
			s.RollOffMaxDistance = 0
			s:Play()
			game:GetService("Debris"):AddItem(s, 3)
		end)
	end

	local function playGlitchImpact()
		playSound("rbxassetid://1588058260", 1.0, 0.9, SoundService2, 0)
		playSound("rbxassetid://8627516764", 0.8, 0.7, SoundService2, 0.02)
		playSound("rbxassetid://1588058260", 1.4, 0.5, SoundService2, 0.05)
		playSound("rbxassetid://8627516764", 1.2, 0.4, SoundService2, 0.1)
	end

	local function playWhistle()
		local WHISTLE_ID = "rbxassetid://4612414100"
		playSound(WHISTLE_ID, 2.2, 0.7, SoundService2, 0)
		playSound(WHISTLE_ID, 1.7, 0.8, SoundService2, 0.07)
		playSound(WHISTLE_ID, 1.2, 0.9, SoundService2, 0.15)
		playSound(WHISTLE_ID, 0.85, 0.9, SoundService2, 0.24)
		playSound(WHISTLE_ID, 0.55, 0.7, SoundService2, 0.34)
		playSound(WHISTLE_ID, 0.3, 1.0, SoundService2, 0.5)
	end

	local function doShatterEffect()
		pcall(playGlitchImpact)
		local flash = Instance.new("Frame", splashGui)
		flash.Size = UDim2.new(1,0,1,0)
		flash.BackgroundColor3 = Color3.fromRGB(255,255,255)
		flash.BackgroundTransparency = 0.3
		flash.BorderSizePixel = 0
		flash.ZIndex = 8
		TweenService2:Create(flash, TweenInfo.new(0.18), {BackgroundTransparency=1}):Play()
		game:GetService("Debris"):AddItem(flash, 0.3)
		titleSplash.TextTransparency = 1
		local RunService2 = game:GetService("RunService")
		for i, frag in ipairs(fragments) do
			frag.TextTransparency = 0
			local dirX = (i - 3.5) * 60 + math.random(-80, 80)
			local dirY = math.random(120, 280)
			local rot = math.random(-180, 180)
			local startPosX = frag.Position.X.Offset
			local startPosY = frag.Position.Y.Offset
			local t = 0
			local conn
			conn = RunService2.RenderStepped:Connect(function(dt)
				t = t + dt
				if t > 0.8 then frag.TextTransparency = 1; conn:Disconnect(); return end
				local alpha = t / 0.8
				local px = startPosX + dirX * alpha
				local py = startPosY - dirY * alpha + 300 * alpha * alpha
				local fade = math.clamp(alpha * 1.4 - 0.3, 0, 1)
				frag.Position = UDim2.new(0.5, px, 0.5, py - 30)
				frag.Rotation = rot * alpha
				frag.TextTransparency = fade
				frag.TextSize = math.clamp(44 - alpha * 20, 10, 44)
			end)
		end
		for li = 1, 8 do
			task.delay(li * 0.025, function()
				local line = Instance.new("Frame", splashGui)
				line.Size = UDim2.new(1, 0, 0, math.random(2,6))
				line.Position = UDim2.new(0, 0, math.random(), 0)
				line.BackgroundColor3 = Color3.fromRGB(math.random(60,255), math.random(0,100), math.random(150,255))
				line.BackgroundTransparency = math.random() * 0.3
				line.BorderSizePixel = 0
				line.ZIndex = 7
				TweenService2:Create(line, TweenInfo.new(0.12), {BackgroundTransparency=1}):Play()
				game:GetService("Debris"):AddItem(line, 0.2)
			end)
		end
	end

	local splashDone = false
	local function finishSplash()
		if splashDone then return end
		splashDone = true
		TweenService2:Create(subSplash, TweenInfo.new(0.3), {TextTransparency=1}):Play()
		TweenService2:Create(overlay, TweenInfo.new(0.4), {BackgroundTransparency=1}):Play()
		tapHint.Visible = false
	end

	skipZone.MouseButton1Click:Connect(function()
		titleSplash.TextTransparency = 1
		subSplash.TextTransparency = 1
		finishSplash()
	end)

	task.spawn(function()
		TweenService2:Create(overlay, TweenInfo.new(0.2), {BackgroundTransparency=0.1}):Play()
		task.wait(0.15)
		pcall(playWhistle)
		TweenService2:Create(container, TweenInfo.new(0.45, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out),
			{Position=UDim2.new(0.5,-160,0.5,-60)}):Play()
		task.wait(0.5)
		doShatterEffect()
		task.wait(0.85)
		finishSplash()
		task.wait(0.45)
		if splashGui and splashGui.Parent then splashGui:Destroy() end
	end)

	local _t0 = tick()
	while not splashDone and (tick() - _t0) < 3.0 do
		task.wait(0.05)
	end
end

-- FALL chrome logo (custom asset)
local function _FallLoadLogoAsset()
    local b64 = "/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" ..
"AAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAA" ..
"AAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAM" ..
"ZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIy" ..
"MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAE2A3IDASIAAhEBAxEB/8QAHAAAAQUBAQEAAAAAAAAAAAAAAAEEBQYHAwII/8QASBAAAQMDAgMFAwkFCAIABgMAAQACAwQFERIhBjFBEyJRYXEHFDIVI0JSYnKBkaEkMzRzsSU1Q2OCkpPBFlMmNkVU" ..
"0fBVg/H/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EABsRAQEBAAMBAQAAAAAAAAAAAAABEQISMQMh/9oADAMBAAIRAxEAPwDHK7iq5VoLRN2UZ+jHt+qhnyOe7LnFx6kleCUikkni22lQhdYYJKiVscLHPe44DWjJKqOWEmFd7V7NbpWhslW9lJGeh3d+XRWWm9ml" ..
"mgA94qJZndcuwP0QZIgBbUzgjhyMfwgdjxJP/acxcM8PQnu22M+rEGGaSjSfBb4yy2NgwLXF/wAYXZtqs/S2Rf7Ag+ftJ8EaT0C+hm221gbW2P8A2Bevk+2DlbY/+MIPngsd4H8knZu8D+S+iPcreOVuZ/xhAoqHpbo/+MIPnfQ7wP5I0O+qfyX0QaKh626P/jCT3GgH" ..
"/wBOj/4wg+eNB8D+SNDvAr6H9xoDztsf/GEvuFv622P/AIwg+d9B8CjSf/0L6I+T7f8A/wAZF/xhIbdbetri/wCMIPnjSkxhfQrrbazjNqh/4gvDrVaXDBtcP/GEHz6jC3x3D1hl/eWuH/jCT/xHhZ5y+2sHoMIMEwULcp/Z7wnUNIYySFx5FrzsqlfPZhJTRumtVUKh" ..
"rf8ACfsfwKDOki7TwSU8ropWOZIw4c1wwQVyQGEISZQKhCEAhIUqBMpUJcIEQukUMk8gjiY573HAa0ZJVys/s1u1eGyVbmUcRGe9u78kFJQtho/ZnYYGj3upmnI54djP5Kag4P4Sp2jFAyR3i4F39UGCYS4J6L6DFisEf7u1Q/iwJRabS05Fsi/BgQfPek+CTScr6GNs" ..
"tbudtj/2BeXWWzS/vLbH/sCD57whb6/hbhuQYfbYt/8ALx/RR1T7P+GKkHQx8JP1Hkf1QYmhadcPZSCC+21+fBsoz+oVHvHDlzscmmtpnNbnaRu7T+KCJQhCAQhCAQhCAwhCEAhCEAhCEAhACmrJwxcr9JiliPZ5w6V2zR/+UEKhanQ+y+hjaDcK5z3fVZsFNw8FcLQM" ..
"A90MpHVxJ/7QYijB8FvTeHOHYyNFsi/FgXQWOxg5Fsi/2BBgWkowVvjrDYpPitsX+wLk7hXhp3xW1n+1Bg+/ghbZUcE8LzNIbSujPi0kKv3H2a0sgc621Za4cmv3BQZmhSd1sNxs0uisgc0ZwHjdp/FRiASJUgQKhCEAhCEAhCEAhCEAhCEAhCXCBEKcsnCtzvrwaeHR" ..
"DneV+zfw8VeqD2YW6ANdcKt8rurW90IMpCXC22HgrhiHb3TWfF2T/VPouGuHYxgW2P8A2BBgmCjSVv7rBYRgC2xj/QF4/wDHrAfit0f/ABhBgWELd38K8MvzqtzM+TE0qOB+GJxgUxj82Ej/ALQYmgrTq/2ZUcjXOt1ZIx3Rr+8FQ7tYq+yz9lWQFoz3XjdrvxQRmEJU" ..
"IESoQgEIQgEIQgEmUqRAqVri05aSD5FIhBbeGeP7rw/XUkr5X1VPSseyKGR5wwOGDjwVmpPaHHUcRUFUy61VvETXiSWphZM0ZHLDQMjpussRlBvY4ysxALuJLCXdT8jO3KFgqECJOSEIO0Eb5pWRxtLnuOGgdStf4Y4fpuHqZkj2NkuMje+476fIKlcAW5tTdZKyRuW0" ..
"zctz9botTs0Jqa10koGGHAygkKe31dWA95IB6KTjseWjuOJ8VarXBTNjYHgYwp2lfRyODGRj8lBnfyI4H91+i9i0Ecoz+S0000JG8bfyXJ1DEeTWhMGcfJJ/9Z/JehaXdIz+S0A0MXg1HucQ5hqooHyW8fQKQ22Q8oyr+aOHwCBRQ+AQUAWuX6hS/Jkp+gr+KGHwCX3C" ..
"HoAgoHyXL9RL8ly/UV/9wi8Aj3CLoAmigi1yfUR8ly/UV+9wj8Aj3CPwCaKD8lSn6C9C0SfUV99xj8Al9yjHQIKGLRJ9RKLRJ9RXv3NngEe5s8Agows7s7xj8l6Njc4Y7EfkruKZg6Be2RMaeQUGd1PD5a0kQYKr1XbpqZ5LdQHUFbQ+Jjm7tGFW75R0r4yWgalRg3GH" ..
"DUd1oJKuCMCthGrI+mB0WSlpacEbr6Lq4jDWlmBpccLE+MLc22cR1MTG6YnntGeh/wD0oK+kKU80IBCEIBCEIBPrTa6m73COkpmF0j/yA8UyaMnAHNbHwdZmWOxsnkYPfaoaiSNwOgQPrBw3b+HadojiE1aR3pSNz6eAVmhoamqwX5xjkF2s1tfPIHyDLj49Fe7daWtY" ..
"CWhBTorLgDMRz6Jwyzaf8Iq/toGAbNGF7NJCBu0ZQUMWd3SL9F7Fncf8P9FdTBCOgXkRxA7YQU0WZ31B+SQ2g9Y8/groY4vJeezYOQCCkPtI6wprLZmkHMRC0aOGJ/NgXqSggkbgsAQZTNaHRnMZIIUdVNa+N9PXxNkieMFrm5BWl3G1mPJDe70Kqd2oBJC7DQHDqgwr" ..
"jbg5tmcLhQAmgkOC3n2Z/wDwqVhfQAhjqqeottY0OilBa4FYlfrTLZLxPRSg9x3dJ6t6FBFpUIQCEIQCEIQCEIQCAhK3OoAbkoLJwjw58uVpfOC2ih3kd4+QWv0MJLGUtDEIoWDDWtGMBV2xURtvDdJTsZiSXvv9StB4cpmRxMa7GTzKDzS8PvlALhqcnzeHHM/wlcKO" ..
"ajiLWNaC7qpoRxOaO6MIM3+RnN27L9EotJzgxfotBkghHQJuY4AeQU0UptnBG8P6IdYXu5QbK9RMhGMAJyGMxs0KjNZuHXhuex/JRVRZXxZIBaVrr443DDmjCgrxQxdlqY1BlFwo4K2B9HWxB8T9t1ivEtkfY7tJTEExHvRuPVq+guIqTs2AsA3GdlmnHtI2ssTKwNBl" ..
"gcO95HYoMvQEHBSIFSIylQCEIQCQpUIBCEIBIUqRAoCtPBvDYvda6apBFFDu8j6R8FV2tLnADmTgLY7JRG18PU8EbO+QHPx1cfFBYqKBzgylpIhHE0YAbtgKfpuHnvaMtc4rrw7FFFDHqALnbuOFe6GppWOEbGgnxQUocOSAZMB/JL8ilv8AhfotKLGOG4BCayQQ5+EI" ..
"KALTj/B/RdBZtQ2hV1EUIO4C6sjiB2aFBRDYHn/A/RcpOHHgZ7FaU1jccggxxuGC0KjJZ7M6LJDSCFBXS3U1xp30VbGHsft5ha5daGNpBa3uk7rPeI6ZsJe9jd27oPnniGyy2K6S0sg7vON31mqIWpcf0za+wx1zW/OU7xqP2SstQCEBCAQhCAQhCASFBS4QCEIQCRKh" ..
"AIQhAJQvK9t/6QaFwKDDZKqZo73a/nsrzZ68uc4kacuzhUngVwfY66Mn4Xh2PwU7b5dBODvlBqVuqTUvZGH4aRjKn6SoZRSlpOSOqz/hqtLpQCdwrBUVB7YHKyLsLox45rm+4+BVZp6kkDddn1WkKiYdcD4rwbiR1UFJWAHYri6uKCwG5HxK8G6Y64VbdXFcH1kh5BUW" ..
"k3jT9Jefl0D6Sp76p/U4TZ9YRnL0F5/8gaPpo/8AIm/XWfOrueXlczXAH40Gjf8AkLPr/qgcQs+v+qzj38fXR7+Oj0waSOIWfXXocQMP01m3v32z+a9CuI5PKDSRfo/rr18ux/XWbtr3fW/VexcHDm79UGiG9MJHeXWK5te74ln8Vbn6Sew1pbvqUF9fcIxEcu6KmXm6" ..
"aHFrXc+a4zXMluNSq12uGZSS5Bzr68GVpzvnmVlXtAk7W9QHO/Y7/mrpJUmepDc8lQOMpO0v7wDkMja1UVxCUrygVCRKgEISgZQWPgqy/LF+jEjSaeD5yT8Oi1+kb75W5xiNmwVd4JtfyVwg6pkGmasdqHjp6K02dhBa0DrkoLrag2CNudlbbfKZsEfABsqXSOc9zWBW" ..
"+ne2kpWjkSFBJSTNjG5UfPXgHAKj6qtLicFRz6jvbkoJOSuJPNcDVuzzUa6pHivJqN0EoKs+K7Mqj4qGE/kurKjdBYYKkZG6kGTNcAqzDOM81J084LQcqiWkjbNGWuGQVTrxR9i85Gx2VphqQXacqHvwzET1QZbdoTDOZWjkVSvaHaxcbRFd4mZlpzplI6sWjXaPtInk" ..
"DcKvwQsqoJ6CYZjmaWEFBgxSZT25UT7fcKilkBDonlu6Z4QCEIQCEIQCEIQC7UwzPH94LiusTtL2uzyIKDZzUdmKfPl/RWe1XIMa0auZVMnf2lDSTj4XMa7P4JzT1DmtaQdgUGtUsrWRNqXHZS7L0HxjBVOt9V7xZGAHJC9wVZAwTuFBaJLi5xzqXIVpJ5qE95J5FeDV" ..
"6TzUFmhrw0jJUlHc49OM7qmsq8jYroawsGcrQss9yAdsQuFbXsdQOGd1WJa8l2SVxlrXSQubnbCgi7pU9pG7JzgFUK/EScNXEHkGHCslfUaY3nPiqrdpB/4tcCerSAqMrxkLyvfReEC4QhCAQhJlAIRlCAQhCAQhA5oHFOP2iL74WzundCYGA4BwsZpzpmY7oHBa7XPB" ..
"jppW8i1pz+CC22q5mPQ0u3VyppxTNjqXOyHdAsogqS0xu81eoKh1RaISCe6FKLm28l7Rg9Fykr3uOdSrFNUENG6dGoOOaKmBWuzu5O4K8A7lVcVeDuU4ZUh2N0RcWXFmkbrnJc2jkVVnV2gYym77hk80Fpr69j6Q774WcXmpMjZcnoVMy1z3xuGdsKpXOfuSlUVi84fw" ..
"tcGHkGFZEVqt3kDeF7gc824WVkIPASoQgEISIFQkSoESoSZQKkQlQIlQhAIQhAi6N5rwvTSgvHs/mPvFdAeTog5WekGJyPtFU3gWQMvjmZ+OIhXOmGKt4PMOQWPhfJuPZeLlb7pTupnNJGMqncOO7PiGEfWeFpfFlOGxQvAxkBSiJoWl7M4XSo7rU6scPaU523Cb3Vpi" ..
"ygi5Je9heNWeqbvedR3XN02kc0U8dIxjclMZq0nZmwXB8hedym8jiAiEmqDuS5R0tW7PdBTyKnfVSaQNvFPHUluoWh1TICccgVRAGSZ/wgpOwqDvpcntVxBSw92mp2+pCjJL9UP3GB5KjqYJx0KQRzDoUz+WKgndy9tvEo5nKBz863o5KJ3heGXn6zQQuzbjTS7PaAgV" ..
"tU8c11bV+K5EU792PXhzPqnKaJCOuxgYT2OtaVAgHqurHFvVQTz5ssJHgqncpiZTk9VNyThlMd98Kq1kuXuJQFKcyySnkwZys4ulV75cqioP03nB8lfa2oFNw/VS50uc0geeVm5+EZQcjzSJTzSIFCQoQUCqSsduddLxTUbAT2rwDjoOqjRutE9mFvDamru0re5AzQwn" ..
"6xQX6uMcXY0UQAjhaGgDyUvbYQyHWeZ5Kv0+ampMh5ucrZTxDEcYHhlBP2CkMsweRsFLXOYNfobtgJxZqYU1BrI3IUNcJi6cnOygbyzEDcpi+oOea8VM+OqYmQk80D5ry4808gh1jJUXHKG8ynkVcGADIQSgoxpym0zDEdkguZxgELjNViQc1R7ZUEHYqSparIAKr/aE" ..
"E4KcwTEYyVBaGy8nBFwb21KXDwTGnm1tAz0UhE4SQOZjJQUari3e09VU6kOpqsOHIlXu6UxjkJI6qpXim21AIM39pdpEdVBd4h83UDQ/H1gs+6LcLrQNvfClXR4zNG3XHtyIWIOaWnB2I2IVHnKVIlCBEIKUIAIQkQKvY5LwF7HwkINRt0wqeEaKQc2t0H1Cc07i+nd5" ..
"bqK4SkE3CM7CcmKXb8Qpa2t1ROb5INC4MiNZZph9JmfyXWNnz7m+a6ezPDmVUR6grqGBt2lZ9oqD06PS0HCjpnkPwCp2tiMcYONlW6g/OIHlPIc813qXjA3UfA/BXaV5dhFN5pCCu8YPur3fZKavBLwE5qX9jbn+bcIin3J/zDt+eVW+IXiHhORp5yOAU9cnZhwqtxpI" ..
"I7PRw53LtSooPILz1XojAXjKBUJMoygVIjKMoBCEIBCEYQLhHVCOqDqw7rUKSU1HDlFLnOIxv+iy5mM7rReFn9twm4ZyY3kY8AgmaY6oCfArROGITV2GUjcsys8tw1ROGei0v2dO1UdbCR9E7IOVIwk48E5lbpBXmibmsczH0iE7uEXZDkoqFkfh+E4p5NwmE7j2pXan" ..
"fgoHdQ/vDCZOkOrC7SvyQmp3eoh639w4+Sp90eewmz5q2zO7OhefJUq6vxTuBO5VFa4icWcIzeL3gBZw5X7jKQs4fpYhtqkyqA5UeUJEIFSISoAIQhAIwhCAwkSoQIhKhAYQhCAShIlbzQWLg92OI6XfnkfotBaNNwkWdcKHHEVEPtrRXnFxd6IJ20EMv9KfFwWscVgG" ..
"1xO65WS2/a9URzzcFrXFLv7HhPooOHCw1QOTHiBuHuCecKvHu7vxTK/O1SOQVSR3eKbOdkrvL8RTfmUC9Mrno7R4b4rqRgJWgsifJjkNlBxuFwZb6fsoT38buVVlqZah5LnFxPUrrXSukndk5Ci6qpMTdMfxeK1B3dG0Elzwm7nU4O71HSyRs79VVhg8M/8AS4/KNmYc" ..
"GWVx8mqiUMsGdnpO1h6P/VRfytZh9GY/6UfK1mPJk35IJbWzo8I1Do4KI+U7OdtcrfVq9Cstjj3a3T6ghQTLJHN5E/gU4ZVSs6/moNssXNlaw/6l2bUSt5SNd+KCfZcCPiC7C4xHnzVfbVTHYsaV6M0rm/uv1VE/2/vGwdgKKuUQje2JrtT3HfHQJtGakkBg0+eV4ray" ..
"mtMTpZpe1qSO63O+VBE8V1rW08VCx2/xOCpzjjbyTqrqZKuofPKcuec+iaOQeUiEIBKhHVB6Y0uOAMk7ALabbQCx8LUlGBiWRuuT1Kzbgy0m78SUsRbmJju0k9AtUr5Pebh3d2N2AQP7PT5LXEfCMq3WiE1FWwYzuq/bo+zphnmVd+G6bD+0I2HVQT9Y8U1G1jTg4VSq" ..
"pQA4kqZu9TqfjI2VYrZeYygY1D9Tzvsmxkwlkfud02c7fmg7iU+KPeCOqZukHiuZl80EiKo+K6NqCeqimyjxXVsmeqCVbLnqnEch23UVHJuN08ifkIJ6jnw4DKm6WTS4HkCqrTy6XDdT1JLqjByg7Xik1xl7RzCpdwh1wuGNwtBz29KR1AVRuNOWTObjYoKLRzGmuGk/" ..
"C84IWVca2j5I4lqImtIilPas8MFaxc6cxzknYg5CrntBtouXD0FzjbmWlOl+PqlUZOhKUiBSgIQgEIQgF6HJeV6HI+iC/wDAZ12i4xeGl2FP2vaQtPmq5wA/ENxb9hqsNtP7W71QaH7OZNFxmbyy0p/McX6TzcongU6LvLv0KkJ3/wBuv+8oJm44NKCqlUn50q0Vz9VI" ..
"3foqrPvIVARuTkHKZt5hPI98KjyGfOAlJdTij0hOhGSRsmd1BDA3zQU65c2N81TeO5Pn6SIfRjyrpcf4po8wqHxwc3aNueUQVFUcvC9u5rygRCVCBEJUIEQlQgEIQgEIQg9sV+4GcXWiui8DqVBZzV64APzNwb9kILPavjweuVoPs/l0VVW3PMFZ5bP34HmrxwU/TcKk" ..
"eSCVo34ubxn6ZUldd4wVEUhxdHH7ZUtcnZiCyKzP+8SROwUs/wC8K5N5qh3nUV4DDr/FeohkruI+8DhBwujw2j0hUe7k6g3zVxuudIaVTrvj3hg81RUOOpAI6GLPIEqkuzlWzjl+q408fQRKpO5oPKUpEqBEJUIBCEIDCQpUIBCEIEKUJEoQCEIQJlemryvQQTvCpA4i" ..
"ovvrRJT+3nzCzfhpxF/oj/mLSJtq78EE5R7XSiP2gtT4pkBs8AHgFllNtX0R8wtF4gl12uEeACg6cMyaYHb88ppeX5e8pLFLogwuFzfqLigg3jJJXANynLjsV4Y3Iyg8FmQnUlM59A7SMbJI25UxBEHW+TA30qKzGrpnsLyeirkriHzSH/DBKv1ypu5IqLWxmOkrz9gr" ..
"URRJqh1RK6SRxLnFc9XmvB2XguKDtrRrC4akmUDguCTUPNcA4+KXUfFB2yF0bM9p7r3D0Kba0utBIMuNVHu2d49SnDb7XNGO2J9QofX4lGtBLyXuukaR27gD4bKOlldI7U9xcfElcdS8koPRd4LmglCAQhCASjHVInNBSSV1dBSxDL5Xhowg072eW4W7h+ou0jMS1B7O" ..
"PPgp+hiM1QT4leqyOOgoaS2Q4DYIwDjqVIWanwdWOQQTVPEBpYByV5t8YpbaHYwXBVa10xmnaMdVaK+UQ0wjHQKCErZtRcSoCrkzndSFZNzUJM/JOUVykemz3YG3NenOJKQN6lVHLS47ryQxvxPCb11xbENEZ36lQktW9xyXlQWMaHfC8Ia8tdg8lW4qmRpyHlSlPXdq" ..
"NL+aCaidkggp3C/YBRkEnIJ4x+MIJSN+43UzQTcgSq9E/YKTo5dLhuirZSPw8AnZyYXqk+kAutNJqa0g8lITxipos8yBuoMyvdLriMgG4UJRMZWU9Tbp9452FuFdK+myJI3DxwqPK11FcA4bYctIxe6UEltuVRRygh0Ty3f9EyWj+060t7anvMI7kw7OTH1gs5IQCEmU" ..
"qAQhCAXodV5XpvVBdeAcl1eP8pv9VabYP21w81V+AP3tf/JH9VaLX/HPHmguvBrsXmT0KeTvPy08/aTDhI6bxJ90p5J3rs4/aKlExO7NPjyVfl+NTUzvmceShZT3ig5DZwT2DdwTJvxJ/SjLwgkY2bg4UZeG4c0+ammNw0FRV6GNJ80FGuAzXsHms840J+X3jwjatGuH" ..
"94M9VnXG408Qu842qisu5ryldzXlAqEIQCEIQCEIQCEiECpEqRB0ZzV39n571cPsKjs5q7+z4/PVo/y0Fotv8V/qV04PyLpUeipls/iv9SunCfdulR6IJCEhtxfv9JSVa/VCFENP7e4/aUhVPzEFkQ83xlc2fEvcpy5eGfEqHlOMkKQbHkZTKlGXBSrW9wIIG8Nw5o81" ..
"SbqP25o81fLyN2FUS6b3BqooHGjv7bA8Imqsu5qy8aDF9P8ALaq0eaDylQhAIQhAIQhAIQkygVBSZSoESoQgEIQgRegvK9BBLcPEi+URH/sC0uo2uA8ws04d3vlF/MC0yr2uDfRBNw497oz4EK73eTXRRjPRUWJ37TSeoVxuL80rfRQerXJoj59F4rZNQOSm9DJhoRVO" ..
"2KKajcFeoxsvA5LtHywg6RtJ5KWpCexczxCj4Wd5TdHT7tIHqiKxcqI9i/bcZWeXWkcbbciBu1hOFuF5trWxtlAw14WeXK3iCoe4s1QvBa8eSD59cceq5nyWsS+zmz1Rc6Cskh1HIBwcJu/2VUue7dXY+6FRl6Fpw9llL1urv9oXtvsut4OX3N5HoEGXIwtai9m9gYfn" ..
"aud/o5dj7POGs92Sp/F6DH8IWxt4A4bbjIld/rKdR8HcKRYzRF58ySgxJC3J3C3ChGPkwDzUbWcDcN1IPYB8Dzyw7ZBj6RW3iDgastMbp6d/vNOOZA3aqmQgAhIEqASJUiBQCVe/ZpahLdZbpMPmaRuWk/W6KjsaXOAHM7Aea2W2UHyBwhTUuMVFQO0k233QdTI6rrnS" ..
"O3y7KtVvi0QtHIlV610+qRpx6q3UMWqVoA5bILPYaYNb2ruQXm7VGXkA7KRja2ktwHIkKtVs2XO3UEbVyaid1Gy77eKdSnUSuGMu5IrkItuSZ3GYwQHHMqVDThV29yjUQOiqIKaU5JJTV88bDl52RM4jJPIKBnqAwSTyHuN5BBZIJoZBlrl2Euh4IKrNNVbMmjPcf+in" ..
"InCRoKCy0shexrsqTjdqCh7N343sJ3HJS0RwMKVT2J/JPYZMOG6jGnDk8hcoLNQTggDKsFG8Oyw8iFTqKXQ8bqx0s+zXA7ohne6Ts5NYGxWf8QUmHdoB1WsXKIVVFqAycLP7rTdpFI0jvBUVGro233hittzt5Gs1xeTgsRe1zHljhhzTggrcaCV9JcN9gTgrN+P7OLXx" ..
"HI+JuKepHasPTPUKippQjCAgEIQgQr23qvK9N6oLt7P/AOIrv5I/qrRaR+3Seqq/s8/iq7+SP6q1Wr+Pk9UFs4bdousn3SnmrNe52eqjrK7RcZT9kp20n3nKlEpK/wCb59FFybuJT2R3cTN6Dw34lJUY74Uaz4lK0LfnWoqXYzutUPfBgN9VYI27BQN/5j1RFFuIxXsP" ..
"ms846/8AmH/+pq0S57VzPULO+O2kX8HxhbhUVV3NIldzXkoFQkSoBCTKMoFSIQgEIQgEIKEHtnNXf2e/xFYP8oKkMGSrx7OxmrrPKIf1QWi2j9r/ABVv4df2dwmP2VUrb/GEeas9pOKyb0QSUZzVk+aezv8Amwo+M/P/AIpzI7IwopnJ8RXmP4l7fzXmMd5BJUTcuUu1" ..
"uGKMoG97KmQPmygrt6HweqoV1GLg0q/XrmB5qhXnu1rT5hWIz/jXa+n+WFWTzVp45aW3prvGJqqztigRCRKgEIQgEIQgRCEIFwkRlKgAhCEBhCEIEXoc0iBzQTPDn9+Uf8wLSq3a4N8gs04c/v2i/mhaXXjFwHogloz89SnzCt1cc0zfuqnxnvUx81bqrelafsqUNKST" ..
"AGSukzg7ITSnOMrs4oPLRhd4juuGV7a7BCKlICNQVgoXtIHTCq0U2CpSlq9BG6C4TQMraDs9iQNlRrhbZGyua9m4PIqyUd10Eb+qfvlo61vzjRq8URmslmjJJ0bnwXH5HxyBx6rRJLNA7eN7VwNkwdiEFEFlB8fzSiyDPJXoWY53AXVtmHgE
