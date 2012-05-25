
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
	xmproc <- spawnPipe "/usr/bin/xmobar /home/edman/.xmobarrc"
	xmonad $ defaultConfig
		{ manageHook = manageDocks <+> manageHook defaultConfig
		, layoutHook = (avoidStruts $ layoutHook defaultConfig) ||| Full

		, terminal = "urxvt"
		, modMask = mod4Mask
		, borderWidth = 2
		, logHook = dynamicLogWithPP xmobarPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "green" "" . shorten 50
			}
		}
		--} `additionalKeys`
		--[
		--]
		-- controle de luminosidade da tela
		--[ ((mod4Mask, xK_F4), spawn "xbacklight -time 0 -dec 10")
		--, ((mod4Mask, xK_F5), spawn "xbacklight -time 0 -inc 10")
		--]
		
		--[ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command-lock")
		--, ((controlMask, xk_Print), spawn "sleep 0.2; scrot -s")
		--, ((0, xK_Print), spawn "scrot")
		--]

-- executa o xterm com cores invertidas e com fonte diferente
--myTerminalConfig = "xterm -r -font -*-Terminus-medium-r-normal-*-*-*-*-*-*-*-*-*"
--myTerminalConfig = "xterm -r"

