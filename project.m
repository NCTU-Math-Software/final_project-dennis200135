x=zeros(300,300);
y=100.*ones(50,50);
z=50.*ones(50,50);
colormap(map)		% 取用色盤矩陣
for ii=1:3
    for jj=1:3
        x((ii-1)*100+26:(ii-1)*100+75,(jj-1)*100+26:(jj-1)*100+75)=y;
    end
end


for kk=1:10
    r = randi(9,1,1);
    
    if (r==1)
        x(26:75,26:75)=z;
    elseif (r==2)
        x(126:175,26:75)=z;
    elseif (r==3)
        x(226:275,26:75)=z;
    elseif (r==4)
        x(26:75,126:175)=z;
    elseif (r==5)
        x(126:175,126:175)=z;
    elseif (r==6)
        x(226:275,126:175)=z;
    elseif (r==7)
        x(26:75,226:275)=z;
    elseif (r==8)
        x(126:175,226:275)=z;
    elseif (r==9)
        x(226:275,226:275)=z;
    end
    image(x)
    drawnow; 
    pause(0.5)
    for ii=1:3
        for jj=1:3
            x((ii-1)*100+26:(ii-1)*100+75,(jj-1)*100+26:(jj-1)*100+75)=y;
        end
    end
end

    


