
axis([-20 20 -20 20])
axis equal
hold on;                                    %將圖保存

[gx,gy,button] = ginput(3);                 
gx=[gx;gx(1)];
gy=[gy;gy(1)];
plot(gx,gy)                                 %作圖                                  
scatter(gx,gy)                              %標記所選的點
scatter(0,0)

if(gx(1)==gx(2) && gy(1)==gy(2) && gx(3)==gx(2) && gy(3)==gy(2) && gx(1)==gx(3) && gy(1)==gy(3))
    disp("dot")
else
    if((gx(1)==gx(2) && gy(1)==gy(2)) || (gx(3)==gx(2) && gy(3)==gy(2)) || (gx(1)==gx(3) && gy(1)==gy(3)))
        disp("line")
    else
        A1=abs(0.5*(gx(1)*gy(2)+gx(2)*gy(3)+gx(3)*gy(1)-gx(1)*gy(3)-gx(2)*gy(1)-gx(3)*gy(2)));
        B=abs(0.5*(gx(2)*gy(3)-gx(3)*gy(2)));
        C=abs(0.5*(gx(3)*gy(1)-gx(1)*gy(3)));
        D=abs(0.5*(gx(1)*gy(2)-gx(2)*gy(1)));
        A2=B+C+D;
        disp("面積=")
        disp(A1)
        if(A1==A2)
            disp("inside")
        else
            disp("outside")
        end
    end
end
