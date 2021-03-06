function A = ResonanceAmplitude(w,z0,gamma,L,wn,rho,S,E,I)
% This function gives the amplitude of vibration in all frequencies
% Value of gamma should NOT be zero; otherwise the amplitude at resonance
% frequency goes to infinity.
%   Detailed explanation goes here

c=E*I/rho/S;

mu=1.875;
q=nthroot(abs(w.^2./c.^2.*(1-1i*gamma./w)),4);
G=sin(mu)*cosh(mu)-cos(mu)*sinh(mu);



if gamma==0
    A=NaN;
    "The amplitude of resonance for an undamped system is infinity!"
else
    A=2*z0.*wn.*abs(cos(q.*L)+cosh(q.*L))./(mu.*G.*sqrt((w-wn).^2+gamma.^2/4));
end

end

