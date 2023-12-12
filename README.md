**Steps:**
After standard install - 

1. Replace ~/.hammerspoon/Spoons/ShiftIt.spoon/init.lua with init_tl.lua
2. Replace ~/.hammerspoon/init.lua with dot.hammerspoon-tl/init.lua

=======



# Hammerspoon ShiftIt

A [ShiftIt](https://github.com/fikovnik/ShiftIt) like [Hammerspoon](http://www.hammerspoon.org) window management configuration.

![Hammerspoon ShiftIt demo video](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/shiftit-demo.gif?raw=true)

## Installation

#### Step 1

Install Hammerspoon if you haven't yet. Download the [latest release here](https://github.com/Hammerspoon/hammerspoon/releases/latest) and drag it to `/Applications`.

Alternatively you can install it using brew:
```bash
brew install --cask hammerspoon
```

#### Step 2

Make sure Hammerspoon is started (You should see the a Hammerspoon logo in your menubar).

Download the [ShiftIt spoon](https://github.com/peterklijn/hammerspoon-shiftit/raw/master/Spoons/ShiftIt.spoon.zip). Unzip the downloaded file and open the spoon (Make sure you open the unzipped `ShiftIt.spoon` file using Finder so Hammerspoon will move it to the correct location).

Hammerspoon should prompt that the newly installed spoon is now available.

*Alternatively you can use [SpoonInstall](#spooninstall)*

#### Step 3

Click on the Hammerspoon menubar icon and click on 'Open Config'. An `init.lua` file should now open in your editor of choice.

Paste the following configuration in the `init.lua` file, save it and close it.

```lua
hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({})
```

Click on the Hammerspoon menubar icon again, and click on 'Reload Config'.

#### Step 4

Make sure Hammerspoon has the 'Accessibility' permissions. Without those permissions, it can't move and modify windows.

Go to `System Preferences > Security & Privacy > Accessibility` and make sure Hammerspoon.app is checked.

_If you just enabled permissions for Hammerspoon, you might need to restart the application for the permissions to take effect._

#### Step 5 (optional)

Configure the Shiftit spoon to your preference.

- [Multiple window cycle sizes](https://github.com/peterklijn/hammerspoon-shiftit#configure-multiple-window-cycle-sizes) allows you to override the default 50% window size for snapping to [sides](https://github.com/peterklijn/hammerspoon-shiftit#snap-to-sides) and [corners](https://github.com/peterklijn/hammerspoon-shiftit#snap-to-corners)
- [Override key mappings](https://github.com/peterklijn/hammerspoon-shiftit#overriding-key-mappings) allows you to override the default key bindings.

The ShiftIt spoon is now ready to use, enjoy.

Having issues? Check out the [Known issues](https://github.com/peterklijn/hammerspoon-shiftit#known-issues) section, have a look in the [issues section](https://github.com/peterklijn/hammerspoon-shiftit/issues), or create a new issue.

## Usage (default keys)

### Snap to sides

- `ctrl(^) + alt(⌥) + cmd(⌘) + left` Snap current window to the left half to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + right` Snap current window to the right half to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + up` Snap current window to the top half to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + down` Snap current window to the bottom half to the screen

![Hammerspoon ShiftIt snap sides demo](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/shiftit-demo-snap-sides.gif?raw=true)

### Snap to corners

- `ctrl(^) + alt(⌥) + cmd(⌘) + 1` Snap current window to the left top quarter to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + 2` Snap current window to the right top quarter to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + 3` Snap current window to the left bottom quarter to the screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + 4` Snap current window to the right bottom quarter to the screen

![Hammerspoon ShiftIt snap corners demo](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/shiftit-demo-snap-corners.gif?raw=true)


- `ctrl(^) + alt(⌥) + cmd(⌘) + M` Maximise current window
- `ctrl(^) + alt(⌥) + cmd(⌘) + C` Centralize current window
- `ctrl(^) + alt(⌥) + cmd(⌘) + -` Make current window smaller
- `ctrl(^) + alt(⌥) + cmd(⌘) + =` Make current window bigger

![Hammerspoon ShiftIt increase decrease demo](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/shiftit-demo-increase-decrease.gif?raw=true)

- `ctrl(^) + alt(⌥) + cmd(⌘) + F` Toggle full screen for current window
- `ctrl(^) + alt(⌥) + cmd(⌘) + Z` Toggle zoom for current window

- `ctrl(^) + alt(⌥) + cmd(⌘) + N` Move current window to next screen
- `ctrl(^) + alt(⌥) + cmd(⌘) + P` Move current window to previous screen


## Known issues

#### "attempt to index nil value" error while using shortcuts

If after installation you run into errors like `attempt to index a nil value`, please make sure to verify that Hammerspoon has the right permissions on your Mac.

Go to `System Preferences > Security & Privacy > Accessibility` and make sure Hammerspoon.app is checked.

![Hammerspoon System Preferences Accessibility setting enabled](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/system-preferences-big-sur.png?raw=true)

#### "attempt to index nil value" error during startup

If Hammerspoon prints errors during initialisation, like "attempt to index nil value" from Hammerspoon's init script (`~/.hammerspoon/init.lua`), the ShiftIt spoon may have been misconfigured.

Make sure that the Spoon name, provided in [installation step 3](https://github.com/peterklijn/hammerspoon-shiftit#step-3) matches with the folder name in `~/.hammerspoon/Spoons` (without the `.spoon` extension).

For example, if the name in the init script is `"ShiftIt"`, the Spoon in the `~/.hammerspoon/Spoons` folder should be `ShiftIt.spoon`.

If those are different, change the name in the Hammerspoon `init.lua` configuration to be aligned with the name in the Spoons folder.


## Configuration

The default key mapping looks like this:

```lua
{
  left = { { 'ctrl', 'alt', 'cmd' }, 'left' },
  right = { { 'ctrl', 'alt', 'cmd' }, 'right' },
  up = { { 'ctrl', 'alt', 'cmd' }, 'up' },
  down = { { 'ctrl', 'alt', 'cmd' }, 'down' },
  upleft = { { 'ctrl', 'alt', 'cmd' }, '1' },
  upright = { { 'ctrl', 'alt', 'cmd' }, '2' },
  botleft = { { 'ctrl', 'alt', 'cmd' }, '3' },
  botright = { { 'ctrl', 'alt', 'cmd' }, '4' },
  maximum = { { 'ctrl', 'alt', 'cmd' }, 'm' },
  toggleFullScreen = { { 'ctrl', 'alt', 'cmd' }, 'f' },
  toggleZoom = { { 'ctrl', 'alt', 'cmd' }, 'z' },
  center = { { 'ctrl', 'alt', 'cmd' }, 'c' },
  nextScreen = { { 'ctrl', 'alt', 'cmd' }, 'n' },
  previousScreen = { { 'ctrl', 'alt', 'cmd' }, 'p' },
  resizeOut = { { 'ctrl', 'alt', 'cmd' }, '=' },
  resizeIn = { { 'ctrl', 'alt', 'cmd' }, '-' }
}
```

### Configure multiple window cycle sizes

You can configure multiple window cycle sizes by adding the following line after loading the ShiftIt spoon:

```lua
spoon.ShiftIt:setWindowCyclingSizes({ 50, 33, 67 }, { 50 })
```

The first argument (`{ 50, 33, 67 }`) sets the horizontal window cycle sizes, in the provided order.
The second argument (`{ 50 }`) sets the vertical window cycle sizes, in this example it only sets one.

The above settings will toggle the window through these steps, when repeatingly hitting `ctrl(^) + alt(⌥) + cmd(⌘) + left`:

![Window Cycling Sizes visualised for left action](https://github.com/peterklijn/hammerspoon-shiftit/blob/master/images/window-cycling-sizes-visualised.png?raw=true)

### Overriding key mappings

You can pass the part of the key mappings that you want to override to the `bindHotkeys()` function. For example:

```lua
-- Use Vim arrow keys
spoon.ShiftIt:bindHotkeys({
  left = { { 'ctrl', 'alt', 'cmd' }, 'h' },
  down = { { 'ctrl', 'alt', 'cmd' }, 'j' },
  up = { { 'ctrl', 'alt', 'cmd' }, 'k' },
  right = { { 'ctrl', 'alt', 'cmd' }, 'l' },
})
```

## Alternative installations

### SpoonInstall

If you use [SpoonInstall](https://www.hammerspoon.org/Spoons/SpoonInstall.html):

- Load the spoon as following using the repository `https://github.com/peterklijn/hammerspoon-shiftit`.
- Add this config to your `~/.hammerspoon/init.lua`
 ```lua
hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall.repos.ShiftIt = {
    url = "https://github.com/peterklijn/hammerspoon-shiftit",
    desc = "ShiftIt spoon repository",
    branch = "master",
}

spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })
```
