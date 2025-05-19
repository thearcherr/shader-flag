precision mediump float;

uniform vec3 uColor;
varying vec2 vUv;
uniform sampler2D uTexture;

varying float vElevation;

void main() {
    vec4 texture = texture2D(uTexture, vUv);
    texture.rgb *= vElevation * 2.5 + 0.75;
    gl_FragColor = texture;
}