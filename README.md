# UniversalLauncher
Batch script to launch program with external tool or something else.

## Idea
This script is designed for game which need external tool or something else to running or playing.
> For example:
> 
>   If you want to play Need for Speed: Rivals on Laptop without necessary independent keys (Home, End, PageUp or PageDown), you should run key mapping tool to re-map necessary keys.
>   
>   Always cosming to launch both game and external tool just for one game.
>   
>   So this script was born to solve it.

## Instruction
This script now only support Simplified Chinese and not able to launch program which name containing UTF-8 character. Probably I'll deal with it (gugugu).

1. Download script file (!UniversalLauncher.bat) in GitHub;
2. Edit file via system notepad or VS Code (**WARNING: if you edit via VS Code, always ensuring decode and encode file with gb2312. NOT utf8!!**);
3. Edit variable:
> line 6: target: executable program name, end with *.exe*, e.g. *PlantsVsZombies.exe*. No sapce in name, change file name if necessary.
> 
> line 8: full_name: Full name of program or name you like. This is used to identify which program will launch. No space recommandly.
> 
> line 10: necessary: switch of Enable(1) or Disable(0) launch necessary tool.
> 
> line 12: necessary_name: executable program name, end with *.exe*, e.g. *key_mapping_NFS14.exe*. No sapce in name, change file name if necessary.
> 
> line 14: tool: switch of Enable(1) or Disable(0) launch alternative tool.
> 
> line 16: tool_name: executable program name, end with *.exe*, e.g. *Trainer.exe*. No sapce in name, change file name if necessary.
>
> ------------------------------------------------------
> 
> If necessary is set as: Enabled(1), necessary will launch before launch the main program without confirmation;
> 
> If tool is set as: Enable(1), selection is required before launch the main program.
4. Save file (**WARNING: always ensuring decode and encode file with gb2312. NOT utf8!!**).
