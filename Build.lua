-- premake5.lua
workspace "CInput"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "CInput"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"
outputdir = OutputDir

include "WankelExternal.lua"
include "CInput/Build-CInput.lua"