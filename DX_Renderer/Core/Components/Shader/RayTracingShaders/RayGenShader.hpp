#pragma once
#include "../Shader.hpp"

namespace DXR
{
	struct RayGenShader: public Shader
	{
	public:
	private:
		std::wstring filepath;
		std::wstring entryPoint;
		std::wstring UniqueID;

		//SUBOBJECT Structures
		D3D12_EXPORT_DESC shader_export_desc = {};
		D3D12_DXIL_LIBRARY_DESC library_desc = {};
		D3D12_STATE_SUBOBJECT shader = {};
	public:
		static RayGenShader CompileShaderFromFile(const std::wstring& filename, const std::wstring& entryPoint);
		D3D12_STATE_SUBOBJECT GenerateShaderExport();
		std::wstring& GetUniqueID();
	private:
		RayGenShader(const std::wstring& filepath,const std::wstring& entryPoint);
	};
}
