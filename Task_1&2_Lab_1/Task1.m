x=[20,20,30,30,20];
y=[15,45,45,15,15];
plot(x,y);
fill(x,y,'black');
hold on;
x=[24,26,26,24,24];
y=[15,15,3,3,15];
plot(x,y);
fill(x,y,[0.5 0.5 0.5]);
r=3;
theta=0:0.1:360;
x=r*cosd(theta)+25;
for i=0:2
    y=r*sind(theta)+40-i*10;
    plot(x,y);
    if i==0
        fill(x,y,[0.23 0 0]);
    elseif i==1
        fill(x,y,[0.3 0.3 0.0]);
    else
        fill(x,y,[0 0.2 0]);
    end
end
xlim([0 50]);
ylim([0 50]);
grid on;
while 1
    for i=0:2
        y=r*sind(theta)+40-i*10;
        plot(x,y);
        if i==0
           fill(x,y,'r');
           pause(1);
           fill(x,y,[0.23 0 0]);
        elseif i==1
           fill(x,y,'y');
           pause(1);
           fill(x,y,[0.3 0.3 0.0]);
        else
           fill(x,y,'g');
           pause(1);
           fill(x,y,[0 0.2 0]);
        end
    end
end