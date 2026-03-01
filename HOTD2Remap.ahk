#SingleInstance Force

shotCount := 0
maxShots := 6

; ===== MANUAL RELOAD (A button on gun emulates SPACE) =====
Space::
{
    global shotCount

    SendEvent "{RButton down}"
    Sleep 20
    SendEvent "{RButton up}"

    shotCount := 0
}

; ===== TRIGGER (Trigger emulates LEFT CLICK) =====
~LButton::
{
    global shotCount, maxShots

    shotCount += 1

    if (shotCount >= maxShots)
    {
        Sleep 80

        SendEvent "{RButton down}"
        Sleep 20
        SendEvent "{RButton up}"

        shotCount := 0
    }
}

; ===== EXTRA KEY BINDS =====

; B -> Enter (B button on gun emulates ENTER)	
b::Enter

; Q -> Down Arrow (Pause button on gun emulates DOWN ARROW)
q::Down

; C -> Up Arrow (Coin button on gun emulates UP ARROW)
c::Up