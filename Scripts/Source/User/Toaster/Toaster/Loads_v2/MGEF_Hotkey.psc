Scriptname Toaster:Loads_v2:MGEF_Hotkey extends ActiveMagicEffect

Toaster:Loads_v2:QST_Manager Property a0aLOADS_QST_Manager Auto
String Property HotkeyFunction Auto
Keyword Property HotkeyKeyword Auto
Potion Property HotkeyPotion Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
    ; ------------------------------------------------------------------------------
    ; Iterates over a formlist and copies its values to an array.
    ; -------------------------------------------------------------------------------
    akCaster.additem(HotkeyPotion, 1, True)
    Var[] varArArguments = None
    If HotkeyKeyword
        varArArguments = new Var[1]
        varArArguments[1] = HotkeyKeyword
    EndIf
    a0aLOADS_QST_Manager.CallFunction(HotkeyFunction, varArArguments)
EndEvent
