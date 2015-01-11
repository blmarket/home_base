import XMonad
import XMonad.Util.EZConfig

main = do
  xmonad $ defaultConfig
    { terminal = "terminator"
    , modMask = mod4Mask
    , borderWidth = 3
    }
    `removeKeys` [ (mod4Mask, xK_space) ]
