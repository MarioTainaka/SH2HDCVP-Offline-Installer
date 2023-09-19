; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Silent HIll 2 HD Collection Voice Pack Lite Edition"
#define MyAppVersion "5.0.5"
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
Compression=zip
OutputDir=C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Output\Lite


 // Previous versions of the project will be deleted before starting installation of the new version

[InstallDelete]





// Delete old dialouge archive. There's technically no need to do this, but it's better to be safe then sorry.


Type: files; Name: "{app}\lang\sound\adx\voice\voice.afs"
Type: files; Name: "{app}\lang\sound\sddata.bin"







// Delete old movie files. The files will be overwritten anyway. But this will avoid weird edge cases if the Enhanced Edition Team updates the player to a new format or something 



Type: files; Name: "{app}\lang\movie\credits.bik"
Type: files; Name: "{app}\lang\movie\deai.bik"
Type: files; Name: "{app}\lang\movie\end.bik"
Type: files; Name: "{app}\lang\movie\end_dog.bik"
Type: files; Name: "{app}\lang\movie\end_wish.bik"
Type: files; Name: "{app}\lang\movie\flash.bik"
Type: files; Name: "{app}\lang\movie\gero.bik"
Type: files; Name: "{app}\lang\movie\hakaba.bik"
Type: files; Name: "{app}\lang\movie\hei.bik"
Type: files; Name: "{app}\lang\movie\knife.bik"
Type: files; Name: "{app}\lang\movie\korosu_a.bik"
Type: files; Name: "{app}\lang\movie\korosu_b.bik"
Type: files; Name: "{app}\lang\movie\murder.bik"
Type: files; Name: "{app}\lang\movie\open.bik"
Type: files; Name: "{app}\lang\movie\rouya.bik"
Type: files; Name: "{app}\lang\movie\saikai.bik"
Type: files; Name: "{app}\lang\movie\sh2e3.bik"
Type: files; Name: "{app}\lang\movie\sh3e3.bik"
Type: files; Name: "{app}\lang\movie\sh3tgs.bik"
Type: files; Name: "{app}\lang\movie\toilet.bik"
Type: files; Name: "{app}\lang\movie\water.bik"


// Delete optional langauge files with cutscene subtitle fixes for Saisho_2


Type: files; Name: "{app}\lang\etc\message\stage_town_east_msg_e.mes"
Type: files; Name: "{app}\lang\etc\message\stage_town_east_msg_f.mes"
Type: files; Name: "{app}\lang\etc\message\stage_town_east_msg_g.mes"
Type: files; Name: "{app}\lang\etc\message\stage_town_east_msg_i.mes"
Type: files; Name: "{app}\lang\etc\message\stage_town_east_msg_s.mes"



// Delete Optional BGM files from the Enhanced Edition Team. There's technically no need to do this but this will keep everything clean.

Type: files; Name: "{app}\lang\sound\adx\apart\bgm_001.adx"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_003.adx"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_014.adx"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_101.aix"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_102.aix"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_103.aix"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_118.aix"
Type: files; Name: "{app}\lang\sound\adx\apart\bgm_125.aix"
Type: files; Name: "{app}\lang\sound\adx\end\bgm_002.adx"
Type: files; Name: "{app}\lang\sound\adx\end\bgm_012.adx"
Type: files; Name: "{app}\lang\sound\adx\forest\bgm_022.adx"
Type: files; Name: "{app}\lang\sound\adx\forest\bgm_114_a.adx"
Type: files; Name: "{app}\lang\sound\adx\forest\bgm_114_b.aix"
Type: files; Name: "{app}\lang\sound\adx\forest\bgm_115.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_016.adx"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_021.adx"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_100.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_105.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_106.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_111.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_119.aix"
Type: files; Name: "{app}\lang\sound\adx\hospital\bgm_123.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_007.adx"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_009.adx"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_017.adx"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_108.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_112.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_112_NG.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_113.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_121.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_122.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_124.aix"
Type: files; Name: "{app}\lang\sound\adx\hotel\bgm_126.adx"
Type: files; Name: "{app}\lang\sound\adx\mansion\bgm_104.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_015.adx"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_020.adx"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_107.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_109.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_110.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_116.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_120.aix"
Type: files; Name: "{app}\lang\sound\adx\prison\bgm_128.aix"
Type: files; Name: "{app}\lang\sound\adx\town\bgm_004.adx"
Type: files; Name: "{app}\lang\sound\adx\town\bgm_005.adx"
Type: files; Name: "{app}\lang\sound\adx\town\bgm_018.adx"
Type: files; Name: "{app}\lang\sound\adx\town\bgm_117.aix"


