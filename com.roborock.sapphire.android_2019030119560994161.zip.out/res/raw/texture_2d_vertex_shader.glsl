attribute vec2 a_Position;
attribute vec2 a_TextureCoordinates;

uniform float u_XDelta;
uniform float u_YDelta;

varying vec2 v_TextureCoordinates;

void main()
{
    v_TextureCoordinates = a_TextureCoordinates;
    gl_Position = vec4(a_Position.x + u_XDelta, a_Position.y + u_YDelta, 1.0, 1.0);
}