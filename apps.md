# Core App Library

## Required

Apps which are listed in the section _Required_, are activated implicitly.
The other sections do not have a special meaning, despite organizing the library.

### Less MSIerables

A tool to view and extract the contents of a Windows Installer (.msi) file.

* ID: `Bench.LessMsi`
* Label: Less MSIerables
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
* Website: <http://www.7-zip.de/download.html>
* License: LGPL-2.1
* Docs:
    + Help: `7-zip.chm`
* VersionYear: 16
* VersionNo: 04
* Version: $:VersionYear$.$:VersionNo$
* Release: $:VersionYear$$:VersionNo$
* Url: `http://7-zip.org/a/$:ArchiveName$`
* ArchiveName: `7z$:Release$.msi`
* ArchivePath: `SourceDir\Files\7-Zip`
* Exe: `7z.exe`
* Launcher: $:Label$
* LauncherExecutable: `7zFM.exe`

### Inno Setup Unpacker

A tool to extract the files from an Inno Setup executable.

* ID: `Bench.InnoUnp`
* Label: Inno Setup Unpacker
* Website: <http://innounp.sourceforge.net/>
* License: GPL-3.0
* Version: 0.45
* Release: 045
* Url: `http://sourceforge.net/projects/innounp/files/innounp/innounp%20$:Version$/$:ArchiveName$`
* ArchiveName: `innounp$:Release$.rar`
* Exe: `innounp.exe`
* Register: `false`

### ConEmu

ConEmu-Maximus5 is a Windows console emulator with tabs, which presents multiple consoles and simple GUI applications as one customizable GUI window with various features.

* ID: `Bench.ConEmu`
* Website: <https://conemu.github.io/>
* License: BSD-3-Clause
* LicenseUrl: <https://github.com/Maximus5/ConEmu/blob/master/Release/ConEmu/License.txt>
* Docs:
    + Documentation: <https://conemu.github.io/en/TableOfContents.html>
* Version: 17.03.16
* Release: 170316
* Url: `https://github.com/Maximus5/ConEmu/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `ConEmuPack.$:Release$.7z`
* Launcher: $:Label$
* LauncherArguments: `-LoadCfgFile`, `$UserConfigDir$\ConEmu.xml`,  `%*`

## Core

Apps which are listed in the section _Core_, are directly known by the Bench system.
These apps are automatically activated, if certain app types or features
are used in the Bench environment.

### Git

Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

* ID: `Bench.Git`
* Website: <https://git-scm.com/download/win>
* License: GPL-2.0
* Docs:
    + Reference: <https://git-scm.com/docs>
    + Pro Git Book: <https://git-scm.com/book/en/v2>
* Version: 2.12.0
* Release: $:Version$.windows.1
* Url: `https://github.com/git-for-windows/git/releases/download/v$:Release$/$:ArchiveName$`
* ArchiveName: `PortableGit-$:Version$-32-bit.7z.exe`
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
* Website: <https://nodejs.org>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/nodejs/node/master/LICENSE>
* Docs:
    + API Documentation: <https://nodejs.org/dist/latest-v6.x/docs/api/>
    + Guides: <https://nodejs.org/en/docs/guides/>
* Version: 6.10.0
* Url: `https://nodejs.org/dist/v$:Version$/win-x86/node.exe`
* ResourceName: `node.exe`
* Launcher: $:Label$

### NPM

npm is the package manager for JavaScript.
Find, share, and reuse packages of code from hundreds of thousands of
developers — and assemble them in powerful new ways.

Because _Node.js_ is downloaded as bare executable, _NPM_ must be installed seperately.
But NPM, in its latest versions, is only distributed as part of the _Node.js_ setup.
_NPM_ 1.4.12 is the last version of _NPM_ which was released seperately.
Therefore, the latest version of _NPM_ is installed afterwards via the setup script `auto\apps\npm.setup.ps1`.

* ID: `Bench.Npm`
* Label: NPM
* Dependencies: `Bench.Node`
* Website: <https://www.npmjs.com/package/npm>
* License: Artistic-2.0
* LicenseUrl: <https://raw.githubusercontent.com/npm/npm/latest/LICENSE>
* Version: `>=4.0.0 <5.0.0`
* Url: <https://nodejs.org/dist/npm/npm-1.4.12.zip>
* ArchiveName: `npm-1.4.12.zip`
* Dir: `$Bench.Node:Dir$`
* Exe: `npm.cmd`

### Ruby

A dynamic, open source programming language with a focus on simplicity and productivity.
It has an elegant syntax that is natural to read and easy to write.

* ID: `Bench.Ruby`
* Website: <https://www.ruby-lang.org/>
* License: BSD-2-Clause
* LicenseUrl: <https://www.ruby-lang.org/en/about/license.txt>
* Docs:
    + Documentation: <https://www.ruby-lang.org/en/documentation/>
    + Programming Ruby: <http://ruby-doc.com/docs/ProgrammingRuby/>
    + Libraries: <https://www.ruby-lang.org/en/libraries/>
