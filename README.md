
### Controller input visualization with frame counts.

https://github.com/user-attachments/assets/4c7d3af8-a37b-4b40-8b0c-c9b7c72f50f9

# Jak Speedrunning Practice (OpenGOAL)

## Jak 1

| Button combination | Effect | 
|-|-|
| Hold L1+R1+X and press Start or Select | Brings up speedrunner menu for fast resets and access to custom checkpoints. |
| Hold L2 and press dpad Down (or CTRL + C) | Set a custom checkpoint at Jak's current position (also remembers if you are on flutflut or zoomer). Only works if Jak is in an "idle" state. Plays a sound to confirm. |
| Hold L2 and press dpad Up (or CTRL + V) | Reset to last selected skip/trick, or to custom checkpoint, whichever was used most recently. If you also hold R2, for custom checkpoints it will reset the entire game. |
| Hold L2 and press dpad Left | Get on flutflut, or get off flutflut/zoomer if already on. |
| Hold L2 and press dpad Right | Get on zoomer, or get off flutflut/zoomer if already on. |

- If inputs are not working, double check that Speedrunner Mode is enabled under Misc Options
- Known Issues: 
  - if you set a custom checkpoint while Jak is swimming, on respawn the camera likes to go crazy and zoom out until the level deloads
  - Respawning during a cutscene can sometimes crash when the cutscene finishes
  - Custom checkpoints don't perfectly restore the camera zoom

## Jak 2

| Button combination | Effect | 
|-|-|
| Hold L1+R1+X and press Start or Select | Brings up speedrunner menu for fast resets |
| Hold R3 and press dpad Down | Set a custom checkpoint at Jak's current position. Only works if Jak is in an "idle" state. Plays a sound to confirm. |
| Hold R3 and press dpad Up | Reset to a custom checkpoint. |

- If inputs are not working, double check that Speedrunner Mode is enabled under Misc Options
- Known Issues: 
  - Custom checkpoints don't perfectly restore the camera zoom

## Jak 3

### Installation:

1. Install software prerequisites per https://github.com/open-goal/jak-project?tab=readme-ov-file#windows
2. In powershell/command prompt/terminal clone the repo to your PC: `git clone https://github.com/OpenGOAL-Mods/OG-Speedrun-Practice.git`
3. Find this newly created `OG-Speedrun-Practice` folder, go into `iso_data` and create a `jak3` folder. Paste your Jak 3 ISO contents in here (mount the .iso, copy/paste all the files within)
4. Back in the terminal, move into the new folder: `cd OG-Speedrun-Practice`
5. Switch to jak 3 mode: `task set-game-jak3`
6. Decompile: `task extract`
7. Open compiler: `task repl`, and compile: `(mi)`
8. Either `(e)` to close the compiler REPL, or open a new terminal/tab in the `OG-Speedrun-Practice` folder
9. Launch game in debug mode: `task boot-game`
10. Whenever there are updates, pull changes: `git pull` and then re-do steps 7-9

| Button combination | Effect |
|-|-|
| Hold R3 and press dpad Down | Set a custom checkpoint at Jak's current position. It should remember side mission storage, and if you are on leaper or in vehicle. Only works if Jak is in an "idle" state. Plays a sound to confirm. |
| Hold R3 and press dpad Up | Reset to a custom checkpoint. |

- Known Issues: 
  - Custom checkpoints don't perfectly restore the camera zoom
  - Not sure all vehicles work yet (e.g. already had to add an extra case for subrails)
