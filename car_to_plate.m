function plate = car_to_plate(plates,direction,number,car_number_x,car_number_ox,car_number_y,car_number_oy)

midx_x = car_number_x;
midx_ox = car_number_x + car_number_ox;
midx_y = car_number_y + car_number_x + car_number_ox;

switch direction
    case 'x'
        plate = plates{number};
    case 'ox'
        plate = plates{number+midx_x};
    case 'y'
        plate = plates{number+midx_ox};
    case 'oy'
        plate = plates{number+midx_y};
end
end