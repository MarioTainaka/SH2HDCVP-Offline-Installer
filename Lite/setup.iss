﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Silent HIll 2 HD Collection Voice Pack Lite Edition"
#define MyAppVersion "5.0.2"
#define MyAppPublisher "Mario Tainaka"
#define MyAppURL "https://twitter.com/SlaveOfSuzumiya"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3B69554D-25E6-451F-A913-C355E63FD8BB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:GetDefaultDirName}
DirExistsWarning=no
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=SH2HDCVPLEsetup
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
DisableWelcomePage=no
DisableDirPage=no
WizardImageFile=resources\Thumb.bmp
WizardSmallImageFile=resources\top.bmp
SolidCompression=no
DiskSpanning=yes
SlicesPerDisk=3
DiskSliceSize=1566000000
WizardStyle=modern
SetupIconFile=resources\sh2.ico
Compression=lzma2/ultra


 


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile:"C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\English\Readme.txt"; LicenseFile : "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\English\License.txt"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"; InfoBeforeFile:"C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Spanish\Readme_sp.txt"; LicenseFile : "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Spanish\License_sp.txt"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"; InfoBeforeFile:"C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Italian\Readme_it.txt"; LicenseFile : "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Italian\License_it.txt"



[Run]
Filename: "{app}\sh2pc.exe"; Description: "Launch Silent Hill 2 Enhanced Edition"; Flags: nowait postinstall skipifsilent unchecked

Filename: "{app}\SH2EEconfig.exe"; Description: "Launch Silent Hill 2 Enhanced Edition Config Tool"; Flags: nowait postinstall skipifsilent unchecked

[Files]
Source: "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\lang\*"; DestDir: "{app}\lang"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\*"; DestDir: "{app}\HD Collection Voice Pack Support"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files


[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"


[Setup] 
UninstallFilesDir={app}\HD Collection Voice Pack Uninstall


[Code]
var
  GCS_sh2pcPath: string;

// Search for sh2pc.exe in "\HKEY_CURRENT_USER\System\GameConfigStore\Children\"
procedure RegSearch(RootKey: Integer; KeyName: string);
var
  I: Integer;
  Names: TArrayOfString;
  Name: string;
  FoundPaths: String;
begin
  if RegGetSubkeyNames(RootKey, KeyName, Names) then
  begin
    for I := 0 to GetArrayLength(Names) - 1 do
    begin
      Name := KeyName + '\' + Names[I];

      RegSearch(RootKey, Name);
    end;
  end;

  if RegGetValueNames(RootKey, KeyName, Names) then
  begin
    for I := 0 to GetArrayLength(Names) - 1 do
    begin
      Name := KeyName + '\' + Names[I];

      if Pos('MatchedExeFullPath', Name) > 0 then
      begin

        if RegQueryStringValue(HKEY_CURRENT_USER, KeyName, 'MatchedExeFullPath', FoundPaths) then
        begin

          if Pos('sh2pc.exe', FoundPaths) > 0 then
          begin
            if FileExists(ExtractFilePath(FoundPaths) + '\sh2pc.exe') then
            begin
              GCS_sh2pcPath := ExtractFilePath(FoundPaths);
            end;
          end;
        end;
      end;
    end;
  end;
end;

// Return a DefaultDirName based on conditions
function GetDefaultDirName(Param: string): string;
var 
  InstallationPath : String;
  RetailInstallDir : String;
begin
  if InstallationPath = '' then
  begin
    // Search registry 
    RegSearch(HKEY_CURRENT_USER, 'System\GameConfigStore');

    // Actually choose a path
    if RegQueryStringValue(HKLM32, 'Software\Konami\Silent Hill 2', 'INSTALLDIR', RetailInstallDir) and FileExists(RetailInstallDir + '\sh2pc.exe') then 
      InstallationPath := RetailInstallDir
    else
    if not (GCS_sh2pcPath = '') then
      InstallationPath := GCS_sh2pcPath
    else
      InstallationPath := ExpandConstant('{autopf}\') + 'Konami\Silent Hill 2\'; 
  end;
  Result := InstallationPath;
end;


 // Custom message code which makes the message box appear
[Code]
function InitializeSetup: Boolean;
begin
  Result := True;  
  MsgBox(ExpandConstant('{cm:CustomMessage}'), mbInformation, MB_OK);
end;



[CustomMessages]

MsgBox=(ExpandConstant('{cm:MyCustomMessage}'), mbInformation, MB_OK);

CustomMessage=Undefined //just in case (should be equal to English)
english.CustomMessage=Ensure Silent Hill 2: Enhanced Edition is installed prior to running this installer for the Silent Hill 2 HD Collection Voice Pack
spanish.CustomMessage=Asegúrese de que Silent Hill 2: Enhanced Edition esté instalado antes de ejecutar este instalador para Silent Hill 2 HD Collection Voice Pack
italian.CustomMessage=Assicurati che Silent Hill 2: Enhanced Edition sia installato prima di eseguire questo programma di installazione per Silent Hill 2 HD Collection Voice Pack













