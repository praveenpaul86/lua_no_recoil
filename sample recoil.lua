--------------------------------------------- HOW TO USE ---------------------------------------------
--- This script comes with 2 modes, Pattern Profiles and Variable Recoil.
--- 1. Pattern Profiles: This mode allows you to set a pattern with a name and specific recoil values.
--------------------- name: The name of the pattern. This is what you will use to switch between patterns.
--------------------- stages: The recoil stages contain the recoil values for each stage of the pattern.
-----------------------------  Horizontal: The horizontal recoil value for the stage.
-----------------------------  Vertical: The vertical recoil value for the stage.
-----------------------------  fire_delay: The delay between each shot in the pattern.
-----------------------------  end_after: The amount of time in ms to use the current stage for before moving to the next stage. If not set, or no next stage, the pattern will loop.
--------------------- <Example>: {name = "test", stages = {{horizontal = 0, vertical = 1, fire_delay = 0, end_after = 1000}, {horizontal = 0, vertical = 2, fire_delay = 0}}}
----------------------------- This pattern will pull the mouse down with vertical anti-recoil of 1 for 1 second, then pull the mouse down with vertical anti-recoil of 2 until the user stops shooting.
--- 2. Variable Recoil: This mode lets you set a recoil value (VERTICAL RECOIL ONLY, does not support horizontal) on the fly without having to create a new pattern, so you can adjust it to the recoil of the weapon you are using without having to change the script.
--------------------- recoil_value: This is the variable where the recoil value is stored. You do not need to edit this in the script, it is only here so the script can edit/read it on the fly.

---To switch between modes, press the mode_switch_key MOUSE key (default: G6, the big side button on the G502).
--- Pattern Profile specific notes:
--------------------- To add a new profile, modify the pattern_profiles table in the Recoil Profiles section.
--------------------- To remove a profile, remove the profile from the pattern_profiles table in the Recoil Profiles section.
--------------------- profile_increment_key MOUSE key (default: G8) will switch to next profile.
--------------------- profile_decrement_key MOUSE key (default: G7) will switch to previous profile.
--- Variable Recoil specific notes:
--------------------- profile_increment_key MOUSE key (default: G8) will increase the recoil value by recoil_change_step amount.
--------------------- profile_decrement_key MOUSE key (default: G7) will decrease the recoil value by recoil_change_step amount.

