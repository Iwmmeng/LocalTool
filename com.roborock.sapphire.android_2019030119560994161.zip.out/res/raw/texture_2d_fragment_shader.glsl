precision mediump float;

uniform sampler2D u_TextureUnit;
uniform float u_AlphaRate;

varying vec2 v_TextureCoordinates;

void main()
{
    vec4 c = texture2D(u_TextureUnit, v_TextureCoordinates);
    gl_FragColor = vec4(c.r, c.g, c.b, c.a * u_AlphaRate);
}