%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stress Matrix (MPa)
clear variables; close all; clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SYield = input('Enter Yield Stress of Material in MPa: \n');

Sxx = 100; Sxy = 50; Sxz = 0; 
Syy = -14; Syz = 0;
Szz = 0;
MStress = [Sxx Sxy Sxz; Sxy Syy Syz; Sxz Syz Szz];

SPrin = eigs(MStress);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Maximum Principle Stress
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SMax = max(abs(SPrin));

if SMax < SYield
    fprintf('Maximum Principle Stress Okay \n')
    FofS = SYield/SMax;
    fprintf('Factor of Safety: %9.8f \n', FofS)
    
else
    fprintf('Maximum Principle Stress Exceeds Yield Stress \n')
    
end
