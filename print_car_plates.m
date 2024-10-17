function print_car_plates(plates,x,ox,y,oy)
% a function that print caar to plates list
disp('Below is cars and their plates:');
for i = 1:x
    disp(strcat('diretion:x',' vehicle number:',num2str(i),'------',plates{i}));
end
for i2 = 1:ox
    i3 = i2 + x;
    disp(strcat('diretion:ox',' vehicle number:',num2str(i2),'------',plates{i3}));
end
for i4 = 1:y
    i5 = i4 + x+ox;
    disp(strcat('diretion:y',' vehicle number:',num2str(i4),'------',plates{i5}));
end
for i6 = 1:oy
    i7 = i6 + x+ox+y;
    disp(strcat('diretion:oy',' vehicle number:',num2str(i6),'------',plates{i7}));
end
disp('');
disp('Below is the plates of all the cars that did not stop at the traffic light:')
end