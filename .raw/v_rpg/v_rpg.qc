
$origin -8 -12 -2 0
$ambientboost
$opaque

$modelname weapons/v_rpg

$model "Leak RPG" rpg_reference

$surfaceprop weapon

$contents notsolid

$illumposition -15.284 -41.608 -10.794

$cdmaterials models/weapons/v_ml
$cdmaterials models/weapons/v_hand

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0
$attachment "laser" "muzzle" -9 -5 0.5 rotate 0 0 0
$attachment "laser_end" "muzzle" 100 -5 0.5 rotate 0 0 0

$definebone "base" "" -16.057949 -24.995756 64.720612 0 0 89.999982 0 0 0 0 0 0
$definebone "muzzle" "base" -0.454765 0.279387 29.004244 -89.999982 0 0 0 0 0 0 0 0
$definebone "arm" "base" 1.26345 -8.255469 7.260771 0 0 0 0 0 0 0 0 0

$sequence idle1 {
	v_rpg_anims/idle1
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence idle1_is {
	v_rpg_anims/idle1
	activity "ACT_VM_IDLE_SILENCED" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence inspect1 {
	v_rpg_anims/idle1
	activity "ACT_VM_INSPECT" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence inspect2 {
	v_rpg_anims/idle1
	activity "ACT_VM_INSPECT_ALT" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence walk {
	v_rpg_anims/idle1
	activity "ACT_VM_WALK" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence draw {
	v_rpg_anims/draw
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	snap
	fps 30
}

$sequence holster {
	v_rpg_anims/holster
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	snap
	fps 30
}

$sequence fire {
	v_rpg_anims/fire
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence fire_is1 {
	v_rpg_anims/fire
	activity "ACT_VM_PRIMARYATTACK_IRONSIGHTED1" 1
	{ event 5001 0 "" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence fire_is2 {
	v_rpg_anims/fire
	activity "ACT_VM_PRIMARYATTACK_IRONSIGHTED2" 1
	{ event 5001 0 "" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence fire_is3 {
	v_rpg_anims/fire
	activity "ACT_VM_PRIMARYATTACK_IRONSIGHTED3" 1
	{ event 5001 0 "" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence reload {
	v_rpg_anims/reload
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
}

$sequence up_to_down {
	v_rpg_anims/up_to_down
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	transition "Idle" "Low"
	fps 30
}

$sequence down_to_up {
	v_rpg_anims/down_to_up
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	fadein 0.2
	fadeout 0.2
	transition "Low" "Idle"
	fps 30
}

$sequence down_idle {
	v_rpg_anims/down_idle
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "Low"
	fps 1
	loop
	frames 0 1
}

$sequence sprint {
	v_rpg_anims/down_idle
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.5
	fadeout 0.7
	node "Low"
	fps 1
	loop
	frames 0 1
}
