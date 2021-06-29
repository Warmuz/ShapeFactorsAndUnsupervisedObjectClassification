%curl
% photo=imread('circle_2.bmp');
% 
% Perimeter = perimeter(photo);
% Area = area(photo);
% 
% fibrelength = (Perimeter-sqrt((Perimeter)^2-16*Area))/4;
% fibrewidth1 = Area/fibrelength;
% fiberwidth2 = Area/objectDiameter(photo);
% 
% 
% function maximalDiameter = objectDiameter(image)
% X_max = 0;
% X_min = size(image,1);
% 
% Y_max = 0;
% Y_min = size(image,2);
% vector = [];  %storing in two element vector position of pixel image
% maximalDiameter = 0;
% 
% for row = 1:size(image,1)
%     for col = 1:size(image,2)
%         if(image(row,col) == 1)
%             vector = [vector [row,col]'];
%         end
%     end
% end
% 
% 
% for row = 1:size(vector,2)
%     for col = 1:size(vector,2)
%         diam = sqrt((vector(1,row) - vector(1,col))^2 + (vector(2,row) - vector(2,col))^2);
%         if diam > maximalDiameter
%             maximalDiameter = diam;
%             X_max = vector(1,row);
%             X_min = vector(1,col);
%             Y_max = vector(2,row);
%             Y_min = vector(2,col);
%         end
%     end
% 
% end
% end
% 
% function count2 = perimeter(image)
%     count2 = 0;
%     for row = 1:size(image,1)
%         for col = 1:size(image,2)
%             if(image(row,col)>0)
%                 count2 = count2 + 1;
%             end
%         end
%     end
% end
% 
% function count1 = area(image)
%     count1 = 0;
%     for row = 1:size(image,1)
%         for col = 1:size(image,2)
%             if(image(row,col)>0)
%                 count1 = count1 + 1;
%             end
%         end
%     end
% end
photo1=imread('circle_1.bmp');

se = strel('disk',1);

E1 = imerode(photo1,se);

contour1 = (photo1-E1);

a = aspectratio(contour1);


function aspect_ratio = aspectratio(countour)
 


    x_max = 0;
    x_min = size(countour,1);

    y_max = 0;
    y_min = size(countour,2);



    for row = 1:size(countour,1)
        for col = 1:size(countour,2)
            if(countour(row,col) == 1)
                if(row > y_max)
                    y_max = row;

                end
                if(row < y_min)
                    y_min = row;

                end
                if(col > x_max)
                    x_max = col;

                end
                if(col < x_min)
                    x_min = col;

                end
            end
        end
    end


    %gorizonatl and vertical of feret box
    out = [x_max-x_min, y_max-y_min];
    aspect_ratio = out(1)/out(2);
end