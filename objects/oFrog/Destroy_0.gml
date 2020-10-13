/// @description 
var leg1 = instance_create_layer(x, y, "Instances", oFrogRemains);
var leg2 = instance_create_layer(x, y, "Instances", oFrogRemains);
var body = instance_create_layer(x, y, "Instances", oFrogRemains);

leg1.sprite_index = sFrogLegs;
leg1.image_index = 0;

leg2.sprite_index = sFrogLegs;
leg2.image_index = 1;

body.sprite_index = sFrogBody;

Texts.next++;