#version 330

out vec4 outputColor;

uniform vec2 resolution;

void main()
{
  vec2 normCoords = gl_FragCoord.xy / resolution;
  outputColor = vec4(normCoords, 0.5f, 1.0f);
}
