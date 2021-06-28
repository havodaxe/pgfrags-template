#version 330

out vec4 outputColor;

uniform vec2 resolution;
uniform float elapsedTime;

void main()
{
  vec2 normCoords = gl_FragCoord.xy / resolution;
  float oddTrue = mod(floor(elapsedTime), 2);
  float evenTrue = mod(floor(elapsedTime) + 1, 2);
  float goingUp = fract(elapsedTime) * oddTrue;
  float goingDown = (1 - fract(elapsedTime)) * evenTrue;
  outputColor = vec4(normCoords, goingUp + goingDown, 1.0f);
}
