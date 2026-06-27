-- Fichier: scripts/leverFrameEffect.lua
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function createLeverFrameEffect(character, leverObject)
    -- Vérifie si le personnage a un Humanoid
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    -- Configuration de l'effet
    local leverDuration = 1.5 -- Durée du lever de frame
    local leverHeight = 10 -- Hauteur maximale du lever
    local glitchEffect = true -- Active l'effet de glitch (optionnel)

    -- Fonction pour appliquer le lever de frame
    local function applyLeverEffect()
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if not rootPart then return end

        -- Sauvegarde la position originale
        local originalPosition = rootPart.Position

        -- Animation de lever
        local tweenInfo = TweenInfo.new(
            leverDuration,
            Enum.EasingStyle.Quad,
            Enum.EasingDirection.Out,
            -1, -- Repeat (infinite)
            true, -- Reverses
            0 -- Delay
        )

        -- Crée un tween pour monter et descendre
        local tween = TweenService:Create(rootPart, tweenInfo, {
            Position = Vector3.new(originalPosition.X, originalPosition.Y + leverHeight, originalPosition.Z)
        })

        -- Effet de glitch (optionnel)
        if glitchEffect then
            local glitchConnection
            glitchConnection = RunService.Heartbeat:Connect(function()
                if tween:Play() then
                    -- Applique un effet de distorsion visuelle
                    rootPart.Transparency = math.random() * 0.5
                    rootPart.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
                end
            end)

            -- Supprime l'effet après la durée
            delay(leverDuration, function()
                if glitchConnection then glitchConnection:Disconnect() end
                rootPart.Transparency = 0
                rootPart.Color = humanoid.RootPartColor
            end)
        else
            tween:Play()
        end
    end

    -- Détecte quand le joueur touche l'objet "leverObject"
    local function onTouched(otherPart)
        local player = Players:GetPlayerFromCharacter(otherPart.Parent)
        if player and player.Character == character then
            applyLeverEffect()
        end
    end

    -- Active le toucher si l'objet est un BasePart
    if leverObject:IsA("BasePart") then
        leverObject.Touched:Connect(onTouched)
    end

    -- Nettoyage (si le personnage ou l'objet est détruit)
    character.AncestryChanged:Connect(function(_, parent)
        if not parent then
            if leverObject:IsA("BasePart") then
                leverObject.Touched:Disconnect(onTouched)
            end
        end
    end)
end

-- Applique l'effet à tous les personnages qui touchent un objet nommé "LeverFrameTrigger"
game:GetService("Workspace").DescendantAdded:Connect(function(part)
    if part.Name == "LeverFrameTrigger" and part:IsA("BasePart") then
        local character = part.Parent
        if character:FindFirstChildOfClass("Humanoid") then
            createLeverFrameEffect(character, part)
        end
    end
end)