--------------------------------------------- User Settings -------------------------------------------------------
-- Keybinds - Global
local activate_key = "scrolllock"     -- Turn-On numlock to active the script (default: numlock, can be any KEYBOARD key)
-- Keybinds - Recoil
local fire_key = 1              -- Your Mouse Left-Click (Fire) key (default: 1, can be any MOUSE key)
local ads_key = 3              -- Your Mouse Right-Click (ADS) key (default: 3, can be any MOUSE key)
local profile_switch_key = 9             -- Switch between Weapon-Patterns (default: 9, can be any MOUSE key)
local mode_switch_key = 6               -- Switch between Modes (default: 6, can be any MOUSE key)
local profile_increment_key = 8   -- Increase Recoil-Variable (default: 8, can be any MOUSE key)
local profile_decrement_key = 7   -- Decrease Recoil-Variable (default: 7, can be any MOUSE key)
-- Keybinds - Pinging
local ping_activate_key = "numlock"
local ping_key = 'lalt'                      -- This key wil be pressed to ping everytime you shoot (default: q, can be any KEYBOARD key)
-- Keybinds - Strafe Assist
local strafe_assist_activate_key = "capslock"
--------------------------------------------- Mode 1: Recoil Profiles -------------------------------------------------------
pattern_profiles = {
    { name = "thatcher/sledge", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 25, fire_delay = 7, end_after = 40},
        { Horizontal = 0.7, Vertical = 13, fire_delay = 7, end_after = (10*(60/670)) * 1000},
        { Horizontal = 0.9, Vertical = 15, fire_delay = 7, end_after = (10*(60/670)) * 1000},
        { Horizontal = 0.7, Vertical = 16, fire_delay = 7, end_after = (10*(60/670)) * 1000},
    } },
    { name = "ace", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 30, fire_delay = 7, end_after = 40},
        { Horizontal = -1, Vertical = 21, fire_delay = 7, end_after = (20*(60/850)) * 1000},
        { Horizontal = -2, Vertical = 23, fire_delay = 7, end_after = (11*(60/850)) * 1000},
    } },
    { name = "ash", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 40, fire_delay = 7, end_after = 30},
        { Horizontal = 0, Vertical = 23, fire_delay = 7, end_after = (4*(60/860)) * 1000},
        { Horizontal = -2, Vertical = 24, fire_delay = 7, end_after = (16*(60/860)) * 1000},
        { Horizontal = -1, Vertical = 25, fire_delay = 7, end_after = (8*(60/860)) * 1000},
    } },
    { name = "bandit", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 20, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 11, fire_delay = 7, end_after = (30*(60/900)) * 1000},
    } },
    { name = "doc/rook", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 30, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 19, fire_delay = 7, end_after = (8*(60/800)) * 1000},
        { Horizontal = -4, Vertical = 19, fire_delay = 7, end_after = (4*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 20, fire_delay = 7, end_after = (18*(60/800)) * 1000},
    } },
    { name = "echo", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 40, fire_delay = 7, end_after = 10},
        { Horizontal = -1, Vertical = 18, fire_delay = 7, end_after = (8*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 16, fire_delay = 7, end_after = (8*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 19, fire_delay = 7, end_after = (8*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 21, fire_delay = 7, end_after = (6*(60/800)) * 1000},
    } },
    { name = "ela", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 30, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 15, fire_delay = 7, end_after = (10*(60/1080)) * 1000},
        { Horizontal = 1, Vertical = 16, fire_delay = 7, end_after = (7*(60/1080)) * 1000},
        { Horizontal = 2, Vertical = 21, fire_delay = 7, end_after = (34*(60/1080)) * 1000},
    } },
    { name = "goyo", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 40, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 25, fire_delay = 7, end_after = (25*(60/1200)) * 1000},
    } },
    { name = "jackal", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 40, fire_delay = 7, end_after = 40},
        { Horizontal = -1, Vertical = 21, fire_delay = 7, end_after = (10*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 24, fire_delay = 7, end_after = (10*(60/800)) * 1000},
        { Horizontal = -1, Vertical = 26, fire_delay = 7, end_after = (6*(60/800)) * 1000},
    } },
    { name = "jaeger", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 30, fire_delay = 7, end_after = 40},
        { Horizontal = -1, Vertical = 14, fire_delay = 7, end_after = (14*(60/740)) * 1000},
        { Horizontal = -1, Vertical = 15, fire_delay = 7, end_after = (12*(60/740)) * 1000},
    } },
    { name = "lion", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 28, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 14, fire_delay = 7, end_after = (14*(60/700)) * 1000},
        { Horizontal = 0, Vertical = 17, fire_delay = 7, end_after = (35*(60/700)) * 1000},
    } },
    { name = "maverick", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 34, fire_delay = 7, end_after = 30},
        { Horizontal = -1, Vertical = 19, fire_delay = 7, end_after = (12*(60/750)) * 1000},
        { Horizontal = -1, Vertical = 21, fire_delay = 7, end_after = (12*(60/750)) * 1000},
        { Horizontal = -1, Vertical = 21, fire_delay = 7, end_after = (6*(60/750)) * 1000},
    } },
    { name = "mira", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 25, fire_delay = 7, end_after = 30},
        { Horizontal = 0, Vertical = 12, fire_delay = 7, end_after = (15*(60/1200)) * 1000},
        { Horizontal = 0, Vertical = 13, fire_delay = 7, end_after = (10*(60/1200)) * 1000},
    } },
    { name = "nomad", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 25, fire_delay = 7, end_after = 40},
        { Horizontal = -1, Vertical = 12, fire_delay = 7, end_after = (20*(60/650)) * 1000},
        { Horizontal = -1, Vertical = 15, fire_delay = 7, end_after = (20*(60/650)) * 1000},
    } },
    { name = "twitch", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 50, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 26, fire_delay = 7, end_after = (10*(60/980)) * 1000},
        { Horizontal = -2, Vertical = 30, fire_delay = 7, end_after = (13*(60/980)) * 1000},
    } },
    { name = "thermite", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 25, fire_delay = 7, end_after = 40},
        { Horizontal = 1, Vertical = 12, fire_delay = 7, end_after = (10*(60/690)) * 1000},
        { Horizontal = 0, Vertical = 14, fire_delay = 7, end_after = (5*(60/690)) * 1000},
        { Horizontal = 1, Vertical = 15, fire_delay = 7, end_after = (10*(60/690)) * 1000},
        { Horizontal = 1, Vertical = 14, fire_delay = 7, end_after = (5*(60/690)) * 1000},
    } },
    { name = "zofia", stages = {
        { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
        { Horizontal = 0, Vertical = 40, fire_delay = 7, end_after = 40},
        { Horizontal = 0, Vertical = 20, fire_delay = 7, end_after = (4*(60/730)) * 1000},
        { Horizontal = 0, Vertical = 20, fire_delay = 7, end_after = (19*(60/730)) * 1000},
        { Horizontal = 1, Vertical = 22, fire_delay = 7, end_after = (8*(60/730)) * 1000},
    } }
}
-- The recoil profile you want to be activated on the start (Starts at 1)
local selectedProfile = 1

