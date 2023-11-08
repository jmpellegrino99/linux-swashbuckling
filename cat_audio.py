import pyperclip as clip

lst = [f"lisamarty{i}.mp3" for i in range(1,7)]
res = "ffmpeg -i 'concat:" + "|".join(lst) + "' -c copy lisa.mp3"
clip.copy(res)