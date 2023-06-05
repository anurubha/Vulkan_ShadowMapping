#version 450

layout(location = 0) in vec3 position;

layout( set = 0, binding = 0 ) uniform UScene 
{ 
	mat4 lightMVP; 
} uScene; 

void main()
{
	float bias = 0.005;
	gl_Position = uScene.lightMVP * vec4(position, 1.0);
	gl_Position.z += bias;
}