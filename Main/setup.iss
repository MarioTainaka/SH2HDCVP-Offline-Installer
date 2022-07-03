; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Silent HIll 2 HD Collection Voice Pack"
#define MyAppVersion "5.0"
#define MyAppPublisher "Mario Tainaka"
#define MyAppURL "https://twitter.com/SlaveOfSuzumiya"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1E0D7A00-0934-46C8-A08F-BB52C267C46A}
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
OutputBaseFilename=SH2HDCVPsetup
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
DisableWelcomePage=no
DisableDirPage=no
WizardImageFile=resources\Thumb.bmp
WizardSmallImageFile=resources\top.bmp
Compression=lzma2/ultra64
SolidCompression=yes
DiskSpanning=yes
SlicesPerDisk=3
DiskSliceSize=1566000000
WizardStyle=modern
InfoBeforeFile=resources\info.txt
LicenseFile=resources\License.txt
SetupIconFile=resources\sh2.ico


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\sjomm\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\July 2022 Fixes\Installer Final\Main\sh2e\*"; DestDir: "{app}\sh2e"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

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

