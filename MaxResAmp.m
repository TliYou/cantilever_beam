function A = ResonanceAmplitude(z0,gamma,L,wn,rho,S,E,I)
% This function gives the amplitude of vibration in resonance conditions.
% Value of gamma should NOT be zero.
%   Detailed explanation goes here
if gamma==0
    A=NaN;
    "The amplitude of resonance for an undamped system is infinity!"
else
    A=4*z0./gamma./L.*sqrt(wn)./nthroot(rho.*S./E./I,4);
end

end

