clc; clear all; close all;

fs = 4000;
t = 0:1/fs:0.5-1/fs

ver = [697 770 852 941];
hor = [1209 1336 1477];

tones = [];

for k = 1:length(ver)
    for l = 1:length(hor)
        tone = sum(sin(2*pi*[ver(k);hor(l)].*t))';
        tones = [tones;tone;zeros(size(tone))];
    end
end

% To hear, type soundsc(tones,fs)
soundsc(tones,fs)
%plot(tones)

S = timetable(seconds(0:length(tones)-1)'/fs,tones);