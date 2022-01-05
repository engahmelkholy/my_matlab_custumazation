function go(n)
switch n
    case 'main'
        cd 'C:\Users\ahm_e\Documents\MATLAB'
    case 'home'
        cd 'D:\OneDrive - Fculty Of Engineering (Tanta University)\General_software\scripts\AHK'
    case 'p1'
       cd 'C:\Users\ahm_e\Documents\MATLAB\micro_grid\phase_locked_loop\project PLL'     
    case 'zth'
       cd 'C:\Users\ahm_e\Documents\MATLAB\micro_grid\phase_locked_loop\Zthevenin'
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
    case 'tst'
    cd 'C:\Users\ahm_e\Documents\MATLAB\Test'
    case 'o'
        winopen(pwd)
    case 'q'
        exit
    case 'p7'
    cd 'C:\Users\ahm_e\Documents\MATLAB\SVC-AUTO'
        case 'p52'
    cd 'C:\Users\ahm_e\Documents\MATLAB\p_5_2'
end
end
