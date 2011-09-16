function [ ibsta ] = ibclr(gpib)
%ibclr -- clear device (device)
%   [ ibsta ] = ibclr( ud )
% ibclr() sends the clear command to the device specified by ud.

ibsta = calllib('gpib32', 'ibclr', gpib.ud);
gpib.ibsta = ibsta;
assignin('caller', inputname(1), gpib);
end
