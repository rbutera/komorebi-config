#Requires AutoHotkey v2.0
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; Special keybind for F15 tapped by itself
F15::
{
    KeyWait "F15"
    if (A_PriorKey = "F15")
    {
        Komorebic("promote")
    }
}

; mod1 bindings (F15)
F15 & Enter::Komorebic("promote")
F15 & Space::Komorebic("cycle-layout next")
F15 & h::Komorebic("resize-axis horizontal decrease")
F15 & l::Komorebic("resize-axis horizontal increase")
F15 & ,::Komorebic("resize-axis vertical decrease")
F15 & .::Komorebic("resize-axis vertical increase")
F15 & j::Komorebic("cycle-focus previous")
F15 & k::Komorebic("cycle-focus next")
F15 & p::Komorebic("focus-monitor previous")
F15 & n::Komorebic("focus-monitor next")
F15 & z::Komorebic("retile")
F15 & t::Komorebic("toggle-float")
F15 & i::Komorebic("print-window-info")
F15 & w::Komorebic("focus-monitor 0")
F15 & e::Komorebic("focus-monitor 1")
F15 & r::Komorebic("focus-monitor 2")
F15 & q::Komorebic("focus-monitor 3")
F15 & a::Komorebic("change-layout tall")
F15 & s::Komorebic("change-layout wide")
F15 & d::Komorebic("toggle-monocle")
F15 & f::Komorebic("change-layout columns")

; mod2 bindings (F16)
F16 & Space::Komorebic("cycle-layout previous")
F16 & h::Komorebic("move-to-monitor previous")
F16 & l::Komorebic("move-to-monitor next")
F16 & j::Komorebic("move left")
F16 & k::Komorebic("move right")
F16 & z::Komorebic("reload-configuration")
F16 & Left::Komorebic("move-to-workspace prev")
F16 & Right::Komorebic("move-to-workspace next")
F16 & 1::Komorebic("move-to-workspace 0")
F16 & 2::Komorebic("move-to-workspace 1")
F16 & 3::Komorebic("move-to-workspace 2")
F16 & 4::Komorebic("move-to-workspace 3")
F16 & 5::Komorebic("move-to-workspace 4")
F16 & 6::Komorebic("move-to-workspace 5")
F16 & 7::Komorebic("move-to-workspace 6")
F16 & 8::Komorebic("move-to-workspace 7")
F16 & 9::Komorebic("move-to-workspace 8")
F16 & 0::Komorebic("move-to-workspace 9")
F16 & w::Komorebic("move-to-monitor 0")
F16 & e::Komorebic("move-to-monitor 1")
F16 & r::Komorebic("move-to-monitor 2")
F16 & q::Komorebic("move-to-monitor 3")
F16 & t::Komorebic("toggle-pause")
