# Core App Library

## Required

Apps which are listed in the section _Required_, are activated implicitly.
The other sections do not have a special meaning, despite organizing the library.

### Less MSIerables

A tool to view and extract the contents of a Windows Installer (.msi) file.

* ID: `Bench.LessMsi`
* Label: Less MSIerables
* Tags:
    + cli
    + gui
    + extractor
    + msi
* Version: 1.3
* Website: <http://lessmsi.activescott.com/>
* License: MIT
* Url: `https://github.com/activescott/lessmsi/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `lessmsi-v$:Version$.zip`
* Exe: `lessmsi.exe`
* Register: `false`

### 7zip

7-Zip is a file archiver with a high compression ratio.
It comes with a graphical file manager and supports a large range of compression formats for extraction.

* ID: `Bench.7z`
* Label: 7-Zip
* Tags:
    + cli
    + gui
    + extractor
    + 7z
* Website: <http://www.7-zip.de/download.html>
* License: LGPL-2.1
* Docs:
    + Help: `7-zip.chm`
* VersionYear: 18
* VersionNo: 05
* Version: $:VersionYear$.$:VersionNo$
* Release: $:VersionYear$$:VersionNo$
* Url: `http://7-zip.org/a/$:ArchiveName$`
* ArchiveName32Bit: `7z$:Release$.msi`
* ArchiveName64Bit: `7z$:Release$-x64.msi`
* ArchivePath: `SourceDir\Files\7-Zip`
* Exe: `7z.exe`
* Launcher: $:Label$
* LauncherExecutable: `7zFM.exe`

### Inno Setup Unpacker

A tool to extract the files from an Inno Setup executable.

* ID: `Bench.InnoUnp`
* Label: Inno Setup Unpacker
* Tags:
    + cli
    + extractor
* Website: <http://innounp.sourceforge.net/>
* License: GPL-3.0
* Version: 0.46
* Release: 046
* Url: `http://sourceforge.net/projects/innounp/files/innounp/innounp%20$:Version$/$:ArchiveName$`
* ArchiveName: `innounp$:Release$.rar`
* Exe: `innounp.exe`
* Register: `false`

### ConEmu

ConEmu-Maximus5 is a Windows console emulator with tabs, which presents multiple consoles and simple GUI applications as one customizable GUI window with various features.

* ID: `Bench.ConEmu`
* Tags:
    + gui
    + console
* Website: <https://conemu.github.io/>
* License: BSD-3-Clause
* LicenseUrl: <https://github.com/Maximus5/ConEmu/blob/master/Release/ConEmu/License.txt>
* Docs:
    + Documentation: <https://conemu.github.io/en/TableOfContents.html>
* Version: 18.06.26
* Release: 180626
* Url: `https://github.com/Maximus5/ConEmu/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `ConEmuPack.$:Release$.7z`
* Exe32Bit: `ConEmu.exe`
* Exe64Bit: `ConEmu64.exe`
* Launcher: $:Label$
* LauncherArguments: `-LoadCfgFile`, `$UserConfigDir$\ConEmu.xml`,  `%*`

### Notepad++ Configured for Bench

Notepad++ is a free (as in "free speech" and also as in "free beer") source code editor and Notepad replacement that supports several languages. Running in the MS Windows environment, its use is governed by GPL License.

This Notepad++ app is configured for editing the configuration files of a Bench environment.

* ID: `Bench.BenchNpp`
* Label: Bench Notepad++
* Tags:
    + gui
    + editor
* License: GPL-3.0
* LicenseUrl: <https://www.gnu.org/copyleft/gpl.html>
* MajorVersion: 7
* Version: `$:MajorVersion$.6.1`
* Url: `https://notepad-plus-plus.org/repository/$:MajorVersion$.x/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `npp.$:Version$.bin.7z`
* ArchiveName64Bit: `npp.$:Version$.bin.x64.7z`
* Exe: `notepad++.exe`
* Register: `false`

## Core

Apps which are listed in the section _Core_, are directly known by the Bench system.
These apps are automatically activated, if certain app types or features
are used in the Bench environment.

### Git

Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

* ID: `Bench.Git`
* Tags:
    + cli
    + version control
* Website: <https://git-scm.com/download/win>
* License: GPL-2.0
* Docs:
    + Reference: <https://git-scm.com/docs>
    + Pro Git Book: <https://git-scm.com/book/en/v2>
