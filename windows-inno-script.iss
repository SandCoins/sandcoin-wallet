; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sandcoins"
#define MyAppVersion "3.0.0.0"
#define MyAppPublisher "Sandcoins.com"
#define MyAppURL "http://www.sandcoins.com"
#define MyAppExeName "sandcoins-qt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={59C27F5A-A7CD-468B-A854-0227ECC136CE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=.\contrib\release\DISCLAIMER
InfoAfterFile=.\contrib\release\post-install.txt
OutputBaseFilename={#MyAppName}-{#MyAppVersion}-setup
SetupIconFile=.\contrib\release\favicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\a.jochems\Documents\GitHub\SandCoins-wallet\release\casinocoin-qt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\a.jochems\Documents\GitHub\SandCoins-wallet\release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

