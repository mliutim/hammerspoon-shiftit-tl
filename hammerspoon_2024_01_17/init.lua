-- SpoonInstall の設定
hs.loadSpoon("ShiftIt")

-- -- ShiftItの設定
-- -- [peterklijn/hammerspoon-shiftit: A ShiftIt like Hammerspoon window management configuration](https://github.com/peterklijn/hammerspoon-shiftit)
-- spoon.SpoonInstall.repos.ShiftIt = {
--    url = "https://github.com/peterklijn/hammerspoon-shiftit",
--    desc = "ShiftIt spoon repository",
--    branch = "master",
-- }
-- spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })

-- ShiftItの設定
hs.loadSpoon("ShiftIt")
-- local mash = { 'shift', 'alt', 'cmd' }
local mash = { 'ctrl', 'alt', 'cmd' }

-- hotkeyの設定の仕方
-- 動作名 = {keybind}
spoon.ShiftIt:bindHotkeys({
    nextScreen = { mash, 'up' },
    center = { mash, '/' },
    toggleFullScreen = { mash, 'pageup' },
    toggleZoom = { mash, 'pagedown' }

})