* Version: 2.20.0
* Release: $:Version$.windows.1
* Url: `https://github.com/git-for-windows/git/releases/download/v$:Release$/$:ArchiveName$`
* ArchiveName32Bit: `PortableGit-$:Version$-32-bit.7z.exe`
* ArchiveName64Bit: `PortableGit-$:Version$-64-bit.7z.exe`
* Path: `cmd`
* Exe: `cmd\git.exe`
* Environment:
    + `GIT_SSH`: `$:Dir$\usr\bin\ssh.exe`

### Node.js

Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.
Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.
Node.js' package ecosystem, npm, is the largest ecosystem of open source libraries in the world.

* ID: `Bench.Node`
* Label: Node.js
* Tags:
    + cli
    + language
    + runtime
    + interpreter
    + JavaScript
* Website: <https://nodejs.org>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/nodejs/node/master/LICENSE>
* Docs:
    + API Documentation: <https://nodejs.org/dist/latest-v6.x/docs/api/>
    + Guides: <https://nodejs.org/en/docs/guides/>
* Version: 8.12.0
* Url: `https://nodejs.org/dist/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `node-v$:Version$-win-x86`
* ArchivePath64Bit: `node-v$:Version$-win-x64`
* Launcher: $:Label$

### Node.js ICU

Node.js ICU does load the full localization database for Node.js.
Per default, Node.js does only come with _Small ICU_, which only contains the locale `en-US`.
If you need real localization, e.g. for `date.toLocaleString("de-DE", { timezone: "Europe/Berlin" })`,
activate this app.

* ID: `Bench.Node.FullICU`
* Label: Node.js full ICU
* Tags:
    + localization
    + javascript
* Typ: `meta`
* PackageName: `full-icu`
* Environment:
    + `NODE_ICU_DATA`: `$Bench.Node:Dir$\node_modules\full-icu`
* SetupTestFile: `$Bench.Node:Dir$\node_modules\full-icu\full-icu.js`

### Ruby

A dynamic, open source programming language with a focus on simplicity and productivity.
It has an elegant syntax that is natural to read and easy to write.

* ID: `Bench.Ruby`
* Tags:
    + cli
    + language
    + runtime
    + interpreter
* Website: <https://www.ruby-lang.org/>
* License: BSD-2-Clause
* LicenseUrl: <https://www.ruby-lang.org/en/about/license.txt>
* Docs:
    + Documentation: <https://www.ruby-lang.org/en/documentation/>
    + Programming Ruby: <http://ruby-doc.com/docs/ProgrammingRuby/>
    + Libraries: <https://www.ruby-lang.org/en/libraries/>
* Version: 2.5.3
* Release: $:Version$-1
* Url: `https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-$:Release$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.7z`
* ArchivePath32Bit: `rubyinstaller-$:Release$-x86`
* ArchivePath64Bit: `rubyinstaller-$:Release$-x64`
* Path: `bin`
* Exe: `bin\ruby.exe`
* Launcher: $:Label$
* LauncherArguments: `$:Dir$\bin\irb`

### RubyGems

RubyGems is a package management framework for Ruby.

* ID: `Bench.RubyGems`
* Tags:
    + cli
    + package manager
* Website: <https://rubygems.org/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/rubygems/rubygems.org/master/MIT-LICENSE>
* Docs:
	+ Gems: <https://rubygems.org/gems>
	+ Documentation: <http://guides.rubygems.org/>
* Dependencies: `Bench.Ruby`
* Version: 2.7.8
* Url: `https://rubygems.org/rubygems/$:ArchiveName$`
* ArchiveName: `rubygems-$:Version$.zip`
* Dir: `$Bench.Ruby:Dir$\tmp`
* Register: false
* SetupTestFile: `$:Dir$\rubygems-$:Version$\setup.rb`

### Python 2

Python is a programming language that lets you work quickly and integrate systems more effectively.

* ID: `Bench.Python2`
* Label: Python 2
* Tags:
    + cli
    + language
    + runtime
    + interpreter
    + package manager
    + PIP
* Website: <https://www.python.org/>
* License: GPL compatible
* LicenseUrl: <https://docs.python.org/2/license.html>
* Docs:
    + Documentation: <https://docs.python.org/2/>
    + Language Reference: <https://docs.python.org/2/reference/index.html>
    + Library Reference: <https://docs.python.org/2/library/index.html>
