function nyquist2(varargin)
%NYQUIST2 Nyquist plot showing only positive freqs and units in hz
%   
    phi=linspace(-pi,pi,100);
    c=frd(-1+0.5*exp(1i*phi),1:length(phi));
    hn=nyquistplot(c,'r--',varargin{1:end});
    nopts=nyquistoptions;
    nopts.ShowFullContour='off';
    nopts.FreqUnits='hz';
    setoptions(hn,nopts);
end

