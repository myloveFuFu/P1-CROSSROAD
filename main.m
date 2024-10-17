function main
    [car_number,road_width,not_stop_possibility,g,o,r,car_number_x,car_number_ox,car_number_y,car_number_oy] = initialise_parameters();
    % calling the initialise_parameters function
    
    n = 1;

    car_pos_x = -5*road_width : road_width + 2 : -5*road_width + (road_width + 2)*(car_number_x-1);
    car_pos_ox = 4*road_width : -road_width - 2 : 4*road_width - (road_width + 2)*(car_number_ox-1);
    car_pos_y = -5*road_width : road_width + 2 : -5*road_width + (road_width + 2)*(car_number_y-1);
    car_pos_oy = 4*road_width : -road_width - 2 : 4*road_width - (road_width + 2)*(car_number_oy-1);
    % initialise the position of cars in different directions
    
    v = 1/5; % the speed of cars : the distance that a car goes per 1/60 seconds 

    plates = assign_plates(car_number_x,car_number_ox,car_number_y,car_number_oy);
    % initialse the plates

    print_car_plates(plates,car_number_x,car_number_ox,car_number_y,car_number_oy);
    % print the car---plates list

    psb_x = rand(1,car_number_x);
    psb_ox = rand(1,car_number_ox);
    psb_y = rand(1,car_number_y);
    psb_oy = rand(1,car_number_oy);

    while true
        
        [light_color1,light_color2,time_left] = light_maker(n,g,o,r);
        % output light colors

        n1 = 1;
        n2 = 1;
        n3 = 1;
        n4 = 1;

        
        for t1 = 1:car_number_x
            if abs(car_pos_x(t1) - (-3*road_width/2)) < 1e-3 && strcmp(light_color2, 'r')
                n1 = psb_x(t1);
                if n1 <= not_stop_possibility
                    disp(car_to_plate(plates,'x',t1,car_number_x,car_number_ox,car_number_y,car_number_oy));
                end
            elseif strcmp(light_color2, 'o') || strcmp(light_color2, 'g')
                n1 = 1;
            end
        end

        for t2 = 1:car_number_ox
            if abs(car_pos_ox(t2) - road_width/2) < 1e-3 && strcmp(light_color2, 'r')
                n2 = psb_ox(t2);
                if n2 <= not_stop_possibility
                    disp(car_to_plate(plates,'ox',t2,car_number_x,car_number_ox,car_number_y,car_number_oy));
                end
            elseif strcmp(light_color2, 'o') || strcmp(light_color2, 'g')
                n2 = 1;
            end
        end
        
        for t3 = 1:car_number_y
            if abs(car_pos_y(t3) - (-3*road_width/2)) < 1e-3 && strcmp(light_color1, 'r')
                n3 = psb_y(t3);
                if n3 <= not_stop_possibility
                    disp(car_to_plate(plates,'y',t3,car_number_x,car_number_ox,car_number_y,car_number_oy));
                end
            elseif strcmp(light_color1, 'o') || strcmp(light_color1, 'g')
                n3 = 1;
            end
        end

        for t4 = 1:car_number_oy
            if abs(car_pos_oy(t4) - road_width/2) < 1e-3 && strcmp(light_color1, 'r')
                n4 = psb_oy(t4);
                if n4 <= not_stop_possibility
                    disp(car_to_plate(plates,'oy',t4,car_number_x,car_number_ox,car_number_y,car_number_oy));
                end
            elseif strcmp(light_color1, 'o') || strcmp(light_color1, 'g')
                n4 = 1;
            end
        end

        if n1 <= not_stop_possibility
            car_pos_x = car_pos_x + v; 
        else
            for i1 = 1: car_number_x
                if abs(car_pos_x(i1) - (-3*road_width/2)) < 1e-3 && strcmp(light_color2, 'r')
                    for i2 = 1:i1-1
                    car_pos_x(i2) = car_pos_x(i2) - v;
                    end
                else
                    car_pos_x(i1) = car_pos_x(i1) + v;
                end
            end
        end

        if n2 <= not_stop_possibility
            car_pos_ox = car_pos_ox - v;
        else
            for i3 = 1: car_number_ox
                if abs(car_pos_ox(i3) - road_width/2) < 1e-3 && strcmp(light_color2, 'r')
                    for i4 = 1:i3-1
                    car_pos_ox(i4) = car_pos_ox(i4) + v;
                    end
                else
                    car_pos_ox(i3) = car_pos_ox(i3) - v;
                end
            end
        end
        
        if n3 <= not_stop_possibility
            car_pos_y = car_pos_y + v;
        else
            for i5 = 1: car_number_y
                if abs(car_pos_y(i5) - (-3*road_width/2)) < 1e-3 && strcmp(light_color1, 'r')
                    for i6 = 1:i5-1
                    car_pos_y(i6) = car_pos_y(i6) - v;
                    end
                else
                    car_pos_y(i5) = car_pos_y(i5) + v;
                end
            end
        end

        if n4 <= not_stop_possibility
            car_pos_oy = car_pos_oy - v;
        else
            for i7 = 1: car_number_oy
                if abs(car_pos_oy(i7) - road_width/2) < 1e-3 && strcmp(light_color1, 'r')
                    for i8 = 1:i7-1
                    car_pos_oy(i8) = car_pos_oy(i8) + v;
                    end
                else
                    car_pos_oy(i7) = car_pos_oy(i7) - v;
                end
            end
        end

        for i9 = car_number_x : -1 : 1
            if abs(car_pos_x(i9) - 4*road_width) < 1e-3
                car_pos_x(i9) = [];
                car_number_x = car_number_x - 1;
            end
        end

        for i10 = car_number_ox : -1 : 1
            if abs(car_pos_ox(i10) + 5*road_width) < 1e-3
                car_pos_ox(i10) = [];
                car_number_ox = car_number_ox - 1;
            end
        end

        for i11 = car_number_y : -1 : 1
            if abs(car_pos_y(i11) - 4*road_width) < 1e-3
                car_pos_y(i11) = [];
                car_number_y = car_number_y - 1;
            end
        end

        for i12 = car_number_oy : -1 : 1
            if abs(car_pos_oy(i12) + 5*road_width) < 1e-3
                car_pos_oy(i12) = [];
                car_number_oy = car_number_oy - 1;
            end
        end
        % controlling cars' movement        

        axis([-5*road_width 5*road_width -5*road_width 5*road_width]); 
        clf;
        axis equal;
        draw(road_width,light_color1,light_color2,car_number_x,car_number_ox,car_number_y,car_number_oy,car_pos_x,car_pos_ox,car_pos_y,car_pos_oy);
        % draw the figure

        n = n+1;
        pause(1/60);

        if car_number_x == 0 && car_number_ox == 0 && car_number_y == 0 && car_number_oy == 0 
            break
        elseif detect_crash(car_pos_x,car_pos_ox,car_pos_y,car_pos_oy,road_width) 
            disp('CRASH! You lose the game!');
            break
        end
    end
end