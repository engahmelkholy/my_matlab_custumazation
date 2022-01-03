function crt(name)
str=[name, '.m'];
name=join(str);
fid=fopen(name,'w');
fclose(fid);
open(name)
end