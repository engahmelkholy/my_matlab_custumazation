    close all
    bdclose('all')
    clc
    delete *.bak
    %remove all added paths
    restoredefaultpath;
    p = genpath('D:\OneDrive - Fculty Of Engineering (Tanta University)\General_software\scripts\AHK');
    addpath(p);
    go home;
    clear all 