* Version: 2.7.15
* CPythonVersion: 27
* Url: `https://www.python.org/ftp/python/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `python-$:Version$.msi`
* ArchiveName64Bit: `python-$:Version$.amd64.msi`
* ArchivePath: `SourceDir`
* Path: `.`, `Scripts`
* Exe: `python.exe`
* Launcher: $:Label$ IDLE
* LauncherExecutable: `$:Dir$\Lib\idlelib\idle.bat`
* LauncherIcon: `$:Dir$\Lib\idlelib\icons\idle.ico`

### Python 3

Python is a programming language that lets you work quickly and integrate systems more effectively.

* ID: `Bench.Python3`
* Label: Python 3
* Tags:
    + cli
    + language
    + runtime
    + interpreter
* Website: <https://www.python.org/>
* License: GPL compatible
* LicenseUrl: <https://docs.python.org/3.6/license.html>
* Docs:
    + Offline Documentation: `$:Dir$\Doc\python$:CompactVersion$.chm`
    + Online Documentation: <https://docs.python.org/3/>
    + Language Reference: <https://docs.python.org/3/reference/index.html>
    + Library Reference: <https://docs.python.org/3/library/index.html>
* Version: 3.6.7
* CompactVersion: 367
* CPythonVersion: 36
* Url: `https://www.python.org/ftp/python/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `python-$:Version$-webinstall.exe`
* ArchiveName64Bit: `python-$:Version$-amd64-webinstall.exe`
* Exe: `python.exe`
* Launcher: $:Label$ IDLE
* LauncherExecutable: `$:Dir$\Lib\idlelib\idle.bat`
* LauncherIcon: `$:Dir$\Lib\idlelib\icons\idle.ico`

### NuGet

NuGet is the package manager for the Microsoft development platform including .NET.
The NuGet client tools provide the ability to produce and consume packages.
The NuGet Gallery is the central package repository used by all package authors and consumers.

* ID: `Bench.NuGet`
* Tags:
    + cli
    + package manager
* Version: latest
* Website: <https://www.nuget.org>
* License: Apache-2.0
* Docs:
    + Consume: <https://docs.nuget.org/consume>
    + Create: <https://docs.nuget.org/create>
    + Command-Line: <https://docs.nuget.org/Consume/Command-Line-Reference>
    + Configuration File: <https://docs.nuget.org/Consume/NuGet-Config-File>
* Version: latest
* Url: <https://dist.nuget.org/win-x86-commandline/latest/nuget.exe>
* ResourceName: `nuget.exe`

## Basics

### Wget

GNU Wget is a free utility for non-interactive download of files from the Web.
It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies.

* ID: `Bench.Wget`
* Tags:
    + cli
    + networking
* Website: <https://www.gnu.org>
* License: GPL-3
* LicenseUrl: <https://www.gnu.org/copyleft/gpl.html>
* Docs:
    + Manual: <https://www.gnu.org/software/wget/>
* Version: 1.16.1
* Url: <https://sourceforge.net/projects/ezwinports/files/$:ArchiveName$>
* ArchiveName: `wget-$:Version$-w32-bin.zip`
* Path: `bin`
* Exe: `bin\wget.exe`
* Environment:
    + `HTTP_CLIENT`: `wget.exe --no-check-certificate -O`

### cURL

curl is an open source command line tool and library for transferring data with URL syntax,
supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S,
RTMP, RTSP, SCP, SFTP, SMB, SMTP, SMTPS, Telnet and TFTP. curl supports SSL certificates,
HTTP POST, HTTP PUT, FTP uploading, HTTP form based upload, proxies, HTTP/2, cookies,
user+password authentication (Basic, Plain, Digest, CRAM-MD5, NTLM, Negotiate and Kerberos),
file transfer resume, proxy tunneling and more.

* ID: `Bench.cURL`
* Tags:
    + cli
    + networking
* Website: <http://curl.haxx.se/>
* License: MIT
* LicenseUrl: <https://curl.haxx.se/docs/copyright.html>
* Docs:
    + Manual: <https://curl.haxx.se/docs/manual.html>
    + Man Page: <https://curl.haxx.se/docs/manpage.html>
* Version: 7.61.1
* Release: 7
* Url: `https://curl.haxx.se/windows/dl-$:Version$_$:Release$/$:ArchiveName$`
* ArchiveName32Bit: `curl-$:Version$_$:Release$-win32-mingw.zip`
* ArchiveName64Bit: `curl-$:Version$_$:Release$-win64-mingw.zip`
* ArchivePath32Bit: `curl-$:Version$-win32-mingw`
* ArchivePath64Bit: `curl-$:Version$-win64-mingw`
* Path: `bin`
* Exe: `bin\curl.exe`
