function go(n)
    %% go o,q >> open, quit the matlab
    %% go home,work,tst >> go to fixed folder ahk, matlab work dir, go test folder
    %% go to for current project it will change respectifilly
    %% "p1,wave,wavee,p7,p52,genlag"
    %% go d/ go c, cc, ccc >> clearing options and cd options
switch n
    case 'o'
    winopen(pwd)
    case 'work'
        cd 'C:\Users\ahm_e\Documents\MATLAB'
    case 'home'
    cd 'D:\OneDrive - Fculty Of Engineering (Tanta University)\General_software\scripts\AHK'
        case 'tst'
    cd 'C:\Users\ahm_e\Documents\MATLAB\Test'
    case 'p1'
       cd 'C:\Users\ahm_e\Documents\MATLAB\micro_grid\phase_locked_loop\project PLL'     
    %case 'zth'
    %   cd 'C:\Users\ahm_e\Documents\MATLAB\micro_grid\phase_locked_loop\Zthevenin'
    case 'wave'
        p = genpath('C:\Users\ahm_e\Documents\MATLAB\WEC-Sim\source');
        addpath(p);
        clear p
       cd 'C:\Users\ahm_e\Documents\MATLAB\WEC-Sim_Applications\RM3_DD_PTO'
    case 'wavee'
        p = genpath('C:\Users\ahm_e\Documents\MATLAB\WEC-Sim\source');
        addpath(p);
        clear p
       cd 'C:\Users\ahm_e\Documents\MATLAB\WEC-Sim_Applications\Elec_wave'
    case 'p7'
    cd 'C:\Users\ahm_e\Documents\MATLAB\SVC-AUTO'
    case 'p52'
    cd 'C:\Users\ahm_e\Documents\MATLAB\p_5_2'
    case 'genlag'
        p = genpath('C:\Users\ahm_e\Documents\MATLAB\genlag\gatbx');
        addpath(p);
        clear p
    cd 'C:\Users\ahm_e\Documents\MATLAB\genlag'
% delete and quit degree
case 'd'
    close all
    clc
% cd option
case 'c'
    cd ..
case 'cc'
    cd ..
    cd ..
case 'ccc'
    cd ..
    cd ..
    cd ..
case 'q'
    exit
end
end
