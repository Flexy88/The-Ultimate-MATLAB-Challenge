%% QUESTION ONE.

A = [1 2 3; 4 5 6; 7 8 0;]

%% QUESTION TWO. 

B = [2 1 0 6; 5 2 0 0; 0 7 2 2; 0 0 8 9;];
C = [64; 37; 66; 104;];
d = inv(B)*C  % solve for the unknown.

% QUESTION THREE.
        %% (a)
        
syms a b c x
eqn = 2*x^2 + x -1 == 0;
pretty(eqn)
sol = solve(eqn, x)

        %% (b)
        
syms a b c x
eqn2 = 7*x^2 + 5*x + 10 == 0;
pretty(eqn2)
sol2 = double(solve(eqn2, x))

        %% (c)
    
syms a b x y
eqn3 = 2*x^2 - x + 2*y^2 -8*y == 0;
pretty(eqn3)
sol3 = solve(eqn3, [x, y])

        %% (d)
    
syms a b c x y
eqn4 = x^2 + 2*x + y^2 -6*y + 1 == 0;
pretty(eqn4)
sol3 = solve(eqn4, [x, y])

% QUESTION FOUR.
    %% (a.)
syms x f(x)

x = [-3: 2.5 : 2] % -0.5, 2
y = 2*x - 1
plot(x, y)

    %% (b.)
syms x y

x = [-3: 2]; % -3 ,-2, -1, 0, 1, 2, 3
y = 2*x - 1;
plot(x, y)

%% QUESTION FIVE.

syms x2 y1 y2

x2 = [0:(2*pi/50):2*pi]

y1 = 2.5 * cos(x2)
hold on;
y2 = 3.5 * sin(x2)

plot(x2, y1, x2, y2)
title("Y vs X.")
xlabel("X Values")
ylabel("Y Values")
legend("2.5 cos(x)", "3.5 sin(x)")
grid on;

%% QUESTION SIX.

syms time timeAVR timePSS angle angleAVR anglePSS

time = xlsread("DATA FOR PLOTTING.xlsx", "A2:A1030");
angle = xlsread("DATA FOR PLOTTING.xlsx", "B2:B1030");


timeAVR = xlsread("DATA FOR PLOTTING.xlsx", "C2:C1044");
angleAVR = xlsread("DATA FOR PLOTTING.xlsx", "D2:D1044");


timePSS = xlsread("DATA FOR PLOTTING.xlsx", "E2:E1043");

anglePSS = xlsread("DATA FOR PLOTTING.xlsx", "F2:F1043");

xlim([0 8])
plot(time, angle, timeAVR, angleAVR, timePSS, anglePSS)

title("ROTOR ANGLE AGAINST TIME")
xlabel("Time(s)")
ylabel("Angle")
legend("None", "AVR", "PSS")
grid on








