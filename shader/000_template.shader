﻿Shader "Unlit/000_template"
{
    Properties
    {
        
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag


            #include "UnityCG.cginc"

            struct a2v
            {
                float4 vertex : POSITION;

            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
            };


            v2f vert (a2v v)
            {   
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);

                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {

                return fixed4(1.0,0.5,0.0,1.0);
            }
            ENDCG
        }
    }
}
