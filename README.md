# CROSSROAD

## Brief Introduction
It's a project to simulate a crossword.
It allows the user to inputs:
 - n the total number of cars,
 - w the width of the road
 - p the probability that a cars does not stop at the red light
 - g the time that a green traffic light exists
 - o the time that a orange traffic light exists
 - r the time that a red traffic light exists
  
Except the parameters listed above, all the parameters are generated randomly.
the number of cars in each direction expected to be average.
The goal is to animate the displacement of the cars with respect to the traffic lights. 
The choice of the user will impact the risk for a car crash to happen. 
The animation stops as soon a crash occurs and the player loses. 
If all the cars have gone through without any problem the player wins.



## How to run the code
- it is a matlab project so run it using matlab
- open main.m and run it

## Significant Tips
- When initializing the Parameters, think twice before you input 0, or there will be some unexpected results.
- for n, it should be a positive integer and for w,g,o,r, they should be positive numbers and the p should be between 0 and 1,n should be smaller than 34.
- For example, a recommended input is like n=10, w=10, p=0.5, g=5, o=2, r=3.
- You can also change the value of the speed of the cars in the main function by changing the value of the variable v, if your input is too large, the car will move too slow visually, and too fast if the input is too small, because v is not influenced by the value of road width w.
- to make sure you konw which car is to which plates, we print a list, in which the car is divided by its running direction, and numerical number is for edage to central at the biginning
- for example,x1 is the x diretion car which is at the left edge of the figure at the beginning


## Inplemented Functions
- Initialize the Parameters: allow the user to input some parameters and randomly generate other parameters
- Plot the Road: plot the road with the traffic lights and the cars
- Traffic lights: color cycle of the traffic lights
- Move the Cars: move the cars with respect to the traffic lights
- Generate Plates: generate the plates of the cars randomly
- allow the user to input the not stop probability.
- Rule Violation Detection:detect the car that does not stop at the red light and output the plate
- Crash Detection: detect the crash and end the game.
  
