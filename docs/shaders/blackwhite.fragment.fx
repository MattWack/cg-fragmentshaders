#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    float r = texture(image, model_uv).r;
    float g = texture(image, model_uv).g;
    float b = texture(image, model_uv).b;
    float L = 0.299 * r + 0.587 * g + 0.114 * b;
    FragColor = vec4(L, L, L, 1.0);
}
