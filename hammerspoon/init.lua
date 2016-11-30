
-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F19")

------------------------------------------------------------------------------

--
-- Open Unclutter
k:bind({}, 'u', nil, function() hs.eventtap.keyStroke({"cmd","alt","ctrl"}, 'u') end)


--
--
-- Launch or Focus an App
launch = function(appname)
  hs.application.launchOrFocus(appname)
  k.triggered = true
end
-- Single keybinding for app launch
singleapps = {
  {'s', 'Sketch'},
  {'l', 'Slack'},
  {'f', 'Fantastical 2'},
  {'c', 'Google Chrome'},
  {'q', 'Quiver'},
  {'m', 'Postbox'}
}
-- Loop through and bind each key to app
for i, app in ipairs(singleapps) do
  k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
end


--
--
-- Auto reload config on change
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

------------------------------------------------------------------------------

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
