# SimpleDoor
![image](https://user-images.githubusercontent.com/118437098/220928895-295eb391-a7d1-4c2e-bc6b-1385999be45b.png)
## API: 
### Loading the API:
```lua
local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexplayrus2/SimpleDoor/main/main.lua", true))()
```
### Create a Rush-like entity:
```lua
api:createrushent(Decal Id *REQUIRED*, Audio Id *REQUIRED*)
```
### Jumpscare the player
```lua
api:jumpscare(Decal Id *REQUIRED*, Audio Id *REQUIRED*)
```
### Flicker the lights
```lua
api:flickerlights()
```
### Give the player a crucifix which can be used to banish the custom entities:
```lua
api:givecrucifix()
```
### Activate subtitles (gets the audio's name from the roblox library)
```lua
api:createsubtitles()
```
### Detect if the player entered a new room
```lua
function newroom()
print("a new room has been created!")
end
api:onnewroom(newroom)
```
### Spawn a slower rush-like entity (useful for chase scenes)
```lua
api:createchaseent(decal id *REQUIRED*, audio id *REQUIRED*)
