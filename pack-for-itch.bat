@echo off
REM ==========================================================================
REM pack-for-itch.bat — bundles the playable game into crownfall-itch.zip
REM
REM What it includes (only what the runtime needs):
REM   index.html          the entire game
REM   favicon.svg         tab icon
REM
REM What it EXCLUDES (build/dev/repo-only stuff):
REM   .git, .github, .claude, .gitignore, .nojekyll
REM   README.md, LICENSE, CHANGELOG.md
REM   og-image.svg, itch-cover.svg, itch-cover.png
REM   itch-description.md, UPLOAD_TO_ITCH.md, pack-for-itch.bat
REM   screenshot-*.png    (uploaded separately as gallery images)
REM
REM Output: crownfall-itch.zip (drop this into the itch upload form)
REM ==========================================================================

setlocal
cd /d "%~dp0"

set ZIP=crownfall-itch.zip
if exist "%ZIP%" del "%ZIP%"

REM PowerShell's Compress-Archive is built in and zip-compatible
powershell -NoProfile -Command "Compress-Archive -Path 'index.html','favicon.svg' -DestinationPath '%ZIP%' -CompressionLevel Optimal"

if exist "%ZIP%" (
  for %%I in ("%ZIP%") do echo Built %%~nxI  ^(%%~zI bytes^)
  echo.
  echo Ready to upload to itch.io. See UPLOAD_TO_ITCH.md for the form fields.
) else (
  echo ERROR: failed to build %ZIP%
  exit /b 1
)
endlocal
