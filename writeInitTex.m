%% Overwrite texture


function [] = writeInitTex(ori0,fname)

f1 = fopen(fname, 'w');
line = [ori0.phi1/degree ori0.Phi/degree ori0.phi2/degree 0.002];

%first 3 lines empty 
text = ' '; 
fprintf(f1,'%s\n',text);
fprintf(f1,'%s\n',text);
fprintf(f1,'%s\n',text);

%number of grains on line 4
text = 'B    500';
fprintf(f1,'%s\n',text);

% write the number of grains on each line after that
for i = 1:500
    text = num2str(line);
    fprintf(f1,'%s\n',text);
end