// Delete support Readme files for the HD Collection Voice Pack. These might be moved into the root directory at some point. Tec... you know the drill at this point.

Type: files; Name: "{app}\HD Collection Voice Pack Support\English\Changelog.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\English\License.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\English\Readme.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\English\Silent Hill 2 HD Collection Dub Staff Credits.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\French\Changelog_fr.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\French\License_fr.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\French\Readme_fr.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\French\Silent Hill 2 HD Collection Dub Staff Credits_fr.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Italian\Changelog_it.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Italian\License_it.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Italian\Readme_it.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Italian\Silent Hill 2 HD Collection Dub Staff Credits.txt_it"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Spanish\Changelog_sp.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Spanish\License_sp.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Spanish\Readme_sp.txt"
Type: files; Name: "{app}\HD Collection Voice Pack Support\Spanish\Silent Hill 2 HD Collection Dub Staff Credits_sp.txt"




































 
 //Readme and License file are read from the source dir 
 
[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\English\Readme.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\English\License.txt"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Spanish\Readme_sp.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Spanish\License_sp.txt"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Italian\Readme_it.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Italian\License_it.txt"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\French\Readme_fr.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\French\License_fr.txt"
Name: "nl"; MessagesFile: "compiler:Languages\Dutch.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Dutch\Readme_nl.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Dutch\License_nl.txt"
Name: "pt"; MessagesFile: "compiler:Languages\Portuguese.isl"; InfoBeforeFile:"C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Portuguese-PT\Readme_pt-pt.txt"; LicenseFile : "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\Portuguese-PT\License_pt-pt.txt"

[CustomMessages]
// Version warning
VersionWarning=Ensure version 2.1.2070.0 of Silent Hill 2: Enhanced Edition released on April 5th 2023 or higher is installed prior to running this installer to avoid any issues
es.VersionWarning=Aseg�rese de que la versi�n 2.1.2070.0 de Silent Hill 2: Enhanced Edition lanzada el 5 de abril de 2023 o posterior est� instalada antes de ejecutar este instalador para evitar problemas
it.VersionWarning=Assicurati che la versione 2.1.2070.0 di Silent Hill 2: Enhanced Edition rilasciata il 5 aprile 2023 o successiva sia installata prima di eseguire questo programma di installazione per evitare problemi
fr.VersionWarning=Assurez-vous que la version 2.1.2070.0 de Silent Hill 2 : Enhanced Edition publiée le 5 avril 2023 ou une version ultérieure est installée avant d'exécuter ce programme d'installation pour éviter tout problème
nl.VersionWarning=Zorg ervoor dat versie 2.1.2070.0 of hoger van Silent Hill 2: Enhanced Edition, uitgebracht op 5 april 2023, is geïnstalleerd voordat je dit installatieprogramma uitvoert om problemen te voorkomen.
pt.VersionWarning=Para evitar problemas, certifique-se de que a versão 2.1.2070.0 de Silent Hill 2: Enhanced Edition, lançada em 5 de abril de 2023 ou superior, esteja instalada antes de executar este instalador 

// Localized component names and descriptions

// English
mainTitle=Main Files
cutscTitle=Cutscene Subtitle Fixes For All Langauges
musicTitle=Audio Enhacement Pack Music
mainDesc=Installs important files required for this mod to function
cutscDesc=Fixes subtitles for certain in-game cutscenes for all langauges (Not recomended when using translation packs)
musicDesc=Reinstalls Enhanced Edition Music files to the langauge folder (Highly recommended if the game is installed on a HDD or SD Card)
descMessage=Move your mouse over a component to see its description.

// Spanish
es.mainTitle=Archivos principales
es.cutscTitle=Correcciones de subt�tulos de cinem�ticas para todos los idiomas
es.musicTitle=Paquete de mejora de audio M�sica
es.mainDesc=Instala archivos importantes necesarios para que este mod funcione
es.cutscDesc=Se corrigen los subt�tulos de algunas escenas del juego en todos los idiomas (no se recomienda si se utilizan paquetes de traducci�n).
es.musicDesc=Reinstala los archivos de m�sica de la Enhanced Edition en la carpeta de idiomas (muy recomendable si el juego est� instalado en un disco duro o en una tarjeta SD).
es.descMessage=Mueva el rat�n sobre un componente para ver su descripci�n.

// Italian
it.mainTitle=Archivos principales
it.cutscTitle=Correzioni dei sottotitoli dei filmati per tutte le lingue
it.musicTitle=Pacchetto di miglioramento audio Musica
it.mainDesc=Installa i file importanti necessari al funzionamento di questa mod
it.cutscDesc=Corregge i sottotitoli per alcune scene di gioco in tutte le lingue (sconsigliato l'uso dei pacchetti di traduzione
it.musicDesc=Reinstalla i file musicali della Enhanced Edition nella cartella della lingua (altamente raccomandato se il gioco � installato su un HDD o una scheda SD).
it.descMessage=Passare il mouse su un componente per visualizzarne la descrizione.

// French
fr.mainTitle=French Main title
fr.cutscTitle=French Cutscene title
fr.musicTitle=French Music title
fr.mainDesc=French Main description
fr.cutscDesc=French Cutscene description
fr.musicDesc=French Music description
fr.descMessage=French mouseover message

// Dutch
nl.mainTitle=Hoofd Bestanden
nl.cutscTitle=Cutsc�ne ondertiteling fixes voor alle talen
nl.musicTitle=Muziek van audio-uitbreidingspakket
nl.mainDesc=Installeert belangrijke bestanden die nodig zijn om deze mod te laten werken
nl.cutscDesc=Verbetert ondertiteling voor bepaalde cutsc�nes in het spel voor alle talen (niet aanbevolen bij gebruik van vertaalpakketten)
nl.musicDesc=Herinstalleert de Enhanced Edition muziekbestanden naar de langetermap (ten zeerste aanbevolen als het spel is ge�nstalleerd op een HDD of SD-kaart)
nl.descMessage=Beweeg je muis over een onderdeel om de beschrijving te zien.

// Portuguese
pt.mainTitle=Ficheiros principais
pt.cutscTitle=Corre��es de legendas de cenas para todos os idiomas
pt.musicTitle=M�sica do pacote de melhoramento de �udio
pt.mainDesc=Instala ficheiros importantes necess�rios para o funcionamento deste mod
pt.cutscDesc=Portuguese Cutscene description
pt.musicDesc=Portuguese Music description
pt.descMessage=Portuguese mouseover message

//After installation you can run Silent Hill 2 Enhanced Edition OR  run the Config Tool
[Run]
Filename: "{app}\sh2pc.exe"; Description: "Launch Silent Hill 2 Enhanced Edition"; Flags: nowait postinstall skipifsilent unchecked

Filename: "{app}\SH2EEconfig.exe"; Description: "Launch Silent Hill 2 Enhanced Edition Config Tool"; Flags: nowait postinstall skipifsilent unchecked





[Files]
// Main Installation Files, CG Cutscenes, SFX and Dialouge as well as help files. These will always be installed regardless of the components selected
Source: "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\common\*"; DestDir: "{app}\lang"; Flags: ignoreversion recursesubdirs createallsubdirs;  Components: main 

Source: "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\HD Collection Voice Pack Support\*"; DestDir: "{app}\HD Collection Voice Pack Support"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: main


// Optional Component files
Source: "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\additional_subtitle\*"; DestDir: "{app}\lang"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: sub

Source: "C:\Users\Romario\Documents\Silent Hill HD Voice Pack Project Files\SH 2 NEW MIX\Installer Final\Lite\additional_bgm\*"; DestDir: "{app}\lang"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: bgm



// Optional Components catagories, the main files which include the FMV, SFX and Dialouge files will not be selectable to prevent user error

[Components]
Name: "main"; Description: {cm:mainTitle};Types: full compact custom; Flags: fixed
Name: "sub"; Description: {cm:cutscTitle}; Types:  full; Flags: dontinheritcheck
Name: "bgm"; Description: {cm:musicTitle}; Types:  full; Flags: dontinheritcheck



//Code which should show a description of the catagory options. Huge thanks to Nipkow for getting this to work

[Code]

var
  LastMouse: TPoint;
  CompLabel: TLabel;

function GetCursorPos(var lpPoint: TPoint): BOOL;
  external 'GetCursorPos@user32.dll stdcall';
function SetTimer(
  hWnd: longword; nIDEvent, uElapse: LongWord; lpTimerFunc: LongWord): LongWord;
  external 'SetTimer@user32.dll stdcall';
function ScreenToClient(hWnd: HWND; var lpPoint: TPoint): BOOL;
  external 'ScreenToClient@user32.dll stdcall';
function ClientToScreen(hWnd: HWND; var lpPoint: TPoint): BOOL;
  external 'ClientToScreen@user32.dll stdcall';
function ListBox_GetItemRect(
  const hWnd: HWND; const Msg: Integer; Index: LongInt; var Rect: TRect): LongInt;
  external 'SendMessageW@user32.dll stdcall';  

const
  LB_GETITEMRECT = $0198;
  LB_GETTOPINDEX = $018E;

function FindControl(Parent: TWinControl; P: TPoint): TControl;
var
  Control: TControl;
  WinControl: TWinControl;
  I: Integer;
  P2: TPoint;
begin
  for I := 0 to Parent.ControlCount - 1 do
  begin
    Control := Parent.Controls[I];
    if Control.Visible and
       (Control.Left <= P.X) and (P.X < Control.Left + Control.Width) and
       (Control.Top <= P.Y) and (P.Y < Control.Top + Control.Height) then
    begin
      if Control is TWinControl then
      begin
        P2 := P;
        ClientToScreen(Parent.Handle, P2);
        WinControl := TWinControl(Control);
        ScreenToClient(WinControl.Handle, P2);
        Result := FindControl(WinControl, P2);
        if Result <> nil then Exit;
      end;

      Result := Control;
      Exit;
    end;
  end;

  Result := nil;
end;

function PointInRect(const Rect: TRect; const Point: TPoint): Boolean;
begin
  Result :=
    (Point.X >= Rect.Left) and (Point.X <= Rect.Right) and
    (Point.Y >= Rect.Top) and (Point.Y <= Rect.Bottom);
end;

function ListBoxItemAtPos(ListBox: TCustomListBox; Pos: TPoint): Integer;
var
  Count: Integer;
  ItemRect: TRect;
begin
  Result := SendMessage(ListBox.Handle, LB_GETTOPINDEX, 0, 0);
  Count := ListBox.Items.Count;
  while Result < Count do
  begin
    ListBox_GetItemRect(ListBox.Handle, LB_GETITEMRECT, Result, ItemRect);
    if PointInRect(ItemRect, Pos) then Exit;
    Inc(Result);
  end;
  Result := -1;
end;

procedure HoverComponentChanged(Index: Integer);
var 
  Description: string;
begin
  case Index of
    0: Description := CustomMessage('mainDesc');
    1: Description := CustomMessage('cutscDesc');
    2: Description := CustomMessage('musicDesc');
    
  else
    Description := CustomMessage('descMessage');
  end;
  CompLabel.Caption := Description;
end;

procedure HoverTimerProc(
  H: LongWord; Msg: LongWord; IdEvent: LongWord; Time: LongWord);
var
  P: TPoint;
  Control: TControl; 
  Index: Integer;
begin
  GetCursorPos(P);
  if P <> LastMouse then { just optimization }
  begin
    LastMouse := P;
    ScreenToClient(WizardForm.Handle, P);

    if (P.X < 0) or (P.Y < 0) or
       (P.X > WizardForm.ClientWidth) or (P.Y > WizardForm.ClientHeight) then
    begin
      Control := nil;
    end
      else
    begin
      Control := FindControl(WizardForm, P);
    end;

    Index := -1;
    if (Control = WizardForm.ComponentsList) and
       (not WizardForm.TypesCombo.DroppedDown) then
    begin
      P := LastMouse;
      ScreenToClient(WizardForm.ComponentsList.Handle, P);
      Index := ListBoxItemAtPos(WizardForm.ComponentsList, P);
    end;

    HoverComponentChanged(Index);
  end;
end;

procedure InitializeWizard();
begin
  SetTimer(0, 0, 50, CreateCallback(@HoverTimerProc));

  CompLabel := TLabel.Create(WizardForm);
  with CompLabel do
  begin
      Caption     := '';
      Parent      := WizardForm.SelectComponentsPage;
      Left        := WizardForm.ComponentsList.Left;
      Width       := WizardForm.ComponentsList.Width;
      Height      := ScaleY(40);
      Top         := WizardForm.ComponentsList.Top + WizardForm.ComponentsList.Height - CompLabel.Height - ScaleY(40);
      Anchors     := [akLeft, akBottom];
      AutoSize    := False;
      WordWrap    := True;
  end;

  WizardForm.ComponentsList.Height := WizardForm.ComponentsList.Height - CompLabel.Height - ScaleY(40);
end;





[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"


[Setup] 
UninstallFilesDir={app}\HD Collection Voice Pack Uninstall

 
 //Find Silent Hill 2 Installation Path by Nipkow
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
  MsgBox(ExpandConstant('{cm:VersionWarning}'), mbInformation, MB_OK);
end;




















