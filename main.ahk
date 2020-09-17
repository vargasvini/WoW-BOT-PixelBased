#NoEnv
#MaxThreadsPerHotkey 2
WinGet, wowid, list, World of Warcraft
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
MsgBox, 0,, Make sure to have the proper Keybinds&Weakauras otherwise this will NOT work. The little colored box in the top left has to be visible at all times. Deactivate all other addons besides Weakauras.`n`nF11 to START, F12 to STOP the script. `n`n############################################`nIf you move the WoW window you HAVE to reload the script.`n############################################
If ( not FileExist("Images\rested.png") or not FileExist("Images\queue.png") or not FileExist("Images\bgpop.png") or not FileExist("Images\win.png") or not FileExist("Images\deserter.png") or not FileExist("Images\dead.png"))
{
Msgbox Can't find the Images folder. Please extract ALL files from the Zip into one place. Only then the script will work!
}
F12::Reload
F11::
Sleep 2000
WinGetPos, Xw, Yw, Ww, Hw, ahk_id %wowid1%
ControlSend, , {SPACE}, ahk_id %wowid1%
global inqueue = 0
counter2 = 0
global afkcount = 0
global hasLogin =0
Loop
{
    If afkcount >= 140000
    {
        ControlSend, , {SPACE}, ahk_id %wowid1%
        Sleep, 1500
        ControlSend, , {8}, ahk_id %wowid1%
        Sleep, 3500
        ControlSend, , {9}, ahk_id %wowid1%
        Sleep, 2000
        ControlSend, , {0}, ahk_id %wowid1%
        Sleep, 1500
        afkcount = 0
    }
    if (inqueue = 0)
    {
        ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\rested.png
        If ErrorLevel = 0
        {
            Random, rand, 500, 2000
            Sleep %rand%
            ControlSend, , {8}, ahk_id %wowid1%
            Sleep 3500
            ControlSend, , {9}, ahk_id %wowid1%
            Sleep 2000
            ControlSend, , {0}, ahk_id %wowid1%
            Sleep 1500
            ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\queue.png
            If ErrorLevel = 0
            {
                inqueue = 1
            }
            afkcount += (5000 + %rand%)
        }
    }
    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\queue.png
    If ErrorLevel = 0
    {
        inqueue = 1
    }
    Sleep 3000
    afkcount += 3000
    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\bgpop.png
    If ErrorLevel = 0
    {
        ControlSend, , {F9}, ahk_id %wowid1%
        Sleep 6000
        ControlSend, , {F10}, ahk_id %wowid1%
        Sleep 6000
        ControlSend, , {SPACE}, ahk_id %wowid1%
        Sleep 5000
        ControlSend, , {7}, ahk_id %wowid1%
        Sleep 5000
        ControlSend, , {7}, ahk_id %wowid1%
        afkcount += (5355 + 5000)
        inqueue = 0
        Loop, 100
        {
            Sleep 1210
        }
        afkcount += 121000
        Random, ranSleep, 2000, 20000
        Sleep, %ranSleep%
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 484
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 282
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 922
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 3812
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 422
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 3141
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 140
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 1078
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 110
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 687
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 203
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 453
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 297
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 3657
        ControlSend, , {w Up}{d Up}, ahk_id %wowid1%
        Sleep, 300
        ControlSend, , {F6 Down}, ahk_id %wowid1%
        Sleep, 63
        ControlSend, , {F6 Up}, ahk_id %wowid1%
        Sleep, 3875
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 187
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 781
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 235
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 156
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 422
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 266
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 484
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 437
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 547
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 891
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 594
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 218
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 704
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 250
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 62
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 100
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 344
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 265
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 1938
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 750
        ControlSend, , {s Down}, ahk_id %wowid1%
        Sleep, 1344
        ControlSend, , {Space Down}, ahk_id %wowid1%
        Sleep, 312
        ControlSend, , {Space Up}, ahk_id %wowid1%
        Sleep, 719
        ControlSend, , {Space Down}, ahk_id %wowid1%
        Sleep, 469
        ControlSend, , {Space Up}, ahk_id %wowid1%
        Sleep, 1390
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 16
        ControlSend, , {s Up}, ahk_id %wowid1%
        Sleep, 2391
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 187
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 938
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 218
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 297
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 1047
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 2422
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 266
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 484
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 562
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 375
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 375
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 204
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 125
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 140
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 63
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 547
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 100
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 1656
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 641
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 125
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 172
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 296
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 1750
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 172
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 703
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 532
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 500
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 593
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 188
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 375
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 156
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 281
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 141
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 500
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 438
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 437
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 344
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 1375
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 609
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 1000
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 1594
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 1281
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 266
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 31
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 100
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 6859
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 281
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 688
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 47
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 265
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 94
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 594
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 640
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 141
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 78
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 328
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 797
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 219
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 2000
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 422
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 2172
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 406
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 859
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 281
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 266
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 1484
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 375
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 500
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 204
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 578
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 484
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 797
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 2344
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 140
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 610
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 547
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 546
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 204
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 593
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 672
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 1344
        ControlSend, , {w Up}, ahk_id %wowid1%
        Sleep, 2766
        ControlSend, , {w Down}, ahk_id %wowid1%
        Sleep, 3140
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 360
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 343
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 610
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 1250
        ControlSend, , {d Up}, ahk_id %wowid1%
        Sleep, 812
        ControlSend, , {d Down}, ahk_id %wowid1%
        Sleep, 860
        ControlSend, , {d Up}{w Up}, ahk_id %wowid1%
        ControlSend, , {F6 Down}, ahk_id %wowid1%
        Sleep, 63
        ControlSend, , {F6 Up}, ahk_id %wowid1%

        Loop, 10
        {
            Sleep 2000
        }
        afkcount += 20000
        inqueue = 0
        ControlSend, , {SPACE}, ahk_id %wowid1%
    }

    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\win.png
    If ErrorLevel = 0
    {
        Random, rand, 3000, 5000
        Sleep %rand%
        ControlSend, , {W}, ahk_id %wowid1%
        ControlSend, , {F8}, ahk_id %wowid1%
        Sleep 13000
        inqueue = 0
        afkcount += 13000
    }

    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\deserter.png
    If ErrorLevel = 0
    {
        Sleep 10000
        afkcount += 10000
        inqueue = 0
    }

    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\dead.png
    If ErrorLevel = 0
    {
        Random, rand, 500, 1000
        Sleep %rand%
        ControlSend, , {W}, ahk_id %wowid1%
        ControlSend, , {7}, ahk_id %wowid1%
        Loop, 30
        {
            Sleep 1000
            ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\win.png
            If ErrorLevel = 0
            {
                Random, rand, 3000, 5000
                Sleep %rand%
                ControlSend, , {W}, ahk_id %wowid1%
                ControlSend, , {F8}, ahk_id %wowid1%
                Sleep 13000
                inqueue = 0
                afkcount += 13000
                break
            }
        }
        inqueue = 0
    }

    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\onbg.png
    If ErrorLevel = 0
    {
        Sleep, 200000
        ControlSend, , {SPACE}, ahk_id %wowid1%
    }

    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\onbg.png
    If ErrorLevel = 1
    {
        Sleep, 1000
        ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\gold.png
        If ErrorLevel = 1
        {
            Sleep, 1000
            ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\win.png
            If ErrorLevel = 1
            {
                Sleep, 1000
                ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\queue.png
                If ErrorLevel = 1
                {
                    Sleep, 1000
                    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\rested.png
                    If ErrorLevel = 1
                    {
                        Sleep, 1000
                        ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\queue.png
                        If ErrorLevel = 1
                        {
                            Sleep, 1000
                            ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\rested.png
                            If ErrorLevel = 1
                            {
                                Sleep, 1000
                                ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\bgpop.png
                                If ErrorLevel = 1
                                {
                                    Sleep, 1000
                                    ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\deserter.png
                                    If ErrorLevel = 1
                                    {
                                        Sleep, 1000
                                        ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\dead.png
                                        If ErrorLevel = 1
                                        {
                                            ImageSearch, FoundX1, FoundY1, Xw+5, Yw+5, Xw+25, Yw+50, *20 Images\onbg.png
                                            If ErrorLevel = 1
                                            {
                                                if(hasLogin = 0)
                                                {
                                                    hasLogin =1
                                                    Process, Exist, WowClassic.exe
                                                    if ( ErrorLevel != 0 )
                                                    {
                                                        Process, Close, WowClassic.exe
                                                    }

                                                    Process, Exist, Battle.net.exe
                                                    if ( ErrorLevel != 0 )
                                                    {
                                                        Process, Close, Battle.net.exe
                                                    }

                                                    Run, "C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe"
                                                    Sleep, 12000
                                                    Send {Enter}
                                                    Sleep, 25000
                                                    Send {Enter}
                                                    Sleep, 30000
                                                    WinGet, wowid, list, World of Warcraft
                                                    CoordMode, Pixel, Screen
                                                    CoordMode, Mouse, Screen
                                                    WinGetPos, Xw, Yw, Ww, Hw, ahk_id %wowid1%
                                                    Sleep, 3000
                                                    afkcount = 0
                                                    inqueue = 0
                                                    hasLogin =0
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    Sleep, 13000
    afkcount += 13000
}