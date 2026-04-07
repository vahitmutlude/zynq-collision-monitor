t = 0 : 0.01 : 5;
x = 100 - 20*t;
noise = 0.5 * randn(size(t));
noisy_x = x + noise;
noisy_x = max(0,noisy_x);
noisy_x_int = round(noisy_x*100);
fileID = fopen("noisy_distance_data.txt","w");
fprintf(fileID,"%04X\n",noisy_x_int);
fclose(fileID);

