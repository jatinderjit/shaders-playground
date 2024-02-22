// https://www.shadertoy.com/view/l3XGDs

float cells = 8.;

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord/iResolution.xy;
    vec2 lines = floor(mod(uv * cells, 2.));
    float color = mod(dot(lines, lines), 2.);
    fragColor = vec4(color, 0, 0, 0);
}