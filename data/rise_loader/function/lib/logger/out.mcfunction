execute in rise_loader:temp if data block 0 0 0 LastOutput run tellraw @a {source:"block",type:"nbt",interpret:true,block:"0 0 0",nbt:"LastOutput"}
execute in rise_loader:temp if data block 0 0 0 LastOutput run setblock 0 0 0 air
execute in rise_loader:temp if block 0 0 0 command_block unless data block 0 0 0 LastOutput run schedule function rise_loader:lib/logger/out 1 append