* Version: 2.3.3
* Url: `http://dl.bintray.com/oneclick/rubyinstaller/$:ArchiveName$`
* ArchiveName: `rubyinstaller-$:Version$.exe`
* ArchiveTyp: `inno`
* Path: `bin`
* Exe: `bin\ruby.exe`
* Launcher: $:Label$
* LauncherArguments: `$:Dir$\bin\irb`

### RubyGems

RubyGems is a package management framework for Ruby.

* ID: `Bench.RubyGems`
* Website: <https://rubygems.org/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/rubygems/rubygems.org/master/MIT-LICENSE>
* Docs:
	+ Gems: <https://rubygems.org/gems>
	+ Documentation: <http://guides.rubygems.org/>
* Dependencies: `Bench.Ruby`
* Version: 2.6.8
* Url: `https://rubygems.org/rubygems/$:ArchiveName$`
* ArchiveName: `rubygems-$:Version$.zip`
* Dir: `$Bench.Ruby:Dir$\tmp`
* Register: false
* SetupTestFile: `$:Dir$\rubygems-$:Version$\setup.rb`

### Python 2

Python is a programming language that lets you work quickly and integrate systems more effectively.

* ID: `Bench.Python2`
* Label: Python 2
* Website: <https://www.python.org/>
* License: GPL compatible
* LicenseUrl: <https://docs.python.org/2/license.html>
* Docs:
    + Documentation: <https://docs.python.org/2/>
    + Language Reference: <https://docs.python.org/2/reference/index.html>
    + Library Reference: <https://docs.python.org/2/library/index.html>
* Version: 2.7.13
* Url: `https://www.python.org/ftp/python/$:Version$/$:ArchiveName$`
* ArchiveName: `python-$:Version$.msi`
* ArchivePath: `SourceDir`
* Path: `.`, `Scripts`
* Exe: `python.exe`

### Python 3

Python is a programming language that lets you work quickly and integrate systems more effectively.

* ID: `Bench.Python3`
* Label: Python 3
* Website: <https://www.python.org/>
* License: GPL compatible
* LicenseUrl: <https://docs.python.org/3.4/license.html>
* Docs:
    + Documentation: <https://docs.python.org/3/>
    + Language Reference: <https://docs.python.org/3/reference/index.html>
    + Library Reference: <https://docs.python.org/3/library/index.html>
* Version: 3.4.4
* Url: `https://www.python.org/ftp/python/$:Version$/$:ArchiveName$`
* ArchiveName: `python-$:Version$.msi`
* ArchivePath: `SourceDir`
* Path: `.`, `Scripts`
* Exe: `python.exe`

### NuGet

NuGet is the package manager for the Microsoft development platform including .NET.
The NuGet client tools provide the ability to produce and consume packages.
The NuGet Gallery is the central package repository used by all package authors and consumers.

* ID: `Bench.NuGet`
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

### Notepad2

Notepad2 is a fast and light-weight Notepad-like text editor with syntax highlighting.
This program can be run out of the box without installation, and does not touch your system's registry.

* ID: `Bench.Notepad2`
* Website: <http://www.flos-freeware.ch/notepad2.html>
* License: BSD-3-Clause
* LicenseUrl: `License.txt`
* Docs:
    + Readme: <http://www.flos-freeware.ch/doc/Notepad2.txt>
    + FAQ: <http://www.flos-freeware.ch/doc/notepad2-FAQs.html>
    + Encoding Tutorial: <http://www.flos-freeware.ch/doc/notepad2-Encoding.html>
* Version: 4.2.25
* Url: `http://www.flos-freeware.ch/zip/$:ArchiveName$`
* ArchiveName: `notepad2_$:Version$_x86.zip`
* Register: `false`
* Launcher: $:Label$

### Markdown Edit

Markdown Edit (MDE) is low distraction editor for Windows. MDE focuses on producing text documents that can be transformed into Web pages and documents. It places an emphasis on content and keyboard shortcuts. Don't let this dissuade you. Markdown Edit is a power-house of an editor. It does its job quietly and without fanfare.

* ID: `Bench.MarkdownEdit`
* Label: Markdown Edit
* Website: <http://markdownedit.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/mike-ward/Markdown-Edit/master/LICENSE.txt>
* Docs:
    + Documentation: <https://github.com/mike-ward/Markdown-Edit/wiki/01.-Home>
    + Keyboard Shortcuts: <https://github.com/mike-ward/Markdown-Edit/wiki/05.-Keyboard-Shortcuts>
* Version: 1.32
* Url: `https://github.com/mike-ward/Markdown-Edit/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `MarkdownEdit.zip`
* Exe: `mde.exe`
* Register: `false`
* Launcher: $:Label$

### Wget

GNU Wget is a free utility for non-interactive download of files from the Web.
It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies.

* ID: `Bench.Wget`
* Website: <https://www.gnu.org>
* License: GPL-3
* LicenseUrl: <https://www.gnu.org/copyleft/gpl.html>
* Docs:
    + Manual: <https://www.gnu.org/software/wget/>
* Version: latest
* Url: <https://eternallybored.org/misc/wget/current/wget.exe>
* ResourceName: `wget.exe`
* Environment:
    + `HTTP_CLIENT`: `wget.exe --no-check-certificate -O`
