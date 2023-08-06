
$origin 4 0 68

$modelname weapons/c_rpg

$cdmaterials models/weapons/v_rocket_launcher 
$cdmaterials models/weapons/v_hand

$include _v_models_hl2_definebones_l.qci

$model missilelauncher c_leak_ml_reference

$cdmaterials models/weapons/v_ml
$cdmaterials models/weapons/v_hand

$attachment "muzzle" "muzzle" 0 0 0
$attachment "laser" "base" 5 -2 22
$attachment "laser_end" "muzzle" 100.00 -5.00 0.50

$sequence idle1 "Idle01_arms" loop fps 30 activity ACT_VM_IDLE 1 node Idle
$sequence draw "Draw_arms" fps 30 snap activity ACT_VM_DRAW 1 node Idle
$sequence fire "Fire_arms" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event CL_EVENT_MUZZLEFLASH0 0 "RPG muzzle" } Node Fire
$sequence reload "Reload_arms" fps 30 activity ACT_VM_RELOAD 1 node Idle
$sequence up_to_down "up_to_down_arms" fps 15 ACT_VM_IDLE_TO_LOWERED 1 transition Idle Low
$sequence down_to_up "down_to_up_arms" fps 15 ACT_VM_LOWERED_TO_IDLE 1 transition Low Idle
$sequence down_idle "down_idle_arms" loop fps 30 ACT_VM_IDLE_LOWERED 1 node Low
