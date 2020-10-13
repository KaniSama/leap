//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const float speed = 0.002;
const float Xfrequency = 3.0;
const float Xsize = 0.005;

uniform float time;
uniform float pixelW;

void main()
{
	float horw = sin(time * speed * v_vTexcoord.y * Xfrequency) * (/*Xsize*/pixelW * v_vTexcoord.x);
	vec4 distort = v_vColour * texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + horw, v_vTexcoord.y));
	
	gl_FragColor = distort;
}
