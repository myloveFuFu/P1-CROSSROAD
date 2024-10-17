function [light_color1,light_color2,time_left] = light_maker(n,g,o,r)
        time_left = mod(n/60,g+o+r);
        
        if time_left < g
            light_color1 = 'g';
        elseif time_left > g && time_left < g+o
            light_color1 = [1, 0.6471, 0];
        else
            light_color1 = 'r';
        end

        if time_left < r
            light_color2 = 'r';
        elseif time_left > r && time_left < r+g
            light_color2 = 'g';
        else
            light_color2 = [1, 0.6471, 0];
        end
        % initialise light_color1,2
end