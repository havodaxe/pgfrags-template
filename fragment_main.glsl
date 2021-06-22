#version 330

out vec4 outputColor;

void main()
{
	vec2 normCoords = gl_FragCoord.xy / 500.0f;
	outputColor = vec4(normCoords, 0.5f, 1.0f);
}
