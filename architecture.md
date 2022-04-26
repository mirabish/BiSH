# Study Story Architecture 
[Back to home](mirabish.github.io/bish/)


## Key Archictecture Drivers 
* Process oriented decomposition
* Quality Attributes: 
   * Reliability, availability, portability 
* Design Purpose:
   * Process oriented, everything works together 
* Primary Funcitonality:
   * Ease of use 
   * Ease of understanding 
* Architecture Constraints:
   * Pico-8 code character limit
   * Design blocks in 8-bit sprites 

## Style Choices

1. Publish & Subscribe: 
   Reasoning:
      * System evolution and customization
      * Easily reuse components in other event driven systems 


2. Pipe & Filter: 
   Reasoning:
      * Assumes format for input & output 
      * System evolution is easy (adding new components/ features)
      * New filters can be added in system configuration 

## Pipe And Filter 
I decded to go with Pipe & Filter due to the simple nature of my components. There aren't a ton of moving parts. The main components are between the room collosions and the sprite representing the user. The user needs to be able to ineract with objects in the room and they perform their tasks. The bulk of the work is in the looks, feel, and some of the logic for colloisions/ interactions. 

[Pipe&Filter](BiSH/IMG_0656.jpg)


