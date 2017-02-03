
set(CMAKE_AUTOMOC_RELAXED_MODE TRUE)

#modules
include("${TOOLS_CMAKE_DIR}/modules/FbxSdk.cmake")

#---

add_subdirectory("Code/Sandbox/Libs/CryQt")

set(EDITOR_DIR "Code/Sandbox/EditorQt" )
add_subdirectory("Code/Sandbox/EditorQt")
add_subdirectory("Code/Sandbox/Plugins/3DConnexionPlugin")
add_subdirectory("Code/Sandbox/Plugins/EditorConsole")

add_subdirectory("Code/Sandbox/Plugins/EditorCommon")
add_subdirectory("Code/Sandbox/EditorInterface")

add_subdirectory("Code/Sandbox/Plugins/CryDesigner")
add_subdirectory("Code/Sandbox/Plugins/EditorAudioControlsEditor")
add_subdirectory("Code/Sandbox/Plugins/EditorAudioControlsEditor/common")
if(AUDIO_FMOD)
	add_subdirectory("Code/Sandbox/Plugins/EditorAudioControlsEditor/EditorFmod")
endif()
if(AUDIO_SDL_MIXER)
	add_subdirectory("Code/Sandbox/Plugins/EditorAudioControlsEditor/EditorSDLMixer")
endif()
if (AUDIO_WWISE)
	add_subdirectory("Code/Sandbox/Plugins/EditorAudioControlsEditor/EditorWwise")
endif()
add_subdirectory("Code/Sandbox/Plugins/EditorAnimation")
add_subdirectory("Code/Sandbox/Plugins/EditorDynamicResponseSystem")
add_subdirectory("Code/Sandbox/Plugins/EditorEnvironment")
add_subdirectory("Code/Sandbox/Plugins/EditorParticle")
if (PLUGIN_SCHEMATYC)
	add_subdirectory("Code/Sandbox/Plugins/EditorSchematyc")
endif()
add_subdirectory("Code/Sandbox/Plugins/EditorTrackView")
add_subdirectory("Code/Sandbox/Plugins/EditorGameSDK")
add_subdirectory("Code/Sandbox/Plugins/FbxPlugin")
add_subdirectory("Code/Sandbox/Plugins/MeshImporter")
add_subdirectory("Code/Sandbox/Plugins/PerforcePlugin")
add_subdirectory("Code/Sandbox/Plugins/SandboxPythonBridge")
add_subdirectory("Code/Sandbox/Plugins/SamplePlugin")
add_subdirectory("Code/Sandbox/Plugins/VehicleEditor")
add_subdirectory("Code/Sandbox/Plugins/SmartObjectEditor")
add_subdirectory("Code/Sandbox/Plugins/DialogEditor")
add_subdirectory("Code/Sandbox/Plugins/MFCToolsPlugin")

#libs
add_subdirectory ("Code/Libs/prt")
add_subdirectory ("Code/Libs/python")
add_subdirectory ("Code/Libs/tiff")
