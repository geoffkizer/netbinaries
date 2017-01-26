@ECHO OFF
SETLOCAL

SET PACKAGE_DIR=%1
set PACKAGE_DIR=%PACKAGE_DIR:/=\%
IF DEFINED PACKAGE_DIR ( echo Using %PACKAGE_DIR% as folder for resolving package dependencies.) ELSE (
echo Please specify an package source directory using PACKAGEROOT parameter
goto ShowUsage
)
set EXECUTION_DIR=%~dp0
echo Executing in %EXECUTION_DIR% 

:: ========================= BEGIN Copying files  =============================== 
echo Hard linking dependent files... 
:: Format here is: call :copyandcheck Path1 Path2 || GOTO EOF
call :copyandcheck "%PACKAGE_DIR%\Microsoft.CSharp\4.4.0-beta-24721-02\lib\netstandard1.7\Microsoft.CSharp.dll" "%EXECUTION_DIR%\Microsoft.CSharp.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.analysis.cli\1.0.0-alpha-build0040\lib\netstandard1.3\Microsoft.DotNet.xunit.performance.analysis.cli.dll" "%EXECUTION_DIR%\Microsoft.DotNet.xunit.performance.analysis.cli.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.run.core\1.0.0-alpha-build0040\lib\netstandard1.3\xunit.performance.core.dll" "%EXECUTION_DIR%\xunit.performance.core.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.run.core\1.0.0-alpha-build0040\lib\netstandard1.3\xunit.performance.core.pdb" "%EXECUTION_DIR%\xunit.performance.core.pdb" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.run.core\1.0.0-alpha-build0040\lib\netstandard1.3\xunit.performance.run.core.dll" "%EXECUTION_DIR%\xunit.performance.run.core.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.run.core\1.0.0-alpha-build0040\lib\netstandard1.3\xunit.performance.run.core.pdb" "%EXECUTION_DIR%\xunit.performance.run.core.pdb" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.DotNet.xunit.performance.runner.cli\1.0.0-alpha-build0040\lib\netstandard1.3\Microsoft.DotNet.xunit.performance.runner.cli.dll" "%EXECUTION_DIR%\Microsoft.DotNet.xunit.performance.runner.cli.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.VisualBasic\10.2.0-beta-24721-02\lib\netstandard1.3\Microsoft.VisualBasic.dll" "%EXECUTION_DIR%\Microsoft.VisualBasic.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.Win32.Registry\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\Microsoft.Win32.Registry.dll" "%EXECUTION_DIR%\Microsoft.Win32.Registry.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.Win32.Registry.AccessControl\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\Microsoft.Win32.Registry.AccessControl.dll" "%EXECUTION_DIR%\Microsoft.Win32.Registry.AccessControl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\Microsoft.xunit.netcore.extensions\1.0.1-prerelease-01001-04\lib\netstandard1.0\Xunit.NetCore.Extensions.dll" "%EXECUTION_DIR%\Xunit.NetCore.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Collections\4.4.0-beta-24721-02\lib\netstandard1.7\System.Collections.dll" "%EXECUTION_DIR%\System.Collections.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Diagnostics.Tools\4.4.0-beta-24721-02\lib\netstandard1.7\System.Diagnostics.Tools.dll" "%EXECUTION_DIR%\System.Diagnostics.Tools.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Diagnostics.Tracing\4.4.0-beta-24721-02\lib\netstandard1.7\System.Diagnostics.Tracing.dll" "%EXECUTION_DIR%\System.Diagnostics.Tracing.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Globalization\4.4.0-beta-24721-02\lib\netstandard1.7\System.Globalization.dll" "%EXECUTION_DIR%\System.Globalization.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Globalization.Calendars\4.4.0-beta-24721-02\lib\netstandard1.7\System.Globalization.Calendars.dll" "%EXECUTION_DIR%\System.Globalization.Calendars.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.IO\4.4.0-beta-24721-02\lib\netstandard1.7\System.IO.dll" "%EXECUTION_DIR%\System.IO.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Reflection\4.4.0-beta-24721-02\lib\netstandard1.7\System.Reflection.dll" "%EXECUTION_DIR%\System.Reflection.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Reflection.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.Reflection.Primitives.dll" "%EXECUTION_DIR%\System.Reflection.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Resources.ResourceManager\4.4.0-beta-24721-02\lib\netstandard1.7\System.Resources.ResourceManager.dll" "%EXECUTION_DIR%\System.Resources.ResourceManager.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Runtime\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.dll" "%EXECUTION_DIR%\System.Runtime.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Runtime.Handles\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.Handles.dll" "%EXECUTION_DIR%\System.Runtime.Handles.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Runtime.InteropServices\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.InteropServices.dll" "%EXECUTION_DIR%\System.Runtime.InteropServices.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Text.Encoding\4.4.0-beta-24721-02\lib\netstandard1.7\System.Text.Encoding.dll" "%EXECUTION_DIR%\System.Text.Encoding.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Text.Encoding.Extensions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Text.Encoding.Extensions.dll" "%EXECUTION_DIR%\System.Text.Encoding.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Threading.Tasks\4.4.0-beta-24721-02\lib\netstandard1.7\System.Threading.Tasks.dll" "%EXECUTION_DIR%\System.Threading.Tasks.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.any.System.Threading.Timer\4.4.0-beta-24721-02\lib\netstandard1.7\System.Threading.Timer.dll" "%EXECUTION_DIR%\System.Threading.Timer.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.Microsoft.Win32.Primitives\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\Microsoft.Win32.Primitives.dll" "%EXECUTION_DIR%\Microsoft.Win32.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.Console\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Console.dll" "%EXECUTION_DIR%\System.Console.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.Diagnostics.Debug\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Diagnostics.Debug.dll" "%EXECUTION_DIR%\System.Diagnostics.Debug.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.IO.FileSystem\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.FileSystem.dll" "%EXECUTION_DIR%\System.IO.FileSystem.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.Net.Primitives\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Primitives.dll" "%EXECUTION_DIR%\System.Net.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.Net.Sockets\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Sockets.dll" "%EXECUTION_DIR%\System.Net.Sockets.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win.System.Runtime.Extensions\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Runtime.Extensions.dll" "%EXECUTION_DIR%\System.Runtime.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Jit\1.2.0-beta-24801-03\runtimes\win7-x64\native\clrjit.dll" "%EXECUTION_DIR%\clrjit.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\System.Private.CoreLib.ni.dll" "%EXECUTION_DIR%\System.Private.CoreLib.ni.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\clretwrc.dll" "%EXECUTION_DIR%\clretwrc.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\coreclr.dll" "%EXECUTION_DIR%\coreclr.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\dbgshim.dll" "%EXECUTION_DIR%\dbgshim.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\mscordaccore.dll" "%EXECUTION_DIR%\mscordaccore.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\mscordbi.dll" "%EXECUTION_DIR%\mscordbi.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\mscorlib.ni.dll" "%EXECUTION_DIR%\mscorlib.ni.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\mscorrc.debug.dll" "%EXECUTION_DIR%\mscorrc.debug.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\mscorrc.dll" "%EXECUTION_DIR%\mscorrc.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\native\sos.dll" "%EXECUTION_DIR%\sos.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\lib\netstandard1.0\SOS.NETCore.dll" "%EXECUTION_DIR%\SOS.NETCore.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\lib\netstandard1.0\System.Private.CoreLib.dll" "%EXECUTION_DIR%\System.Private.CoreLib.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Runtime.CoreCLR\1.2.0-beta-24801-03\runtimes\win7-x64\lib\netstandard1.0\mscorlib.dll" "%EXECUTION_DIR%\mscorlib.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.TestHost\1.2.0-beta-24801-03\runtimes\win7-x64\native\CoreRun.exe" "%EXECUTION_DIR%\CoreRun.exe" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Base-Util-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Base-Util-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-Kernel32-Private-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Core-Kernel32-Private-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-Kernel32-Private-L1-1-1.dll" "%EXECUTION_DIR%\API-MS-Win-Core-Kernel32-Private-L1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-Kernel32-Private-L1-1-2.dll" "%EXECUTION_DIR%\API-MS-Win-Core-Kernel32-Private-L1-1-2.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-PrivateProfile-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Core-PrivateProfile-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-ProcessTopology-Obsolete-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Core-ProcessTopology-Obsolete-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-String-L2-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Core-String-L2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Core-StringAnsi-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Core-StringAnsi-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-EventLog-Legacy-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-EventLog-Legacy-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Eventing-ClassicProvider-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Eventing-ClassicProvider-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Eventing-Consumer-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Eventing-Consumer-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Eventing-Controller-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Eventing-Controller-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Eventing-Legacy-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Eventing-Legacy-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Eventing-Provider-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Eventing-Provider-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-Security-LsaPolicy-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-Security-LsaPolicy-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-devices-config-L1-1-0.dll" "%EXECUTION_DIR%\API-MS-Win-devices-config-L1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\API-MS-Win-devices-config-L1-1-1.dll" "%EXECUTION_DIR%\API-MS-Win-devices-config-L1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-com-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-com-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-com-private-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-com-private-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-comm-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-comm-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-console-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-console-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-console-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-console-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-datetime-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-datetime-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-datetime-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-datetime-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-debug-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-debug-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-debug-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-debug-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-delayload-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-delayload-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-errorhandling-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-errorhandling-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-errorhandling-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-errorhandling-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-fibers-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-fibers-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-fibers-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-fibers-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-file-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-file-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-file-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-file-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-file-l1-2-1.dll" "%EXECUTION_DIR%\api-ms-win-core-file-l1-2-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-file-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-file-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-file-l2-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-file-l2-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-handle-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-handle-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-heap-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-heap-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-heap-obsolete-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-heap-obsolete-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-interlocked-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-interlocked-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-io-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-io-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-io-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-io-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-kernel32-legacy-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-kernel32-legacy-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-kernel32-legacy-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-kernel32-legacy-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-kernel32-legacy-l1-1-2.dll" "%EXECUTION_DIR%\api-ms-win-core-kernel32-legacy-l1-1-2.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-libraryloader-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-libraryloader-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-libraryloader-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-libraryloader-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-localization-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-localization-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-localization-l1-2-1.dll" "%EXECUTION_DIR%\api-ms-win-core-localization-l1-2-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-localization-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-localization-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-localization-obsolete-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-localization-obsolete-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-memory-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-memory-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-memory-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-memory-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-memory-l1-1-2.dll" "%EXECUTION_DIR%\api-ms-win-core-memory-l1-1-2.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-memory-l1-1-3.dll" "%EXECUTION_DIR%\api-ms-win-core-memory-l1-1-3.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-namedpipe-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-namedpipe-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-namedpipe-l1-2-1.dll" "%EXECUTION_DIR%\api-ms-win-core-namedpipe-l1-2-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-normalization-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-normalization-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-privateprofile-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-privateprofile-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processenvironment-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-processenvironment-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processenvironment-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-processenvironment-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processsecurity-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-processsecurity-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processthreads-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-processthreads-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processthreads-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-processthreads-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-processthreads-l1-1-2.dll" "%EXECUTION_DIR%\api-ms-win-core-processthreads-l1-1-2.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-profile-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-profile-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-psapi-ansi-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-psapi-ansi-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-psapi-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-psapi-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-psapi-obsolete-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-psapi-obsolete-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-realtime-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-realtime-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-registry-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-registry-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-registry-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-registry-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-rtlsupport-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-rtlsupport-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-shlwapi-legacy-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-shlwapi-legacy-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-shlwapi-obsolete-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-shlwapi-obsolete-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-shutdown-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-shutdown-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-shutdown-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-shutdown-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-string-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-string-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-string-obsolete-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-string-obsolete-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-string-obsolete-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-string-obsolete-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-stringloader-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-stringloader-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-stringloader-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-stringloader-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-synch-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-synch-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-synch-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-synch-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-sysinfo-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-sysinfo-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-sysinfo-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-sysinfo-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-sysinfo-l1-2-1.dll" "%EXECUTION_DIR%\api-ms-win-core-sysinfo-l1-2-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-sysinfo-l1-2-2.dll" "%EXECUTION_DIR%\api-ms-win-core-sysinfo-l1-2-2.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-sysinfo-l1-2-3.dll" "%EXECUTION_DIR%\api-ms-win-core-sysinfo-l1-2-3.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-threadpool-l1-2-0.dll" "%EXECUTION_DIR%\api-ms-win-core-threadpool-l1-2-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-threadpool-legacy-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-threadpool-legacy-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-threadpool-private-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-threadpool-private-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-timezone-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-timezone-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-url-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-url-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-util-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-util-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-version-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-version-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-error-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-error-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-error-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-error-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-registration-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-registration-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-robuffer-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-robuffer-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-winrt-string-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-winrt-string-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-wow64-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-wow64-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-xstate-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-xstate-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-core-xstate-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-core-xstate-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-ro-typeresolution-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-ro-typeresolution-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-base-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-base-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-cpwl-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-cpwl-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-cryptoapi-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-cryptoapi-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-lsalookup-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-lsalookup-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-lsalookup-l2-1-1.dll" "%EXECUTION_DIR%\api-ms-win-security-lsalookup-l2-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-provider-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-provider-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-security-sddl-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-security-sddl-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-core-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-service-core-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-core-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-service-core-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-management-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-service-management-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-management-l2-1-0.dll" "%EXECUTION_DIR%\api-ms-win-service-management-l2-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-private-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-service-private-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-private-l1-1-1.dll" "%EXECUTION_DIR%\api-ms-win-service-private-l1-1-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\api-ms-win-service-winsvc-l1-1-0.dll" "%EXECUTION_DIR%\api-ms-win-service-winsvc-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\ext-ms-win-advapi32-encryptedfile-l1-1-0.dll" "%EXECUTION_DIR%\ext-ms-win-advapi32-encryptedfile-l1-1-0.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.Microsoft.NETCore.Windows.ApiSets\1.0.1\runtimes\win7-x64\native\ext-ms-win-ntuser-keyboard-l1-2-1.dll" "%EXECUTION_DIR%\ext-ms-win-ntuser-keyboard-l1-2-1.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.runtime.native.System.Data.SqlClient.sni\4.3.0\runtimes\win7-x64\native\sni.dll" "%EXECUTION_DIR%\sni.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7-x64.runtime.native.System.IO.Compression\4.4.0-beta-24721-02\runtimes\win7-x64\native\clrcompression.dll" "%EXECUTION_DIR%\clrcompression.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\runtime.win7.System.Private.Uri\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.0\System.Private.Uri.dll" "%EXECUTION_DIR%\System.Private.Uri.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.AppContext\4.4.0-beta-24721-02\lib\netstandard1.7\System.AppContext.dll" "%EXECUTION_DIR%\System.AppContext.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Buffers\4.4.0-beta-24721-02\lib\netcoreapp1.1\System.Buffers.dll" "%EXECUTION_DIR%\System.Buffers.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.CodeDom\4.4.0-beta-24721-02\lib\netstandard1.7\System.CodeDom.dll" "%EXECUTION_DIR%\System.CodeDom.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Collections.Concurrent\4.4.0-beta-24721-02\lib\netstandard1.7\System.Collections.Concurrent.dll" "%EXECUTION_DIR%\System.Collections.Concurrent.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Collections.Immutable\1.4.0-beta-24721-02\lib\netstandard1.0\System.Collections.Immutable.dll" "%EXECUTION_DIR%\System.Collections.Immutable.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Collections.NonGeneric\4.4.0-beta-24721-02\lib\netstandard1.7\System.Collections.NonGeneric.dll" "%EXECUTION_DIR%\System.Collections.NonGeneric.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Collections.Specialized\4.4.0-beta-24721-02\lib\netstandard1.7\System.Collections.Specialized.dll" "%EXECUTION_DIR%\System.Collections.Specialized.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ComponentModel\4.4.0-beta-24721-02\lib\netstandard1.3\System.ComponentModel.dll" "%EXECUTION_DIR%\System.ComponentModel.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ComponentModel.Annotations\4.4.0-beta-24721-02\lib\netstandard1.7\System.ComponentModel.Annotations.dll" "%EXECUTION_DIR%\System.ComponentModel.Annotations.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ComponentModel.EventBasedAsync\4.4.0-beta-24721-02\lib\netstandard1.7\System.ComponentModel.EventBasedAsync.dll" "%EXECUTION_DIR%\System.ComponentModel.EventBasedAsync.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ComponentModel.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.ComponentModel.Primitives.dll" "%EXECUTION_DIR%\System.ComponentModel.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ComponentModel.TypeConverter\4.4.0-beta-24721-02\lib\netstandard1.7\System.ComponentModel.TypeConverter.dll" "%EXECUTION_DIR%\System.ComponentModel.TypeConverter.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Composition.AttributedModel\1.1.0-beta-24721-02\lib\netstandard1.0\System.Composition.AttributedModel.dll" "%EXECUTION_DIR%\System.Composition.AttributedModel.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Composition.Convention\1.1.0-beta-24721-02\lib\netstandard1.0\System.Composition.Convention.dll" "%EXECUTION_DIR%\System.Composition.Convention.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Composition.Hosting\1.1.0-beta-24721-02\lib\netstandard1.0\System.Composition.Hosting.dll" "%EXECUTION_DIR%\System.Composition.Hosting.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Composition.Runtime\1.1.0-beta-24721-02\lib\netstandard1.0\System.Composition.Runtime.dll" "%EXECUTION_DIR%\System.Composition.Runtime.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Composition.TypedParts\1.1.0-beta-24721-02\lib\netstandard1.0\System.Composition.TypedParts.dll" "%EXECUTION_DIR%\System.Composition.TypedParts.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Data.Common\4.4.0-beta-24721-02\lib\netstandard1.7\System.Data.Common.dll" "%EXECUTION_DIR%\System.Data.Common.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Data.SqlClient\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Data.SqlClient.dll" "%EXECUTION_DIR%\System.Data.SqlClient.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.Contracts\4.4.0-beta-24721-02\lib\netstandard1.0\System.Diagnostics.Contracts.dll" "%EXECUTION_DIR%\System.Diagnostics.Contracts.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.DiagnosticSource\4.4.0-beta-24721-02\lib\netstandard1.3\System.Diagnostics.DiagnosticSource.dll" "%EXECUTION_DIR%\System.Diagnostics.DiagnosticSource.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.FileVersionInfo\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Diagnostics.FileVersionInfo.dll" "%EXECUTION_DIR%\System.Diagnostics.FileVersionInfo.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.Process\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Diagnostics.Process.dll" "%EXECUTION_DIR%\System.Diagnostics.Process.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.StackTrace\4.4.0-beta-24721-02\lib\netstandard1.7\System.Diagnostics.StackTrace.dll" "%EXECUTION_DIR%\System.Diagnostics.StackTrace.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.TextWriterTraceListener\4.4.0-beta-24721-02\lib\netstandard1.7\System.Diagnostics.TextWriterTraceListener.dll" "%EXECUTION_DIR%\System.Diagnostics.TextWriterTraceListener.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Diagnostics.TraceSource\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Diagnostics.TraceSource.dll" "%EXECUTION_DIR%\System.Diagnostics.TraceSource.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Drawing.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.Drawing.Primitives.dll" "%EXECUTION_DIR%\System.Drawing.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Dynamic.Runtime\4.4.0-beta-24721-02\lib\netstandard1.7\System.Dynamic.Runtime.dll" "%EXECUTION_DIR%\System.Dynamic.Runtime.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Globalization.Extensions\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Globalization.Extensions.dll" "%EXECUTION_DIR%\System.Globalization.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.Compression\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.Compression.dll" "%EXECUTION_DIR%\System.IO.Compression.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.Compression.ZipFile\4.4.0-beta-24721-02\lib\netstandard1.3\System.IO.Compression.ZipFile.dll" "%EXECUTION_DIR%\System.IO.Compression.ZipFile.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.FileSystem.AccessControl\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.IO.FileSystem.AccessControl.dll" "%EXECUTION_DIR%\System.IO.FileSystem.AccessControl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.FileSystem.DriveInfo\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.FileSystem.DriveInfo.dll" "%EXECUTION_DIR%\System.IO.FileSystem.DriveInfo.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.FileSystem.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.IO.FileSystem.Primitives.dll" "%EXECUTION_DIR%\System.IO.FileSystem.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.FileSystem.Watcher\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.FileSystem.Watcher.dll" "%EXECUTION_DIR%\System.IO.FileSystem.Watcher.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.IsolatedStorage\4.4.0-beta-24721-02\lib\netstandard1.7\System.IO.IsolatedStorage.dll" "%EXECUTION_DIR%\System.IO.IsolatedStorage.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.MemoryMappedFiles\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.MemoryMappedFiles.dll" "%EXECUTION_DIR%\System.IO.MemoryMappedFiles.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.Packaging\4.4.0-beta-24721-02\lib\netstandard1.3\System.IO.Packaging.dll" "%EXECUTION_DIR%\System.IO.Packaging.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.Pipes\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.IO.Pipes.dll" "%EXECUTION_DIR%\System.IO.Pipes.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.Pipes.AccessControl\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.IO.Pipes.AccessControl.dll" "%EXECUTION_DIR%\System.IO.Pipes.AccessControl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.IO.UnmanagedMemoryStream\4.4.0-beta-24721-02\lib\netstandard1.7\System.IO.UnmanagedMemoryStream.dll" "%EXECUTION_DIR%\System.IO.UnmanagedMemoryStream.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Json\4.4.0-beta-24721-02\lib\netstandard1.0\System.Json.dll" "%EXECUTION_DIR%\System.Json.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Linq\4.4.0-beta-24721-02\lib\netstandard1.6\System.Linq.dll" "%EXECUTION_DIR%\System.Linq.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Linq.Expressions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Linq.Expressions.dll" "%EXECUTION_DIR%\System.Linq.Expressions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Linq.Parallel\4.4.0-beta-24721-02\lib\netstandard1.3\System.Linq.Parallel.dll" "%EXECUTION_DIR%\System.Linq.Parallel.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Linq.Queryable\4.4.0-beta-24721-02\lib\netstandard1.7\System.Linq.Queryable.dll" "%EXECUTION_DIR%\System.Linq.Queryable.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Memory\4.4.0-beta-24721-02\lib\netstandard1.0\System.Memory.dll" "%EXECUTION_DIR%\System.Memory.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Http\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Http.dll" "%EXECUTION_DIR%\System.Net.Http.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Http.WinHttpHandler\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Net.Http.WinHttpHandler.dll" "%EXECUTION_DIR%\System.Net.Http.WinHttpHandler.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.HttpListener\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.HttpListener.dll" "%EXECUTION_DIR%\System.Net.HttpListener.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Mail\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Mail.dll" "%EXECUTION_DIR%\System.Net.Mail.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.NameResolution\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Net.NameResolution.dll" "%EXECUTION_DIR%\System.Net.NameResolution.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.NetworkInformation\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.NetworkInformation.dll" "%EXECUTION_DIR%\System.Net.NetworkInformation.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Ping\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Ping.dll" "%EXECUTION_DIR%\System.Net.Ping.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Requests\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Requests.dll" "%EXECUTION_DIR%\System.Net.Requests.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.Security\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Net.Security.dll" "%EXECUTION_DIR%\System.Net.Security.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.ServicePoint\4.4.0-beta-24721-02\lib\netstandard1.7\System.Net.ServicePoint.dll" "%EXECUTION_DIR%\System.Net.ServicePoint.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.WebClient\4.4.0-beta-24721-02\lib\netstandard1.7\System.Net.WebClient.dll" "%EXECUTION_DIR%\System.Net.WebClient.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.WebHeaderCollection\4.4.0-beta-24721-02\lib\netstandard1.7\System.Net.WebHeaderCollection.dll" "%EXECUTION_DIR%\System.Net.WebHeaderCollection.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.WebProxy\4.4.0-beta-24721-02\lib\netstandard1.7\System.Net.WebProxy.dll" "%EXECUTION_DIR%\System.Net.WebProxy.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.WebSockets\4.4.0-beta-24721-02\lib\netstandard1.7\System.Net.WebSockets.dll" "%EXECUTION_DIR%\System.Net.WebSockets.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Net.WebSockets.Client\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Net.WebSockets.Client.dll" "%EXECUTION_DIR%\System.Net.WebSockets.Client.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Numerics.Vectors\4.4.0-beta-24721-02\lib\netstandard1.0\System.Numerics.Vectors.dll" "%EXECUTION_DIR%\System.Numerics.Vectors.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ObjectModel\4.4.0-beta-24721-02\lib\netstandard1.7\System.ObjectModel.dll" "%EXECUTION_DIR%\System.ObjectModel.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Private.DataContractSerialization\4.4.0-beta-24721-02\lib\netstandard1.7\System.Private.DataContractSerialization.dll" "%EXECUTION_DIR%\System.Private.DataContractSerialization.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Private.Xml\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Private.Xml.dll" "%EXECUTION_DIR%\System.Private.Xml.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Private.Xml.Linq\4.4.0-beta-24721-02\lib\netstandard1.7\System.Private.Xml.Linq.dll" "%EXECUTION_DIR%\System.Private.Xml.Linq.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Context\4.4.0-beta-24721-02\lib\netstandard1.1\System.Reflection.Context.dll" "%EXECUTION_DIR%\System.Reflection.Context.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.DispatchProxy\4.4.0-beta-24721-02\lib\netstandard1.3\System.Reflection.DispatchProxy.dll" "%EXECUTION_DIR%\System.Reflection.DispatchProxy.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Emit\4.4.0-beta-24721-02\lib\netstandard1.3\System.Reflection.Emit.dll" "%EXECUTION_DIR%\System.Reflection.Emit.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Emit.ILGeneration\4.4.0-beta-24721-02\lib\netstandard1.3\System.Reflection.Emit.ILGeneration.dll" "%EXECUTION_DIR%\System.Reflection.Emit.ILGeneration.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Emit.Lightweight\4.4.0-beta-24721-02\lib\netstandard1.3\System.Reflection.Emit.Lightweight.dll" "%EXECUTION_DIR%\System.Reflection.Emit.Lightweight.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Extensions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Reflection.Extensions.dll" "%EXECUTION_DIR%\System.Reflection.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.Metadata\1.5.0-beta-24721-02\lib\netstandard1.1\System.Reflection.Metadata.dll" "%EXECUTION_DIR%\System.Reflection.Metadata.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Reflection.TypeExtensions\4.4.0-beta-24721-02\lib\netstandard1.5\System.Reflection.TypeExtensions.dll" "%EXECUTION_DIR%\System.Reflection.TypeExtensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Resources.Reader\4.4.0-beta-24721-02\lib\netstandard1.7\System.Resources.Reader.dll" "%EXECUTION_DIR%\System.Resources.Reader.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Resources.Writer\4.4.0-beta-24721-02\lib\netstandard1.7\System.Resources.Writer.dll" "%EXECUTION_DIR%\System.Resources.Writer.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.CompilerServices.Unsafe\4.4.0-beta-24721-02\lib\netstandard1.0\System.Runtime.CompilerServices.Unsafe.dll" "%EXECUTION_DIR%\System.Runtime.CompilerServices.Unsafe.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.CompilerServices.VisualC\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.CompilerServices.VisualC.dll" "%EXECUTION_DIR%\System.Runtime.CompilerServices.VisualC.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.InteropServices.RuntimeInformation\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.1\System.Runtime.InteropServices.RuntimeInformation.dll" "%EXECUTION_DIR%\System.Runtime.InteropServices.RuntimeInformation.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.InteropServices.WindowsRuntime\4.4.0-beta-24721-02\lib\netstandard1.3\System.Runtime.InteropServices.WindowsRuntime.dll" "%EXECUTION_DIR%\System.Runtime.InteropServices.WindowsRuntime.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Loader\4.4.0-beta-24721-02\lib\netstandard1.5\System.Runtime.Loader.dll" "%EXECUTION_DIR%\System.Runtime.Loader.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Numerics\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.Numerics.dll" "%EXECUTION_DIR%\System.Runtime.Numerics.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Serialization.Formatters\4.4.0-beta-24721-02\lib\netcoreapp1.1\System.Runtime.Serialization.Formatters.dll" "%EXECUTION_DIR%\System.Runtime.Serialization.Formatters.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Serialization.Json\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.Serialization.Json.dll" "%EXECUTION_DIR%\System.Runtime.Serialization.Json.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Serialization.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.Serialization.Primitives.dll" "%EXECUTION_DIR%\System.Runtime.Serialization.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Runtime.Serialization.Xml\4.4.0-beta-24721-02\lib\netstandard1.7\System.Runtime.Serialization.Xml.dll" "%EXECUTION_DIR%\System.Runtime.Serialization.Xml.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.AccessControl\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.AccessControl.dll" "%EXECUTION_DIR%\System.Security.AccessControl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Claims\4.4.0-beta-24721-02\lib\netstandard1.7\System.Security.Claims.dll" "%EXECUTION_DIR%\System.Security.Claims.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Algorithms\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.Cryptography.Algorithms.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Algorithms.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Cng\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.Cryptography.Cng.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Cng.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Csp\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.Cryptography.Csp.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Csp.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Encoding\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.Cryptography.Encoding.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Encoding.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.OpenSsl\4.4.0-beta-24721-02\lib\netstandard1.7\System.Security.Cryptography.OpenSsl.dll" "%EXECUTION_DIR%\System.Security.Cryptography.OpenSsl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Pkcs\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Security.Cryptography.Pkcs.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Pkcs.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.Primitives\4.4.0-beta-24721-02\lib\netstandard1.7\System.Security.Cryptography.Primitives.dll" "%EXECUTION_DIR%\System.Security.Cryptography.Primitives.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.ProtectedData\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Security.Cryptography.ProtectedData.dll" "%EXECUTION_DIR%\System.Security.Cryptography.ProtectedData.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Cryptography.X509Certificates\4.4.0-beta-24721-02\runtimes\win\lib\netcoreapp1.1\System.Security.Cryptography.X509Certificates.dll" "%EXECUTION_DIR%\System.Security.Cryptography.X509Certificates.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Permissions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Security.Permissions.dll" "%EXECUTION_DIR%\System.Security.Permissions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Principal\4.4.0-beta-24721-02\lib\netstandard1.7\System.Security.Principal.dll" "%EXECUTION_DIR%\System.Security.Principal.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.Principal.Windows\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.Principal.Windows.dll" "%EXECUTION_DIR%\System.Security.Principal.Windows.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Security.SecureString\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Security.SecureString.dll" "%EXECUTION_DIR%\System.Security.SecureString.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ServiceProcess.ServiceController\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.ServiceProcess.ServiceController.dll" "%EXECUTION_DIR%\System.ServiceProcess.ServiceController.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Text.Encoding.CodePages\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Text.Encoding.CodePages.dll" "%EXECUTION_DIR%\System.Text.Encoding.CodePages.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Text.Encodings.Web\4.4.0-beta-24721-02\lib\netstandard1.0\System.Text.Encodings.Web.dll" "%EXECUTION_DIR%\System.Text.Encodings.Web.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Text.RegularExpressions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Text.RegularExpressions.dll" "%EXECUTION_DIR%\System.Text.RegularExpressions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading\4.4.0-beta-24721-02\lib\netstandard1.7\System.Threading.dll" "%EXECUTION_DIR%\System.Threading.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.AccessControl\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.3\System.Threading.AccessControl.dll" "%EXECUTION_DIR%\System.Threading.AccessControl.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.Overlapped\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Threading.Overlapped.dll" "%EXECUTION_DIR%\System.Threading.Overlapped.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.Tasks.Dataflow\4.8.0-beta-24721-02\lib\netstandard1.1\System.Threading.Tasks.Dataflow.dll" "%EXECUTION_DIR%\System.Threading.Tasks.Dataflow.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.Tasks.Extensions\4.4.0-beta-24721-02\lib\netstandard1.0\System.Threading.Tasks.Extensions.dll" "%EXECUTION_DIR%\System.Threading.Tasks.Extensions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.Tasks.Parallel\4.4.0-beta-24721-02\lib\netstandard1.3\System.Threading.Tasks.Parallel.dll" "%EXECUTION_DIR%\System.Threading.Tasks.Parallel.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.Thread\4.4.0-beta-24721-02\runtimes\win\lib\netstandard1.7\System.Threading.Thread.dll" "%EXECUTION_DIR%\System.Threading.Thread.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Threading.ThreadPool\4.4.0-beta-24721-02\lib\netstandard1.7\System.Threading.ThreadPool.dll" "%EXECUTION_DIR%\System.Threading.ThreadPool.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Transactions\4.4.0-beta-24721-02\lib\netstandard1.7\System.Transactions.dll" "%EXECUTION_DIR%\System.Transactions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.ValueTuple\4.4.0-beta-24721-02\lib\netstandard1.0\System.ValueTuple.dll" "%EXECUTION_DIR%\System.ValueTuple.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Web.HttpUtility\4.4.0-beta-24721-02\lib\netstandard1.3\System.Web.HttpUtility.dll" "%EXECUTION_DIR%\System.Web.HttpUtility.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.ReaderWriter\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.ReaderWriter.dll" "%EXECUTION_DIR%\System.Xml.ReaderWriter.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XDocument\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XDocument.dll" "%EXECUTION_DIR%\System.Xml.XDocument.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XmlDocument\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XmlDocument.dll" "%EXECUTION_DIR%\System.Xml.XmlDocument.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XmlSerializer\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XmlSerializer.dll" "%EXECUTION_DIR%\System.Xml.XmlSerializer.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XPath\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XPath.dll" "%EXECUTION_DIR%\System.Xml.XPath.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XPath.XDocument\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XPath.XDocument.dll" "%EXECUTION_DIR%\System.Xml.XPath.XDocument.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\System.Xml.XPath.XmlDocument\4.4.0-beta-24721-02\lib\netstandard1.7\System.Xml.XPath.XmlDocument.dll" "%EXECUTION_DIR%\System.Xml.XPath.XmlDocument.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.abstractions\2.0.1-rc2\lib\netstandard1.0\xunit.abstractions.dll" "%EXECUTION_DIR%\xunit.abstractions.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.assert\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.assert.dll" "%EXECUTION_DIR%\xunit.assert.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.assert\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.assert.pdb" "%EXECUTION_DIR%\xunit.assert.pdb" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.console.netcore\1.0.3-prerelease-00921-01\runtimes\any\native\xunit.console.netcore.exe" "%EXECUTION_DIR%\xunit.console.netcore.exe" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.extensibility.core\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.core.dll" "%EXECUTION_DIR%\xunit.core.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.extensibility.core\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.core.pdb" "%EXECUTION_DIR%\xunit.core.pdb" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.extensibility.execution\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.execution.dotnet.dll" "%EXECUTION_DIR%\xunit.execution.dotnet.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.extensibility.execution\2.2.0-beta2-build3300\lib\netstandard1.0\xunit.execution.dotnet.pdb" "%EXECUTION_DIR%\xunit.execution.dotnet.pdb" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.runner.utility\2.2.0-beta2-build3300\lib\netstandard1.1\xunit.runner.utility.dotnet.dll" "%EXECUTION_DIR%\xunit.runner.utility.dotnet.dll" ||  exit /b -1
call :copyandcheck "%PACKAGE_DIR%\xunit.runner.utility\2.2.0-beta2-build3300\lib\netstandard1.1\xunit.runner.utility.dotnet.pdb" "%EXECUTION_DIR%\xunit.runner.utility.dotnet.pdb" ||  exit /b -1


