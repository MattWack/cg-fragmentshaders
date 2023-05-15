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
    vec3 color = round(4.0*texture(image, model_uv).rgb) / 4.0;

    FragColor = vec4(color , texture(image, model_uv).a);
}
