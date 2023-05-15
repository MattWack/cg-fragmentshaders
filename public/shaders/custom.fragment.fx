#version 300 es
#define PI 3.1415926538
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {

    vec4 color = texture(image, model_uv);

    float model_radius = length(model_uv - 0.5);
    float scanline = (1.0 + sin(time)) / 2.0;

    if ((model_uv.x > (scanline - 0.1)) && (model_uv.x < (scanline + 0.1))){
        color.g = 0.0;
        color.b = 0.0;
    }
    scanline = (1.0 + sin(.8 * time)) / 2.0;
    if ((model_uv.y > (scanline - 0.1)) && (model_uv.y < (scanline + 0.1))){
        color.r = 0.0;
        color.b = 0.0;
    }

    scanline = (1.0 + sin(time + PI)) / 2.0;
    if((model_radius > (scanline - 0.1)) && (model_radius < (scanline + 0.1))){
        color.r = 0.0;
        color.g = 0.0;
    }

    FragColor = color;
}
