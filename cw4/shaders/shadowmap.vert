#version 450

layout(location = 0) in vec3 position;

layout( set = 0, binding = 0 ) uniform UScene 
{ 
	mat4 MVP; 
} uScene; 

void main()
{
	gl_Position = uScene.MVP * vec4(position, 1.0);
}