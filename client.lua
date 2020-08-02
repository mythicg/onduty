----------------------------------------------
--Script Made By Mythic aka Michael          |
--Discord: https://discord.gg/bhwyhYk        |
----------------------------------------------

--Config 

local ServerName = "Insert Server Name Here!"

local ArmourType = 25  --Insert The Armour Amount Here. 0 = No Armour    100 = Max Armour

hppistol = 'weapon_pistol'
pdpistol = 'weapon_combatpistol'
sopistol = 'weapon_combatpistol'
Tazer = 'weapon_stungun'
FlashLight = 'weapon_flashlight'
Baton = 'weapon_nightstick'

-- Peds

hpped = 's_m_y_hwaycop_01'
pdped = 's_m_y_cop_01'
soped = 'csb_cop'



RegisterCommand("hp", function(source, args, raw)

      -- Ped --

      local player = PlayerId()
      local model = GetHashKey(hpped)
      RequestModel(model)
      while not HasModelLoaded(model) do
          Wait(100)
      end
  
      SetPlayerModel(player, model)
      SetModelAsNoLongerNeeded(model)

      -- Weapons 

      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hppistol), 18, false, false) --Pistol
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(Tazer), 2, false, false) --Tazer
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(FlashLight), 30, false, false) --FlashLight
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(Baton), 30, false, false) --Baton
      GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(hppistol), 0x359B7AAE)

      -- Armour

      SetPedArmour(GetPlayerPed(-1), ArmourType)

      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Highway Patrol!")
end)

RegisterCommand("pd", function(source, args, raw)

      -- Ped --

      local player = PlayerId()
      local model = GetHashKey(pdped)
      RequestModel(model)
      while not HasModelLoaded(model) do
          Wait(100)
      end
  
      SetPlayerModel(player, model)
      SetModelAsNoLongerNeeded(model)

      -- Weapons 

      GiveWeaponToPed(GetPlayerPed(-1), pdpistol, 18, false, false) --Pistol
      GiveWeaponToPed(GetPlayerPed(-1), Tazer, 2, false, false) --Tazer
      GiveWeaponToPed(GetPlayerPed(-1), FlashLight, 30, false, false) --FlashLight
      GiveWeaponToPed(GetPlayerPed(-1), Baton, 30, false, false) --Baton
      GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(pdpistol), 0x359B7AAE)

      -- Armour

      SetPedArmour(GetPlayerPed(-1), ArmourType)

      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Los Santos Police Department!")
end)


RegisterCommand("so", function(source, args, raw)

      -- Ped --

      local player = PlayerId()
      local model = GetHashKey(soped)
      RequestModel(model)
      while not HasModelLoaded(model) do
          Wait(100)
      end
  
      SetPlayerModel(player, model)
      SetModelAsNoLongerNeeded(model)

      -- Weapons 

      GiveWeaponToPed(GetPlayerPed(-1), sopistol, 18, false, false) --Pistol
      GiveWeaponToPed(GetPlayerPed(-1), Tazer, 2, false, false) --Tazer
      GiveWeaponToPed(GetPlayerPed(-1), FlashLight, 30, false, false) --FlashLight
      GiveWeaponToPed(GetPlayerPed(-1), Baton, 30, false, false) --Baton
      GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(sopistol), 0x359B7AAE)

      -- Armour

      SetPedArmour(GetPlayerPed(-1), ArmourType)

      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Blaine County Sheriff's Office!")
end)

