% Course: CSCI 251, Section 3
% Student Name: Will Tribble
% Student ID: 10540462
% Programming Assignment 1 Homework
% Due Date: Sept. 14, 2015

% In keeping with the Honor Code of UM, I have neither given nor received
% assistance from anyone other than the instructor.

% Program Description: A kicker is kicking a soccer ball at the goal.
% Taking user input for the distance from the goal, the seed the ball is
% kicked, and the angle it is kicked with, calculate the flight time of the
% ball, the range it travels, and whether the shot is a miss or a score.

% Clear screens
clc
clear

% Get user inputs
initDistance = input('Enter the initial distance to the goal: ');
initSpeed = input('Enter the initial speed when the ball is kicked: ');
initAngle = input('Enter the initial angle in degrees: ');

% Set some basic variables up
GRAVITY = 9.81;
miss = 0;
score = 0;

% Calulations
radianAngle = initAngle * (pi)/180;
flightTime = (2 * initSpeed * sin(radianAngle))/GRAVITY;
range = flightTime * initSpeed * cos(radianAngle);

% Determine if the shot was a score or a miss
success = abs(initDistance - range);


    
% Display the results
fprintf('\nFlight time (s): %.1f\nRange: %.1f\n0 = Miss! 1 = Score!\n%d\n',flightTime,range,success<=6);

