#コマンドの実行結果を返す
#引数{"command":""}

#適切な場所にコマンドブロックを設置する.
$execute in rise_loader:temp run setblock 0 0 0 command_block{Command:"$(command)",auto:1b}
execute in rise_loader:temp run function rise_loader:lib/logger/out