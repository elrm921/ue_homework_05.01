# Makefile generated by MakefileGenerator.cs
# *DO NOT EDIT*

UNREALROOTPATH = /media/ruslan/DATA/unreal
GAMEPROJECTFILE =/home/ruslan/Documents/Unreal Projects/MyProject/MyProject.uproject

TARGETS = \
	MyProject-Linux-DebugGame  \
	MyProject-Linux-Shipping  \
	MyProject \
	MyProjectEditor-Linux-DebugGame  \
	MyProjectEditor-Linux-Shipping  \
	MyProjectEditor \
	UnrealEditor-Linux-DebugGame  \
	UnrealEditor-Linux-Shipping  \
	UnrealEditor \
	UnrealGame-Linux-DebugGame  \
	UnrealGame-Linux-Shipping  \
	UnrealGame\
	configure

BUILD = bash "$(UNREALROOTPATH)/Engine/Build/BatchFiles/Linux/Build.sh"
PROJECTBUILD = "$(UNREALROOTPATH)/Engine/Binaries/ThirdParty/DotNet/6.0.302/linux/dotnet" "$(UNREALROOTPATH)/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.dll"

all: StandardSet

RequiredTools: CrashReportClient-Linux-Shipping CrashReportClientEditor-Linux-Shipping ShaderCompileWorker UnrealLightmass EpicWebHelper-Linux-Shipping

StandardSet: RequiredTools UnrealFrontend MyProjectEditor UnrealInsights

DebugSet: RequiredTools UnrealFrontend-Linux-Debug MyProjectEditor-Linux-Debug


MyProject-Linux-DebugGame:
	 $(PROJECTBUILD) MyProject Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

MyProject-Linux-Shipping:
	 $(PROJECTBUILD) MyProject Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

MyProject:
	 $(PROJECTBUILD) MyProject Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

MyProjectEditor-Linux-DebugGame:
	 $(PROJECTBUILD) MyProjectEditor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

MyProjectEditor-Linux-Shipping:
	 $(PROJECTBUILD) MyProjectEditor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

MyProjectEditor:
	 $(PROJECTBUILD) MyProjectEditor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor-Linux-DebugGame:
	 $(BUILD) UnrealEditor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor-Linux-Shipping:
	 $(BUILD) UnrealEditor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor:
	 $(BUILD) UnrealEditor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame-Linux-DebugGame:
	 $(BUILD) UnrealGame Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame-Linux-Shipping:
	 $(BUILD) UnrealGame Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame:
	 $(BUILD) UnrealGame Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

configure:
	xbuild /property:Configuration=Development /verbosity:quiet /nologo "$(UNREALROOTPATH)/Engine/Source/Programs/UnrealBuildTool/UnrealBuildTool.csproj"
	$(PROJECTBUILD) -projectfiles -project="\"$(GAMEPROJECTFILE)\"" -game -engine 

.PHONY: $(TARGETS)