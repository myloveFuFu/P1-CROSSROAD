function result = detect_crash(pos_x,pos_ox,pos_y,pos_oy,road_width)
result = 0;

for i1 = 1 : length(pos_x)
    if pos_x(i1) >= -17*road_width/12 && pos_x(i1) <= -road_width/12
        for i2 = 1 : length(pos_oy)
            if pos_oy(i2) <= -road_width/12 && pos_oy(i2) >= -17*road_width/12
                result = 1;
            end
        end
    end
    if pos_x(i1) >= -11*road_width/12 && pos_x(i1) <= 5*road_width/12
        for i3 = 1 : length(pos_y)
            if pos_y(i3) <= -road_width/12 && pos_y(i3) >= -17*road_width/12
                result = 1;
            end
        end
    end
end

for i4 = 1 : length(pos_ox)
    if pos_ox(i4) >= -17*road_width/12 && pos_ox(i4) <= -road_width/12
        for i5 = 1 : length(pos_oy)
            if pos_oy(i5) <= 5*road_width/12 && pos_oy(i5) >= -11*road_width/12
                result = 1;
            end
        end
    end
    if pos_ox(i4) >= -11*road_width/12 && pos_ox(i4) <= 5*road_width/12
        for i6 = 1 : length(pos_y)
            if pos_y(i6) <= 5*road_width/12 && pos_y(i6) >= -11*road_width/12
                result = 1;
            end
        end
    end
end

% output result;if result=0,there is no crash,else there will be a car
% crash and end the animation
end