// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "!Mai Lofi!/Eye Wedge Shader"
{
	Properties
	{
		_NoiseMap1("Noise Map", 2D) = "white" {}
		_Texture2("Texture 1", 2D) = "white" {}
		_Texture0("Texture 0", 2D) = "white" {}
		_NoiseMapStrength("NoiseMapStrength", Range( 0 , 1)) = 0.05
		_RingPanner("RingPanner", Range( 0 , 1)) = 0
		_emiss("emiss", Range( 0 , 4)) = 1
		_RingPannerSpeed("RingPannerSpeed", Vector) = (1,0,0,0)
		_NoiseMapSize("NoiseMapSize", Vector) = (1,1,0,0)
		_NoiseMapPannerSpeed("NoiseMapPannerSpeed", Vector) = (0.2,0.2,0,0)
		_BaseTexture("Base Texture", 2D) = "white" {}
		_Tint("Tint", Color) = (0.745283,0,0,0)
		[Toggle]_EyeType2("Eye Type 2", Float) = 0
		[Toggle]_EyeType3("Eye Type 3", Float) = 0
		[Toggle]_EyeType1("Eye Type 1", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 4.6
		#pragma surface surf Standard alpha:fade keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float4 _Tint;
		uniform sampler2D _BaseTexture;
		uniform float _EyeType2;
		uniform sampler2D _NoiseMap1;
		uniform float2 _NoiseMapSize;
		uniform float2 _NoiseMapPannerSpeed;
		uniform float _NoiseMapStrength;
		uniform float2 _RingPannerSpeed;
		uniform float _RingPanner;
		uniform float _EyeType1;
		uniform sampler2D _Texture2;
		uniform float _EyeType3;
		uniform sampler2D _Texture0;
		uniform float _emiss;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 temp_output_1_0_g50 = _NoiseMapSize;
			float2 appendResult10_g50 = (float2(( (temp_output_1_0_g50).x * i.uv_texcoord.x ) , ( i.uv_texcoord.y * (temp_output_1_0_g50).y )));
			float2 temp_output_11_0_g50 = _NoiseMapPannerSpeed;
			float2 panner18_g50 = ( ( (temp_output_11_0_g50).x * _Time.y ) * float2( 1,0 ) + i.uv_texcoord);
			float2 panner19_g50 = ( ( _Time.y * (temp_output_11_0_g50).y ) * float2( 0,1 ) + i.uv_texcoord);
			float2 appendResult24_g50 = (float2((panner18_g50).x , (panner19_g50).y));
			float2 _Vector0 = float2(1,1);
			float4 appendResult408 = (float4(( _RingPannerSpeed.x * _RingPanner ) , _RingPannerSpeed.y , 0.0 , 0.0));
			float2 temp_output_47_0_g50 = appendResult408.xy;
			float2 uv_TexCoord78_g50 = i.uv_texcoord * float2( 2,2 );
			float2 temp_output_31_0_g50 = ( uv_TexCoord78_g50 - float2( 1,1 ) );
			float2 appendResult39_g50 = (float2(frac( ( atan2( (temp_output_31_0_g50).x , (temp_output_31_0_g50).y ) / 6.28318548202515 ) ) , length( temp_output_31_0_g50 )));
			float2 panner54_g50 = ( ( (temp_output_47_0_g50).x * _Time.y ) * float2( 1,0 ) + appendResult39_g50);
			float2 panner55_g50 = ( ( _Time.y * (temp_output_47_0_g50).y ) * float2( 0,1 ) + appendResult39_g50);
			float2 appendResult58_g50 = (float2((panner54_g50).x , (panner55_g50).y));
			float2 temp_output_1_0_g49 = _NoiseMapSize;
			float2 appendResult10_g49 = (float2(( (temp_output_1_0_g49).x * i.uv_texcoord.x ) , ( i.uv_texcoord.y * (temp_output_1_0_g49).y )));
			float2 temp_output_11_0_g49 = _NoiseMapPannerSpeed;
			float2 panner18_g49 = ( ( (temp_output_11_0_g49).x * _Time.y ) * float2( 1,0 ) + i.uv_texcoord);
			float2 panner19_g49 = ( ( _Time.y * (temp_output_11_0_g49).y ) * float2( 0,1 ) + i.uv_texcoord);
			float2 appendResult24_g49 = (float2((panner18_g49).x , (panner19_g49).y));
			float2 temp_output_47_0_g49 = appendResult408.xy;
			float2 uv_TexCoord78_g49 = i.uv_texcoord * float2( 2,2 );
			float2 temp_output_31_0_g49 = ( uv_TexCoord78_g49 - float2( 1,1 ) );
			float2 appendResult39_g49 = (float2(frac( ( atan2( (temp_output_31_0_g49).x , (temp_output_31_0_g49).y ) / 6.28318548202515 ) ) , length( temp_output_31_0_g49 )));
			float2 panner54_g49 = ( ( (temp_output_47_0_g49).x * _Time.y ) * float2( 1,0 ) + appendResult39_g49);
			float2 panner55_g49 = ( ( _Time.y * (temp_output_47_0_g49).y ) * float2( 0,1 ) + appendResult39_g49);
			float2 appendResult58_g49 = (float2((panner54_g49).x , (panner55_g49).y));
			float2 temp_output_1_0_g48 = _NoiseMapSize;
			float2 appendResult10_g48 = (float2(( (temp_output_1_0_g48).x * i.uv_texcoord.x ) , ( i.uv_texcoord.y * (temp_output_1_0_g48).y )));
			float2 temp_output_11_0_g48 = _NoiseMapPannerSpeed;
			float2 panner18_g48 = ( ( (temp_output_11_0_g48).x * _Time.y ) * float2( 1,0 ) + i.uv_texcoord);
			float2 panner19_g48 = ( ( _Time.y * (temp_output_11_0_g48).y ) * float2( 0,1 ) + i.uv_texcoord);
			float2 appendResult24_g48 = (float2((panner18_g48).x , (panner19_g48).y));
			float2 temp_output_47_0_g48 = appendResult408.xy;
			float2 uv_TexCoord78_g48 = i.uv_texcoord * float2( 2,2 );
			float2 temp_output_31_0_g48 = ( uv_TexCoord78_g48 - float2( 1,1 ) );
			float2 appendResult39_g48 = (float2(frac( ( atan2( (temp_output_31_0_g48).x , (temp_output_31_0_g48).y ) / 6.28318548202515 ) ) , length( temp_output_31_0_g48 )));
			float2 panner54_g48 = ( ( (temp_output_47_0_g48).x * _Time.y ) * float2( 1,0 ) + appendResult39_g48);
			float2 panner55_g48 = ( ( _Time.y * (temp_output_47_0_g48).y ) * float2( 0,1 ) + appendResult39_g48);
			float2 appendResult58_g48 = (float2((panner54_g48).x , (panner55_g48).y));
			o.Emission = ( _Tint * tex2D( _BaseTexture, ( (( _EyeType2 )?( ( ( (tex2D( _NoiseMap1, ( appendResult10_g50 + appendResult24_g50 ) )).rg * _NoiseMapStrength ) + ( _Vector0 * appendResult58_g50 ) ) ):( float2( 0,0 ) )) + (( _EyeType1 )?( ( ( (tex2D( _Texture2, ( appendResult10_g49 + appendResult24_g49 ) )).rg * _NoiseMapStrength ) + ( _Vector0 * appendResult58_g49 ) ) ):( float2( 0,0 ) )) + (( _EyeType3 )?( ( ( (tex2D( _Texture0, ( appendResult10_g48 + appendResult24_g48 ) )).rg * _NoiseMapStrength ) + ( _Vector0 * appendResult58_g48 ) ) ):( float2( 0,0 ) )) ) ) * _emiss ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "MaiWedgeGUI"
}
/*ASEBEGIN
Version=18800
402;72;961;634;240.0414;568.0427;2.17006;True;False
Node;AmplifyShaderEditor.Vector2Node;240;-1075.427,361.795;Float;False;Property;_RingPannerSpeed;RingPannerSpeed;6;0;Create;True;0;0;0;False;0;False;1,0;0.1,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;397;-858.1347,229.9848;Float;False;Property;_RingPanner;RingPanner;4;0;Create;True;0;0;0;False;0;False;0;0.048;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;-592.564,344.1512;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;410;147.1229,-411.8152;Float;True;Property;_Texture2;Texture 1;1;0;Create;True;0;0;0;False;0;False;e96dc2a3318c09b4a9d4f669e017a1b9;1e42cf14fed5bda4baaed870c02a0172;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.Vector2Node;241;-453.1549,60.0728;Float;False;Property;_NoiseMapPannerSpeed;NoiseMapPannerSpeed;8;0;Create;True;0;0;0;False;0;False;0.2,0.2;0.21,0.12;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TexturePropertyNode;394;-112.2649,524.9611;Float;True;Property;_Texture0;Texture 0;2;0;Create;True;0;0;0;False;0;False;bdbe94d7623ec3940947b62544306f1c;bdbe94d7623ec3940947b62544306f1c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;411;-210.8509,-462.0572;Float;True;Property;_NoiseMap1;Noise Map;0;0;Create;True;0;0;0;False;0;False;a90426622e3f5a04db049a20fa97ebeb;a90426622e3f5a04db049a20fa97ebeb;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.Vector2Node;239;-400.5544,-68.55794;Float;False;Property;_NoiseMapSize;NoiseMapSize;7;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;279;-398.0662,273.6643;Float;False;Constant;_Vector0;Vector 0;7;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;408;-329.8953,423.0626;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;234;-484.9729,179.4071;Float;False;Property;_NoiseMapStrength;NoiseMapStrength;3;0;Create;True;0;0;0;False;0;False;0.05;0.4894778;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;316;97.76781,66.88756;Inherit;False;RadialUVDistortion;-1;;50;051d65e7699b41a4c800363fd0e822b2;0;7;60;SAMPLER2D;;False;1;FLOAT2;0,0;False;11;FLOAT2;0,0;False;65;FLOAT;0;False;68;FLOAT2;0,0;False;47;FLOAT2;0,0;False;29;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;386;111.4671,289.8142;Inherit;False;RadialUVDistortion;-1;;48;051d65e7699b41a4c800363fd0e822b2;0;7;60;SAMPLER2D;_Sampler60386;False;1;FLOAT2;0,0;False;11;FLOAT2;0,0;False;65;FLOAT;0;False;68;FLOAT2;0,0;False;47;FLOAT2;0,0;False;29;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;387;107.6671,-139.5857;Inherit;False;RadialUVDistortion;-1;;49;051d65e7699b41a4c800363fd0e822b2;0;7;60;SAMPLER2D;_Sampler60387;False;1;FLOAT2;0,0;False;11;FLOAT2;0,0;False;65;FLOAT;0;False;68;FLOAT2;0,0;False;47;FLOAT2;0,0;False;29;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;391;543.6122,302.3824;Inherit;False;Property;_EyeType3;Eye Type 3;12;0;Create;True;0;0;0;False;0;False;0;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;388;533.9697,126.3467;Inherit;False;Property;_EyeType2;Eye Type 2;11;0;Create;True;0;0;0;False;0;False;0;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;392;566.637,-79.21616;Inherit;False;Property;_EyeType1;Eye Type 1;13;0;Create;True;0;0;0;False;0;False;1;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;390;820.004,91.77003;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;276;965.4955,20.50498;Inherit;True;Property;_BaseTexture;Base Texture;9;0;Create;True;0;0;0;False;0;False;-1;5a5b20f962bdb22428da08e032649287;fe3cab0ec392bce4eac35227fa4f1509;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;317;933.9544,-251.1765;Float;False;Property;_Tint;Tint;10;0;Create;True;0;0;0;False;0;False;0.745283,0,0,0;0,1,0.7093437,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;366;920.5067,338.3135;Float;False;Property;_emiss;emiss;5;0;Create;True;0;0;0;False;0;False;1;0.95;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;318;1327.814,-38.37267;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;230;1656.835,-174.857;Float;False;True;-1;6;MaiWedgeGUI;0;0;Standard;!Mai Lofi!/Eye Wedge Shader;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;1;11.4;10;25;True;0.5;True;2;5;False;-1;10;False;-1;0;1;False;-1;1;False;-1;1;False;-1;1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;409;0;240;1
WireConnection;409;1;397;0
WireConnection;408;0;409;0
WireConnection;408;1;240;2
WireConnection;316;60;411;0
WireConnection;316;1;239;0
WireConnection;316;11;241;0
WireConnection;316;65;234;0
WireConnection;316;68;279;0
WireConnection;316;47;408;0
WireConnection;386;60;394;0
WireConnection;386;1;239;0
WireConnection;386;11;241;0
WireConnection;386;65;234;0
WireConnection;386;68;279;0
WireConnection;386;47;408;0
WireConnection;387;60;410;0
WireConnection;387;1;239;0
WireConnection;387;11;241;0
WireConnection;387;65;234;0
WireConnection;387;68;279;0
WireConnection;387;47;408;0
WireConnection;391;1;386;0
WireConnection;388;1;316;0
WireConnection;392;1;387;0
WireConnection;390;0;388;0
WireConnection;390;1;392;0
WireConnection;390;2;391;0
WireConnection;276;1;390;0
WireConnection;318;0;317;0
WireConnection;318;1;276;0
WireConnection;318;2;366;0
WireConnection;230;2;318;0
ASEEND*/
//CHKSM=6D0A8E901B3F41C085070878510682ABCD306E42