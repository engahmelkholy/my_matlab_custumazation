function go(n)
%% mainaly this function is proposed the cd command 
%% go o,q >> open, quit the matlab
%% go home,work,tst,mtp >> go to fixed folder ahk, matlab work dir, go test folder
%% go to for current project it will change respectifilly
%% "p1,wave,wavee,p7,p52,genlag"
%% go d/ go c, cc, ccc >> clearing options and cd options
%% definations of the backages 
%% go mtp identify the matpower 
    
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
        %cd 'C:\Users\ahm_e\Documents\MATLAB\SVC-AUTO'
        cd 'C:\Users\ahm_e\Documents\MATLAB\P_7_4\IEEE-4bus'
        go mtp
        case 'wveg'
        cd 'C:\Users\ahm_e\Documents\MATLAB\wave-energy-egypt'
        p = genpath('source');
        addpath(p);
        clear p
        case 'genlag'
            p = genpath('C:\Users\ahm_e\Documents\MATLAB\ga-main\genlag\gatbx');
            addpath(p);
            clear p
        cd 'C:\Users\ahm_e\Documents\MATLAB\ga-main\genlag'
        case 'gramm'
            %% gramm is software to plot in proffessional way
            %%to install it you must go to git hub and search for gramm and then clone it in the matlab toolbox folder
            %% path to matlab toolbox folder "2021b\toolbox" and then type the command "edit 'pathdef'" and then add it in matlab root 
            %% adding to matlab root write this command "matlabroot,'\toolbox\gramm;', ..." in the "pathdef.m"
            %% then to update this toolbox you should change the permission previlage for the gramm file
        cd 'C:\Program Files\Polyspace\R2021a\toolbox\gramm'
        
        case 'mtp'
        addpath( ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\lib', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\lib\t', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\data', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\most\lib', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\most\lib\t', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mp-opt-model\lib', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mp-opt-model\lib\t', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mips\lib', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mips\lib\t', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mptest\lib', ...
        'C:\Users\ahm_e\Documents\MATLAB\matpower\mptest\lib\t', ...
        '-end' );
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
    case 'bash'
        system('C:\Program Files\Git\git-bash.exe','-echo');
    otherwise
        cd(n)
    end
end