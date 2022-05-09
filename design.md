# Design Document 

[Back to home] (README.md)

## Design choosen: Pipe & Filter 
Pipe and filter fit the system best because of the smaller scope of the project. My project wasn't too complex as far as interactions between moving parts. The only moving part is the player while the room object are statics. The interaction between the moving pipe being the character movement interacts with the object in the room. The character you play is designed to have limited actions because we are keeping things distraction free. 
![Pipe & Filter](IMG_0656.jpg)

## Breaking it into Classes 
## Filter
* Responsibility- gets data input
  * Checking collisions in code: This filter takes in the flag tiles and actively checks to make sure the character is not overstepping on to the tile flags that mark boundaries like walls or objects. 
  * Interactions in code: This filter checks to see if the sprite is near the stereo object to play music while the user stays on task
 
## Pipe
* Responsibility- transfer information 
 * Character movement- moves the sprite in the map 8 bits at a time in the 2D plane 
 * Music- transfers music signals from the music editor based on length, pitch, tone, etc. 

## Current issues
 * Hard time implementing the timer to count up from seconds to minutes. Currently the timer breaks after going past one minute because it won't store past 1 min to the stat function. The timer is put into the top corner to easily work on the issues instead of having the issue and a interaction function to write when the user interacts with the timer/ clock on the wall or computer. 

