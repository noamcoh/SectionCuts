Shader "Custom/StencilMask"
{
    Properties
    {
        [IntRange] _StencilID ("Stencil ID", Range(0, 255)) = 0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "Queue" = "Geometry-1" "RenderPipeline" = "UniversalPipeline" }
        LOD 100

        Pass
        {
            Blend Zero One
            ZWrite Off

            Stencil 
            {
                Ref [_StencilID]
                Comp Always
                Pass Replace
            }
        }
    }
}
