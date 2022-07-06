# RandomMediaPlayer
Select a random media (video/audio) to play. Supports drag-and-drop and context menu options.

## Dependencies
NOTHING.

## Installation
- Download `play.bat` to anywhere you prefer.
- Specify the `YOUR_MPV_LOCATION` (the `.exe` file).

## Context Menu Support
1. Win+R, type `regedit` and press ENTER.
2. Locate `Computer\HKEY_CLASSES_ROOT`.
3. Under `shell`, create a key called `mpv`.
4. Click `mpv`, modify the value on the right to `Open with mpv`.
5. Under `mpv`, create a key called `command`.
6. Copy your `.bat` file location (including `play.bat`).
7. Double-click the only entry in `command` and paste it into the blank.
8. Repeat Step 3-7 and do it under `Computer\HKEY_CLASSES_ROOT\Background`.
8. Enjoy.

## Usage
- Right-click any folder and click `Open with mpv`, or
- Right-click the blank in a folder, or
- Drag-and-drop a media file/folder to the batch file.
- Try it!