--------------------------------------------- Mode 2: Variable Recoil -------------------------------------------------------
local recoil_value = 2                   -- This is the recoil value that will be used.
local recoil_change_step = 0.2           -- How much recoil_value will change when you press the variable_recoil_increase/decrease_key
local lifetime = 9999999                 -- How long should the recoil be applied for (in ms). 9999999 is a very long time, so it will be applied until you stop shooting.

------------------------------------------ END OF USER SETTINGS ---------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------- DO NOT EDIT BELOW ----------------------------------------------------

local script_active = true  -- By default, the script is active (can be disabled by pressing the activate_key)
local ping_enabled = false  -- By default, pinging is disabled (can be enabled by pressing the ping_activate_key)
local strafe_assist_enabled = false  -- By default, strafe assist is disabled (can be enabled by pressing the strafe_assist_activate_key)
-- Config
local selectedMode = 0                   -- 0 = Use Pattern Profiles, 1 = Use Variable Recoil (default: 0)

-- Random Coefficient generator
function Volatility(range, impact)
    local interupt = range * (1 + impact * math.random())
    return interupt
end

-- Move mouse by X
function Move_x(_horizontal_recoil)
    MoveMouseRelative(math.ceil(Volatility(0.7, 1) * _horizontal_recoil), 0)  -- 70 ~ 140 %
end

-- Move mouse by y
function Move_y(_vertical_recoil)
    MoveMouseRelative(0, math.floor(Volatility(0.7, 1) * _vertical_recoil)) -- 70 ~ 140 %
end

