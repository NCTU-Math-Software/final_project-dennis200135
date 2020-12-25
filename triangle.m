
axis([-20 20 -20 20])                       %設座標
axis equal
hold on;                                    %將圖保存

[gx,gy,button] = ginput(3);                 %輸入三個點   
gx=[gx;gx(1)];
gy=[gy;gy(1)];
plot(gx,gy)                                 %作圖                                  
scatter(gx,gy)                              %標記所選的點
scatter(0,0)                                %標記原點

if(gx(1)==gx(2) && gy(1)==gy(2) && gx(3)==gx(2) && gy(3)==gy(2) && gx(1)==gx(3) && gy(1)==gy(3))    %圖形為一個點
    disp("點")
else
    if((gx(1)==gx(2) && gy(1)==gy(2)) || (gx(3)==gx(2) && gy(3)==gy(2)) || (gx(1)==gx(3) && gy(1)==gy(3)))  %圖形為一條線
        disp("線")
    else
        A1=abs(0.5*(gx(1)*gy(2)+gx(2)*gy(3)+gx(3)*gy(1)-gx(1)*gy(3)-gx(2)*gy(1)-gx(3)*gy(2)));  %所選三角形面積
       
        B=abs(0.5*(gx(2)*gy(3)-gx(3)*gy(2)));               %原點與三點中任兩點所形成三角形面積
        C=abs(0.5*(gx(3)*gy(1)-gx(1)*gy(3)));
        D=abs(0.5*(gx(1)*gy(2)-gx(2)*gy(1)));
        A2=B+C+D;
        
        disp("面積=")
        disp(A1)
        
        if(A1==A2)              %判斷原點在三角形內外
            disp("inside")
        else
            disp("outside")
        end
    end
end