echo Finished linking needed files, moving to running tests.
:: ========================= END Copying files  =================================

:: ========================= BEGIN Test Execution ============================= 
echo Running tests... Start time: %TIME%
echo Command(s):
echo call CoreRun.exe xunit.console.netcore.exe System.Net.Sockets.Tests.dll  -xml testResults.xml -notrait Benchmark=true -notrait category=nonnetcoreapp1.1tests  -notrait category=OuterLoop -notrait category=failing -notrait category=nonwindowstests

pushd %EXECUTION_DIR%
call CoreRun.exe xunit.console.netcore.exe System.Net.Sockets.Tests.dll  -xml testResults.xml -notrait Benchmark=true -notrait category=nonnetcoreapp1.1tests  -notrait category=OuterLoop -notrait category=failing -notrait category=nonwindowstests

popd
echo Finished running tests.  End time=%TIME%, Exit code = %ERRORLEVEL%
EXIT /B %ERRORLEVEL%
:: ========================= END Test Execution =================================

:: ======== CopyAndCheck subroutine ====
:copyandcheck
IF EXIST %2 (
exit /b 0
)
mklink /H %2 %1 > NUL 2>&1
IF %ERRORLEVEL% == 1 (
copy /y %1 %2 > NUL 2>&1
)
exit /b %ERRORLEVEL%
:: =====================================
:: ======== MakeDirectory subroutine ====
:makedir
IF EXIST %1 (
exit /b 0
)
md %1 > NUL 2>&1
exit /b %ERRORLEVEL%
:: =====================================
:ShowUsage
echo.
echo Usage:
echo.
echo %0 {Package root}
echo.
echo Parameters:
echo Package Root :        (Mandatory) Root path containing unzipped Nuget Packages, such as c:\GIT\corefx\packages
EXIT /B -1
