t = 0 : 0.01 : 5;
x = 100 - 20*t;
x_int = round(x*100);
fileID = fopen('ideal_distance_data.txt', 'w');
fprintf(fileID,'%04X\n',x_int);
fclose(fileID);
