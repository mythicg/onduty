----------------------------------------------
--Script Made By Mythic       |
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

-- Cars
hpcar = 'policeb'
pdcar = 'police2'
socar = 'sheriff'



RegisterCommand("hp", function()

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

      --Car 

      spawnCar(hpcar)


      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Highway Patrol!")
      print("Player Is Now On Duty As Highway Patrol")
end)

RegisterCommand("pd", function()

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

      -- Car

      spawnCar(pdcar)

      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Los Santos Police Department!")
      print("Player Is Now On Duty As Los Santos Police Department")
end)


RegisterCommand("so", function()

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

      -- Car
      spawnCar(socar)

      -- Chat Message

      TriggerEvent("chatMessage", "^8".. ServerName.. ":".. "^7".. "You Are Now On Duty As Blaine County Sheriff's Office!")
      print("Player Is Now On Duty As Balaine County Sheriff's Officer!")
end)


--- Function Stuff

function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, x, y + 3, z, 0.0, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
end
