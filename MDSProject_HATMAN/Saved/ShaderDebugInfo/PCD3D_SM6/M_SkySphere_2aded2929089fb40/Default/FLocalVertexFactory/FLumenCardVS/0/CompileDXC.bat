@ECHO OFF
SET DXC="E:\Jocuri\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "E:\Jocuri\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T vs_6_6 -E Main -Fc LumenCardVertexShader.d3dasm -Fo LumenCardVertexShader.dxil LumenCardVertexShader.usf
:END
PAUSE
