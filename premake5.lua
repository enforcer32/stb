project "stb"
kind "StaticLib"
language "C"
staticruntime "off"

targetdir ("Build/" .. outputdir .. "/%{prj.name}")
objdir ("Build/Intermediates/" .. outputdir .. "/%{prj.name}")

files
{
	"include/stb/stb_image.h",
	"src/stb_image.cpp"
}

includedirs
{
	"include"
}

filter "system:windows"
	systemversion "latest"

filter "configurations:Debug"
	runtime "Debug"
	symbols "on"

filter "configurations:Release"
	runtime "Release"
	optimize "on"
