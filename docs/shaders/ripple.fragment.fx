#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    // Color
    vec2 offset_uv = 2.0 * model_uv + 1.0;
    float radius = length(offset_uv);
    offset_uv = offset_uv * (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;


    FragColor = texture(image, offset_uv + model_uv);
}
