/// @description 
if (Texts.next < 4) {
	for (var i = 0; i < oCam.camw * 2; i++) {
		if (random(1) > .995) instance_create_layer(oCam.camxr + i, oCam.camyr - oCam.camh * .5, "Instances", oDrop);
	}
}