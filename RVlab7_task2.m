% photo=imread('circle_1.bmp');
a = 16;

Area_real = a^2;
Permiter_real = 4*a;

background = a + 100;
image = zeros(background);

start = (background-a)/2;
finish = start-1 + a;
image(start:finish,start:finish) = 1;
% A = rgb2gray(photo);
% grey = rgb2gray(photo);
% threshold =0.4;
% 
% grey = double(grey)/255;
% 
% B = grey <= threshold;

% image = photo;
Area = area(image);
se = strel('disk',1);
%% Rotation

% alfa_max = 360;
% delta = 2;
% 
% vector = 0:delta:alfa_max;
% amount = size(vector,2);
% 
% vector1 = zeros(1,amount);
% vector2 = zeros(1,amount);
% 
% 
% 
% for i=1:amount
%     degree = vector(i);
%     image_rotation = imrotate(image, degree);
%     contour_rotation = image_rotation - imerode(image_rotation, se);
%     Perimeter1 = perimeter(contour_rotation);
%     
%     contour_bwperim = bwperim(image_rotation);
%     Perimeter2 = perimeter(contour_bwperim);
%     Area2 = bwarea(image_rotation);
%     Area1 = area(image_rotation);
%     vector1(i) = Perimeter1^2/(4*pi*Area1);
%     vector2(i) = Circularity(image_rotation);
%     
%     vector3(i) = Perimeter2^2/(4*pi*Area2);
%     vector4(i) = Circularity(image_rotation);
%     
% end
% 
% figure;
% subplot(2,2,1);
% plot(vector,vector1);
% ylabel('Area');
% 
% subplot(2,2,2);
% plot(vector,vector2);
% ylabel('Permiter');
% 
% subplot(2,2,3);
% plot(vector,vector3);
% ylabel('Area');
% title('bwarea');
% 
% subplot(2,2,4);
% plot(vector, vector4);
% ylabel('Permiter');
% title('bwperim');
%% Scaling

% vector = 0:100;
% amount = size(vector,2);
% 
% for i = 1:amount
%     image_resize = imresize(image,i/(amount-1));
%     contour_resize = image_resize - imerode(image_resize, se);
%     Perimeter1 = perimeter(contour_resize);
%     
%     contour_bwperim = bwperim(image_resize);
%     Perimeter2 = perimeter(contour_bwperim);
%     Area2 = bwarea(image_resize);
%     Area1 = area(image_resize);
%     
%     vector1(i) = Perimeter1^2/(4*pi*Area1);
%     vector2(i) = Circularity(image_resize);
%     
%     vector3(i) = Perimeter2^2/(4*pi*Area2);
%     vector4(i) = Circularity(contour_bwperim);
% end
% subplot(2,2,1);
% plot(vector,vector1);
% ylabel('Area');
% 
% subplot(2,2,2);
% plot(vector,vector2);
% ylabel('Permiter');
% 
% subplot(2,2,3);
% plot(vector,vector3);
% ylabel('Area');
% title('bwarea');
% 
% subplot(2,2,4);
% plot(vector, vector4);
% ylabel('Permiter');
% title('bwperim');

%% Translation

vector = 0:100;
amount = size(vector,2);

for i = 1:amount
    image_translation = translate(image,[(i/(amount-1)),(i/(amount-1)), 0]);
    contour_translation = image_translation - imerode(image_translation, se);
    Perimeter1 = perimeter(contour_translation);
    
    contour_bwperim = bwperim(image_translation);
    Perimeter2 = perimeter(contour_bwperim);
    Area2 = bwarea(image_translation);
    Area1 = area(image_translation);
    
    vector1(i) = Perimeter1^2/(4*pi*Area1);
    vector2(i) = Circularity(image_translation);
    
    vector3(i) = Perimeter2^2/(4*pi*Area2);
    vector4(i) = Circularity(image_translation);
end

subplot(2,2,1);
plot(vector,vector1);
ylabel('Area');

subplot(2,2,2);
plot(vector,vector2);
ylabel('Permiter');

subplot(2,2,3);
plot(vector,vector3);
ylabel('Area');
title('bwarea');

subplot(2,2,4);
plot(vector, vector4);
ylabel('Permiter');
title('bwperim');


%% 

function Circular = Circularity(image)


% Centroid of object
props = regionprops(image, 'Centroid');
x = props.Centroid(1);
y = props.Centroid(2);

% Boundary
bounds = bwboundaries(image);
distance = NaN(size(bounds{1,1},1),1);


%distance between centroid of object and boundary
for i=1:size(bounds{1,1},1)
        distance(i) = sqrt((x-bounds{1,1}(i,2))^2 + (y-bounds{1,1}(i,1))^2);
end

avrOfDistance = mean(distance);
stdOfDistance = std(distance);

Circular = (sqrt(3)*stdOfDistance)/avrOfDistance;
end


function count2 = perimeter(image)
    count2 = 0;
    for row = 1:size(image,1)
        for col = 1:size(image,2)
            if(image(row,col)>0)
                count2 = count2 + 1;
            end
        end
    end
end

function count1 = area(image)
    count1 = 0;
    for row = 1:size(image,1)
        for col = 1:size(image,2)
            if(image(row,col)>0)
                count1 = count1 + 1;
            end
        end
    end
end