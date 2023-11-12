#!/usr/bin/env python3
import pyperclip

input = "input.mp3"

output = "output" #Do not include file extension

cuts = [
["00:00:00","00:06:11"]
, ["00:10:23","00:14:38"]
, ["00:23:45","00:26:54"]
, ["00:33:41","00:37:42"]
, ["00:59:10","01:03:25"]
, ["01:13:12","01:17:45"]
]

temps = []

for i in range(len(cuts)):
    res = f"ffmpeg -i {input} -ss {cuts[i][0]} -to {cuts[i][1]} -c copy {output}{i}.mp3;"
    temps.append(res)

res = "\n".join(temps)

pyperclip.copy(res)