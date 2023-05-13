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
    vec2 fish_uv = vec2(2.0) * model_uv - vec2(1.0, 1.0);
    float theta = atan(fish_uv.y,fish_uv.x);
    float radius =  pow(length(fish_uv), 1.5);
    fish_uv = vec2(radius * cos(theta), radius * sin(theta));
    fish_uv = 0.5*(fish_uv + vec2(1.0, 1.0));
    

    FragColor = texture(image, fish_uv);
}
