cbuffer MVPBuffer : register(b0)
{
	float4x4 MVP;
};

//Texture2D gText: register(t0);
//SamplerState gsampler: register(s0);

struct VS_OUTPUT
{
	float4 position:SV_POSITION;
	float2 uv:UV;
};

struct VS_INPUT
{
	float3 pos:POSITION;
	float2 uv:UV;
};

VS_OUTPUT VSMain(VS_INPUT input)
{
	VS_OUTPUT output;

	output.position = mul(MVP,float4(input.pos, 1.0f));
	output.uv = input.uv;

	return output;
}

struct PS_OUTPUT
{
	float4 color:SV_TARGET;
};

PS_OUTPUT PSMain(VS_OUTPUT input)
{
	PS_OUTPUT output;

    output.color = float4(input.uv.r, input.uv.g,0.0f,1.0f);

	return output;
}