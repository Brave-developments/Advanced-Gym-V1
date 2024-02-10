Config = {}

-------------
--MZ-SKILLS--
-------------

Config.UpdateFrequency = 300                -- Seconds interval between removing values (no need to touch this)

Config.Notifications = true                 -- Notification played when skill is added (set to "false" to disable)

Config.NotifyType = 'qb'                  -- Notification type: 'qb' for QBCore notification, 'okok' for okokNotify

Config.Debug = false                        -- Set to "true" to print debugging messages

Config.TypeCommand = true                   -- Set to "false" to disable the "/skills" command (or whatever word you set in the next function)

Config.Skillmenu = "skills"                 -- phrase typed to display skills menu (check readme.md to set to commit to radial menu)

-------------
--RP SKILLS--
-------------

-- Please feel free to add/subtract the skills you are using in your city as you see fit. 
-- Please avoid taking skills away after players have already started accumulating XP. 
-- The following skills which appear in this default list are used by one or more mz- resources. 

Config.Skills = {
    ["Stamina"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "MP0_STAMINA",
        ['icon'] = 'fas fa-walking',
    },
    ["Strength"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "MP0_STRENGTH",
        ['icon'] = 'fas fa-dumbbell',
    },
    ["Searching"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "BINDIVE_ABILITY",
        ['icon'] = 'fas fa-trash', 
    }, 
    ["Scraping"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "SCRAP_ABILITY",
        ['icon'] = 'fas fa-screwdriver', 
    },
    ["Hacking"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HACK_ABILITY",
        ['icon'] = 'fas fa-laptop-code',
    }, 
    ["Street Reputation"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGREP_ABILITY",
        ['icon'] = 'fas fa-cannabis',
    }, 
    ["Drug Manufacture"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGMAKE_ABILITY",
        ['icon'] = 'fas fa-pills',
    }, 
    ["Delivery Runner"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "RUNNER_ABILITY",
        ['icon'] = 'fas fa-car',
    }, 
    ["Hitman"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HITMAN_ABILITY",
        ['icon'] = 'fas fa-skull',
    }, 
    ["Driving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRIVER_ABILITY",
        ['icon'] = 'fas fa-car-alt',
    }, 
    ["Lumberjack"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "TREE_ABILITY",
        ['icon'] = 'fas fa-tree',
    }, 
    ["Heist Reputation"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HEIST_ABILITY",
        ['icon'] = 'fa-solid fa-user-secret',
    }, 
    ["Diving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DIVING_ABILITY",
        ['icon'] = 'fas fa-water',
    }, 
    ["Electrical"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "ELECTRICAL_ABILITY",
        ['icon'] = 'fas fa-bolt',
    }, 
}
