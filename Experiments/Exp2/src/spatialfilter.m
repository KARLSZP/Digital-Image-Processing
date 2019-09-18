function [ res ] = spatialfilter(I, mask)

    [M,N] = size(I);
    [m,n] = size(mask); % Generally as [3, 3]
    
    res = zeros(M,N);
    for x = 1:M
        for y = 1:N
           for i = 1:m
               for j = 1:n
                   % [1-m/2 ~ m-1/2 ] >>> [1 ~ m]
                   target_x = x-i+(m+1)/2;
                   target_y = y-j+(n+1)/2;
                   % Boundary handling [mirroring]
                   if(target_x <= 0)    
                       target_x = 1-target_x;
                   else
                       if(target_x > M)
                           target_x = M-(target_x-M);
                       end
                   end
                   if(target_y <= 0)
                       target_y = 1-target_y;
                   else
                       if(target_y > N)
                           target_y = N-(target_y-N);
                       end
                   end
                   % Calculation
                   res(x,y) = res(x,y) + I(target_x,target_y) * mask(i,j);
               end
           end
        end
    end
end


        


