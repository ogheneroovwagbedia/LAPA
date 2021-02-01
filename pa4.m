ax = 100;
by = 100;
v  = zeros(ax,by);
V(1,:) = 0;
V(by, :) = 0;
V(:,1) = 1;  
V(:,ax) = 1;
TotalIteriation = 1000;
x = 1;

while x <= TotalIteriation
    for y = 2:ax-1
        for z = 2:by-1
            V(y,z) = (V(y+1, z) + V(y-1, z) + V(y, z+1) + V(y, z-1))/4;
        end
        if mod(x,50) == 0
            surf(V')
            pause(0.05)
        end
    end
    x = x + 1;
end

[cx,cy] = gradient(V);

figure
quiver(-cy',-cx',1)