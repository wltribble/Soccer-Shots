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