-- Apply Recoil - Loop through each pattern of the current_weapon until the end_after is reached
function ApplyRecoil()
    local stages = selectedMode == 0 and pattern_profiles[selectedProfile].stages or {
      { Horizontal = 0, Vertical = 0, fire_delay = 7, end_after = 10},
      { Horizontal = 0, Vertical = recoil_value * 2, fire_delay = 7, end_after = 40},
      { Horizontal = 0, Vertical = recoil_value, fire_delay = 7, end_after = lifetime }
    }
    local numOfStages = #stages

    for idx = 1, numOfStages do
        if not IsMouseButtonPressed(fire_key) then
            return
        end

        OutputLogMessage("Stage: %d/%d\n", idx, numOfStages)

        local stage = stages[idx]
        local horizontal_recoil = stage.Horizontal
        local vertical_recoil = stage.Vertical
        --fire delay is rate of fire divided by 60 or 1.
        local fire_delay = stage.fire_delay
        local end_after = stage.end_after

        local float_x = math.abs(horizontal_recoil) - math.floor(math.abs(horizontal_recoil))
        local float_y = math.abs(vertical_recoil) - math.floor(math.abs(vertical_recoil))

        local i = 0
        local j = 0
        local stageStartTime = GetRunningTime()
        repeat
            if not IsMouseButtonPressed(fire_key) then
                return
            end
            if horizontal_recoil ~= 0 then
                if horizontal_recoil < 0 then
                    Move_x(horizontal_recoil + float_x)
                else
                    Move_x(horizontal_recoil - float_x)
                end
            end

            if vertical_recoil ~= 0 then
                if vertical_recoil < 0 then
                    Move_y(vertical_recoil + float_y)
                else
                    Move_y(vertical_recoil - float_y)
                end
            end

            -- if the horizontal recoil value is not integer then start the counter
            -- and when it arrived in 1 or greater, move the mouse by 1 pixel
            if float_x ~= 0 then
                i = i + float_x   -- count until 1
                if i >= 1 * Volatility(0.7, 1) then
                    -- compare with randomized number
                    -- if value is positive move to right else move to left
                    if horizontal_recoil > 0 then
                        -- compare with randomized value
                        Move_x(1)
                    else
                        Move_x(-1)
                    end
                    -- reset the counter
                    i = 0
                end
            end

            -- if the vertical recoil value is not integer then start the counter
            -- and when it arrived in 1 or greater, move the mouse by 1 pixel
            if float_y ~= 0 then
                j = j + float_y   -- count until 1
                if j >= 1 * Volatility(0.7, 1) then
                    -- compare with randomized number
                    -- if value is positive move to down else move to up
                    if vertical_recoil > 0 then
                        Move_y(1)
                    else
                        Move_y(-1)
                    end
                    -- reset the counter
                    j = 0
                end
            end

            Sleep(math.floor(Volatility(0.8, 0.5) * fire_delay)) -- 80 ~ 120 % of the fire_delay
        until (end_after ~= nil and GetRunningTime() - stageStartTime > end_after)
    end
end

-- ping function - presses the ping key if ping is enabled
function Ping()
    if ping_enabled then
        OutputLogMessage('Pinged!\n')
        PressAndReleaseKey(ping_key)
    end
end

-- show_help and show settings
function show_help()
    ClearLog()
    local msg = ""
    if IsKeyLockOn(activate_key) then
        script_active = true

        -- Build the initial message
        msg = msg .. string.format("Script is On and ready\n\nFire Button: %s\nADS Button: %s\n\n", fire_key, ads_key)

        if selectedMode == 0 then
            msg = msg .. "📚Mode: Pattern Profiles (Use the G6 key to switch mode to Variable Recoil Only)\n"

            for idx = 1, #pattern_profiles do
                msg = msg .. (selectedProfile == idx and string.format('🔸%s🔸', pattern_profiles[idx]["name"])
                    or string.format('  %s  ', pattern_profiles[idx]["name"]))
            end

            msg = msg .. string.format('\nNext Profile: G%s', profile_increment_key)
            msg = msg .. string.format('\nPrev Profile: G%s\n', profile_decrement_key)
        else
            msg = msg .. "📈Mode: Variable Recoil Only (Use the G6 key to switch to Pattern Profiles)\n" ..
                  string.format('Selected Variable Recoil Value: %s\nIncrease/Decrease Recoil Value: G%s/G%s\n',
                  recoil_value, profile_increment_key, profile_decrement_key)
        end

        -- Append ping and strafe assist status
        msg = msg .. (ping_enabled and string.format('✅ Ping Enabled: %s (Press %s to Disable)\n', ping_key, ping_activate_key)
              or string.format('❌ Ping Disabled. To enable it press: %s\n', ping_activate_key))

        msg = msg .. (strafe_assist_enabled and string.format('✅ Strafe Assist Enabled (Press %s to Disable)\n', strafe_assist_activate_key)
              or string.format('❌ Strafe Assist Disabled. To enable it press: %s\n', strafe_assist_activate_key))
    else
        script_active = false
        msg = msg .. string.format("Script is Off...\nYou can activate it by pressing: %s\n", activate_key)
    end
    -- Log all at once
    OutputLogMessage(msg)
