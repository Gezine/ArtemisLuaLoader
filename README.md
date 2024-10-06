# ArtemisLuaLoader

Artemis is a cross-platform Visual Novel game engine that utilizes Lua script.

Windows / Android / iOS / Web / Nintendo Switch / Playstation are supported.



Most of Artemis games automatically load save9999.dat file when game boots.

By loading an edited save file, we can chain-load custom scripts from the save folder.

Game boots -> load savefile "save9999.dat" -> load iet script "inject.iet" -> load lua script "inject.lua"



This has been tested on Windows and PS4.

Pretty sure it will work on other platforms too.



This repo currently contains custom save file for PS4 game CUSA16074 (Raspberry Cube).

I chose this game because it was the easiest physical disc that I could obtain.

There are other physcial disc games that uses Artemis such as CUSA27389 (ハミダシクリエイティブ) and CUSA13303 (ノラと皇女と野良猫ハート HD).

If you have access to PS store you can just buy the trial version to test it.

https://store.playstation.com/ja-jp/product/JP2551-CUSA27390_00-HAMIDASHITR00001/



You might have to create custom save9999.dat file for each game.



On Windows, you have access to luasocket and os.execute.

However, on PS4, you have limited access. (Check comments)



I will not explain how to copy PS4 save files to console.

Google this yourself.
