function [car_number,road_width,not_stop_possibility,g,o,r,car_number_x,car_number_ox,car_number_y,car_number_oy] = initialise_parameters()
    car_number= input("please input number of cars = ");
    road_width = input('please input the width of the road = ');
    not_stop_possibility = input("please input the possibility that a car does not stop at the red light = ");
    
    
    g = input("please input the time(s) that a green light existed = ");
    o = input("please input the time(s) that a orange light existed = ");
    r = input("please input the time(s) that a red light existed = ");
    
    car_number_x = 0;
    car_number_ox = 0;
    car_number_y = 0;
    car_number_oy = 0;
    t = 0;

   random_array = randperm(4);
   for i = 1:car_number
       switch random_array(t+1) 
           case 1
               car_number_x = car_number_x + 1;
           case 2
               car_number_ox = car_number_ox + 1;
           case 3
               car_number_y = car_number_y + 1;
           case 4
               car_number_oy = car_number_oy + 1;
       end
       t = mod(t+1,4);
   end

end