end

-- show_help
show_help()
local time_since_last_change = 0
-- Script loop
function OnEvent(event, arg)
    OutputLogMessage('Event: %s, Arg: %s\n', event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        ReleaseMouseButton(fire_key)
        ReleaseMouseButton(ads_key)
    end

    -- if the script is active
    if IsKeyLockOn(activate_key) then
        show_help()
        -- if script toggled from on to off
        if script_active == false then
            script_active = true
            OutputLogMessage('Script is on...\n')
        end

        -- if user ping activate_key is pressed
        if IsKeyLockOn(ping_activate_key) then
            if ping_enabled == false then
                ping_enabled = true
                OutputLogMessage('Ping Enabled: %s\n', ping_key)
            end
        else
            if ping_enabled == true then
                ping_enabled = false
                OutputLogMessage('Pinging Disabled\n')
            end
        end

        -- if user ping activate_key is pressed
        if IsKeyLockOn(strafe_assist_activate_key) then
            if strafe_assist_enabled == false then
                strafe_assist_enabled = true
                OutputLogMessage('Strafe Assist Enabled ✅\n')
            end
        else
            if strafe_assist_enabled == true then
                strafe_assist_enabled = false
                OutputLogMessage('Strafe Assist Disabled\n')
            end
        end

        if (event == "MOUSE_BUTTON_PRESSED") then
            -- if user changed the mode
            if (arg == mode_switch_key) then
                selectedMode = selectedMode == 0 and 1 or 0
                show_help()
            end

            -- if user changed the weapon profile
            if (selectedMode == 0) then
                -- next profile
                if (arg == profile_increment_key) then
                    selectedProfile = selectedProfile + 1
                    if selectedProfile > #pattern_profiles then
                        selectedProfile = 1
                    end
                elseif (arg == profile_decrement_key) then
                    selectedProfile = selectedProfile - 1
                    if selectedProfile < 1 then
                        selectedProfile = #pattern_profiles
                    end
                end
                show_help()
                OutputLogMessage('Selected Recoil Profile: %s\n', pattern_profiles[selectedProfile]["name"])
            end

            -- if user changed the recoil value
            if (selectedMode == 1) then
                if arg == profile_increment_key then
                    time_since_last_change = GetRunningTime()
                    recoil_value = recoil_value + recoil_change_step
                    show_help()
                elseif arg == profile_decrement_key then
                    time_since_last_change = GetRunningTime()
                    recoil_value = math.max(recoil_value - recoil_change_step, 0)
                    show_help()
                end
            end
        end

        if (event == "MOUSE_BUTTON_RELEASED") then
            if (selectedMode == 1) then
                if (arg == profile_decrement_key and GetRunningTime() - time_since_last_change > 1000) then
                    recoil_value = 0
                    OutputLogMessage('Variable Recoil Cleared To: %s\n', recoil_value)
                elseif (arg == profile_increment_key and GetRunningTime() - time_since_last_change > 1000) then
                    recoil_value = recoil_value + 5
                    OutputLogMessage('Variable Recoil Increased To: %s\n', recoil_value)
                end
            end
        end
        if IsMouseButtonPressed(ads_key) then
            if IsMouseButtonPressed(fire_key) then
                Ping()

                if strafe_assist_enabled then
                  PressKey("a", "d", "lctrl")
                  ApplyRecoil()
                  ReleaseKey("a","d", "lctrl")
                else
                  ApplyRecoil()
                end
            end
        end
    else
        -- if script toggled from off to on, print message in console
        if script_active == true then
            script_active = false
            OutputLogMessage('Script is off...\n')
        end
    end  -- end of main function
end -- end of loop
