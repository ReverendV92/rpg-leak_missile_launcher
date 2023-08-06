// Created by Crowbar 0.74

$modelname "hl22003_rocket_launcher.mdl"

$bodygroup "studio"
{
	studio "w_rpg_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -1.035 -18.885 3.283

$cdmaterials "models\weapons\hl22003\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 13.08 0.25 -5.1 rotate 12.96 -0.39 -91.97

$cbox 0 0 0 0 0 0

$bbox -3.133 -6.063 -4.927 40.903 3.993 11.493

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.71932 0.282627 12.461602 88.326429 177.528802 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5.000002 -1.5 -5.000001 -0.000001 0 0 0 0 0 0 0 0


$animation "a_idle" "hl22003_rocket_launcher_anims\a_idle.smd" {
	fps 30
}

$animation "a_attack1" "hl22003_rocket_launcher_anims\a_attack1.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	fadein 0.2
	fadeout 0.2
}

$sequence "attack1" {
	"a_attack1"
	activity "ACT_RANGE_ATTACK_RPG" 1
	{ event 5003 0 "2" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
}

$collisionmodel "hl22003_rocket_launcher_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
