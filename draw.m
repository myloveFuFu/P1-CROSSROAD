function draw(road_width,light_color1,light_color2,car_x,car_ox,car_y,car_oy,car_pos_x,car_pos_ox,car_pos_y,car_pos_oy)
   

    x_vector = road_width/2 * ones(size( road_width/2 : 0.1 : 5*road_width));

    hold on

    plot(-5*road_width : 0.1 : - road_width/2 , x_vector,"-k");
    plot(x_vector.*(-1) , road_width/2 : 0.1 : 5*road_width,"-k");

    plot( road_width/2 : 0.1 : 5*road_width , x_vector,"-k");
    plot(x_vector , road_width/2 : 0.1 : 5*road_width,"-k");

    plot(-5*road_width : 0.1 : - road_width/2 ,x_vector.*(-1),"-k");
    plot(x_vector.*(-1) , -5*road_width : 0.1 :- road_width/2,"-k");

    plot( road_width/2 : 0.1 : 5*road_width , x_vector.*(-1),"-k");
    plot( x_vector , -5*road_width: 0.1 : -road_width/2,"-k");

    plot(zeros(size( road_width/2 : 0.1 : 5*road_width)) , -5*road_width : 0.1 : - road_width/2,"--k");
    plot(zeros(size( road_width/2 : 0.1 : 5*road_width)) , road_width/2 : 0.1 : 5*road_width ,"--k");
    plot(road_width/2 : 0.1 : 5*road_width , zeros(size( road_width/2 : 0.1 : 5*road_width)) ,"--k");
    plot(-5*road_width : 0.1 :  -road_width/2, zeros(size( road_width/2 : 0.1 : 5*road_width)) ,"--k");
    % draw roads

    plot(-road_width/2, road_width/2, "o",'MarkerEdgeColor', light_color1, 'MarkerFaceColor', light_color1);
    plot(road_width/2, -road_width/2, "o",'MarkerEdgeColor', light_color1, 'MarkerFaceColor', light_color1);
    plot(-road_width/2, -road_width/2, "o",'MarkerEdgeColor', light_color2, 'MarkerFaceColor', light_color2);
    plot(road_width/2, road_width/2, "o",'MarkerEdgeColor', light_color2, 'MarkerFaceColor', light_color2);
    % rceive variable light_color1,2 and draw lights

    for i = 1:car_x
        rectangle("Position",[car_pos_x(i),-5*road_width/12,road_width,road_width/3],"FaceColor","m"); 
    end
    for i = 1:car_ox
        rectangle("Position",[car_pos_ox(i),road_width/12,road_width,road_width/3],"FaceColor","b"); 
    end
    for i = 1:car_y
        rectangle("Position",[road_width/12,car_pos_y(i),road_width/3,road_width],"FaceColor",[0.8500 0.3250 0.0980]); 
    end
    for i = 1:car_oy
        rectangle("Position",[-5*road_width/12,car_pos_oy(i),road_width/3,road_width],"FaceColor","y");
    end
    % draw cars


    drawnow



    hold off

end








