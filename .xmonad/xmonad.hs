import XMonad
import qualified XMonad.StackSet as W
import XMonad.ManageHook
import XMonad.Hooks.ManageDocks
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers (composeOne, isFullscreen, isDialog,  doFullFloat, doCenterFloat)
import XMonad.Util.NamedScratchpad

myCenterFloat = customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3)

myManageHook = composeAll . concat $
        [ [ className =? c --> doCenterFloat    | c <- floats       ]
        , [ resource =? r --> doIgnore          | r <- ignore       ]
        , [ role =? r --> myCenterFloat         | r <- ["GtkFileChooserDialog"]]
        , [ isFullscreen --> doFullFloat        ]
        , [ isDialog --> doCenterFloat          ]
        ]
    where
        role = stringProperty "WM_WINDOW_ROLE"
        floats = ["sdlpal", "MPlayer", "Gimp", "qemu-system-x86_64", "Gnome-typing-monitor", "Vlc", "Dia", "DDMS", "Audacious", "Wine"]
        ignore = []

myLayout = tiled ||| Mirror tiled ||| noBorders Full
  where
      tiled   = Tall 1 (3/100) (3/5)

main = do
    xmonad $ defaultConfig 
      { terminal = "terminator"
      , layoutHook = avoidStruts 
        $ toggleLayouts (noBorders Full) 
        $ smartBorders
        $ myLayout
      , modMask = mod4Mask
      , manageHook = myManageHook <+> manageHook defaultConfig
      } `removeKeys` [ (mod4Mask, xK_space) ]

