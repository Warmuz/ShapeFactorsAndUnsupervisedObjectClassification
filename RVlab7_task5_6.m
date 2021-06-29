%Loading all images from images_2&1
photo1=imread('circle_1.bmp');
photo2=imread('circle_2.bmp');
photo3=imread('cross.bmp');
photo4=imread('dumbbell_1.bmp');
photo5=imread('dumbbell_2.bmp');
photo6=imread('ellipse_1.bmp');
photo7=imread('ellipse_2.bmp');
photo8=imread('ellipse_3.bmp');
photo9=imread('rectangle_1.bmp');
photo10=imread('rectangle_2.bmp');
photo11=imread('square_1.bmp');
photo12=imread('square_2.bmp');
photo13=imread('square_3.bmp');
photo14=imread('trapeze_1.bmp');
photo15=imread('trapeze_2.bmp');
photo16=imread('L_1.bmp');
photo17=imread('L_2.bmp');
photo18=imread('L_3.bmp');
photo19=imread('L_4.bmp');
photo20=imread('L_5.bmp');
photo21=imread('L_6.bmp');
photo22=imread('L_7.bmp');
photo23=imread('rectangle_11.bmp');
photo24=imread('rectangle_12.bmp');
photo25=imread('rectangle_3.bmp');
photo26=imread('rectangle_4.bmp');
photo27=imread('rectangle_5.bmp');
photo28=imread('rectangle_6.bmp');
photo29=imread('rectangle_7.bmp');

se = strel('disk',1);

E1 = imerode(photo1,se);
E2 = imerode(photo2,se);
E3 = imerode(photo3,se);
E4 = imerode(photo4,se);
E5 = imerode(photo5,se);
E6 = imerode(photo6,se);
E7 = imerode(photo7,se);
E8 = imerode(photo8,se);
E9 = imerode(photo9,se);
E10 = imerode(photo10,se);
E11 = imerode(photo11,se);
E12 = imerode(photo12,se);
E13 = imerode(photo13,se);
E14 = imerode(photo14,se);
E15 = imerode(photo15,se);
E16 = imerode(photo16,se);
E17 = imerode(photo17,se);
E18 = imerode(photo18,se);
E19 = imerode(photo19,se);
E20 = imerode(photo20,se);
E21 = imerode(photo21,se);
E22 = imerode(photo22,se);
E23 = imerode(photo23,se);
E24 = imerode(photo24,se);
E25 = imerode(photo25,se);
E26 = imerode(photo26,se);
E27 = imerode(photo27,se);
E28 = imerode(photo28,se);
E29 = imerode(photo29,se);

contour1 = (photo1-E1);
contour2 = (photo2-E2);
contour3 = (photo3-E3);
contour4 = (photo4-E4);
contour5 = (photo5-E5);
contour6 = (photo6-E6);
contour7 = (photo7-E7);
contour8 = (photo8-E8);
contour9 = (photo9-E9);
contour10 = (photo10-E10);
contour11 = (photo11-E11);
contour12 = (photo12-E12);
contour13 = (photo13-E13);
contour14 = (photo14-E14);
contour15 = (photo15-E15);
contour16 = (photo16-E16);
contour17 = (photo17-E17);
contour18 = (photo18-E18);
contour19 = (photo19-E19);
contour20 = (photo20-E20);
contour21 = (photo21-E21);
contour22 = (photo22-E22);
contour23 = (photo23-E23);
contour24 = (photo24-E24);
contour25 = (photo25-E25);
contour26 = (photo26-E26);
contour27 = (photo27-E27);
contour28 = (photo28-E28);
contour29 = (photo29-E29);

Area1 = area(photo1);
Area2 = area(photo2);
Area3 = area(photo3);
Area4 = area(photo4);
Area5 = area(photo5);
Area6 = area(photo6);
Area7 = area(photo7);
Area8 = area(photo8);
Area9 = area(photo9);
Area10 = area(photo10);
Area11 = area(photo11);
Area12 = area(photo12);
Area13 = area(photo13);
Area14 = area(photo14);
Area15 = area(photo15);
Area16 = area(photo16);
Area17 = area(photo17);
Area18 = area(photo18);
Area19 = area(photo19);
Area20 = area(photo20);
Area21 = area(photo21);
Area22 = area(photo22);
Area23 = area(photo23);
Area24 = area(photo24);
Area25 = area(photo25);
Area26 = area(photo26);
Area27 = area(photo27);
Area28 = area(photo28);
Area29 = area(photo29);


Perimeter1 = perimeter(contour1);
Perimeter2 = perimeter(contour2);
Perimeter3 = perimeter(contour3);
Perimeter4 = perimeter(contour4);
Perimeter5 = perimeter(contour5);
Perimeter6 = perimeter(contour6);
Perimeter7 = perimeter(contour7);
Perimeter8 = perimeter(contour8);
Perimeter9 = perimeter(contour9);
Perimeter10 = perimeter(contour10);
Perimeter11 = perimeter(contour11);
Perimeter12 = perimeter(contour12);
Perimeter13 = perimeter(contour13);
Perimeter14 = perimeter(contour14);
Perimeter15 = perimeter(contour15);
Perimeter16 = perimeter(contour16);
Perimeter17 = perimeter(contour17);
Perimeter18 = perimeter(contour18);
Perimeter19 = perimeter(contour19);
Perimeter20 = perimeter(contour20);
Perimeter21 = perimeter(contour21);
Perimeter22 = perimeter(contour22);
Perimeter23 = perimeter(contour23);
Perimeter24 = perimeter(contour24);
Perimeter25 = perimeter(contour25);
Perimeter26 = perimeter(contour26);
Perimeter27 = perimeter(contour27);
Perimeter28 = perimeter(contour28);
Perimeter29 = perimeter(contour29);

k1 = [];
k1(1) = Perimeter1^2/(4*pi*Area1);
k1(2) = Perimeter2^2/(4*pi*Area2);
k1(3) = Perimeter3^2/(4*pi*Area3);
k1(4) = Perimeter4^2/(4*pi*Area4);
k1(5) = Perimeter5^2/(4*pi*Area5);
k1(6) = Perimeter6^2/(4*pi*Area6);
k1(7) = Perimeter7^2/(4*pi*Area7);
k1(8) = Perimeter8^2/(4*pi*Area8);
k1(9) = Perimeter9^2/(4*pi*Area9);
k1(10) = Perimeter10^2/(4*pi*Area10);
k1(11) = Perimeter11^2/(4*pi*Area11);
k1(12) = Perimeter12^2/(4*pi*Area12);
k1(13) = Perimeter13^2/(4*pi*Area13);
k1(14) = Perimeter14^2/(4*pi*Area14);
k1(15) = Perimeter15^2/(4*pi*Area15);
k1(16) = Perimeter16^2/(4*pi*Area16);
k1(17) = Perimeter17^2/(4*pi*Area17);
k1(18) = Perimeter18^2/(4*pi*Area18);
k1(19) = Perimeter19^2/(4*pi*Area19);
k1(20) = Perimeter20^2/(4*pi*Area20);
k1(21) = Perimeter21^2/(4*pi*Area21);
k1(22) = Perimeter22^2/(4*pi*Area22);
k1(23) = Perimeter23^2/(4*pi*Area23);
k1(24) = Perimeter24^2/(4*pi*Area24);
k1(25) = Perimeter25^2/(4*pi*Area25);
k1(26) = Perimeter26^2/(4*pi*Area26);
k1(27) = Perimeter27^2/(4*pi*Area27);
k1(28) = Perimeter28^2/(4*pi*Area28);
k1(29) = Perimeter29^2/(4*pi*Area29);


k2 = [];
k2(1) = Circularity(photo1);
k2(2) = Circularity(photo2);
k2(3) = Circularity(photo3);
k2(4) = Circularity(photo4);
k2(5) = Circularity(photo5);
k2(6) = Circularity(photo6);
k2(7) = Circularity(photo7);
k2(8) = Circularity(photo8);
k2(9) = Circularity(photo9);
k2(10) = Circularity(photo10);
k2(11) = Circularity(photo11);
k2(12) = Circularity(photo12);
k2(13) = Circularity(photo13);
k2(14) = Circularity(photo14);
k2(15) = Circularity(photo15);
k2(16) = Circularity(photo16);
k2(17) = Circularity(photo17);
k2(18) = Circularity(photo18);
k2(19) = Circularity(photo19);
k2(20) = Circularity(photo20);
k2(21) = Circularity(photo21);
k2(22) = Circularity(photo22);
k2(23) = Circularity(photo23);
k2(24) = Circularity(photo24);
k2(25) = Circularity(photo25);
k2(26) = Circularity(photo26);
k2(27) = Circularity(photo27);
k2(28) = Circularity(photo28);
k2(29) = Circularity(photo29);


k3(1) = aspectratio(contour1);
k3(2) = aspectratio(contour2);
k3(3) = aspectratio(contour3);
k3(4) = aspectratio(contour4);
k3(5) = aspectratio(contour5);
k3(6) = aspectratio(contour6);
k3(7) = aspectratio(contour7);
k3(8) = aspectratio(contour8);
k3(9) = aspectratio(contour9);
k3(10) = aspectratio(contour10);
k3(11) = aspectratio(contour11);
k3(12) = aspectratio(contour12);
k3(13) = aspectratio(contour13);
k3(14) = aspectratio(contour14);
k3(15) = aspectratio(contour15);
k3(16) = aspectratio(contour16);
k3(17) = aspectratio(contour17);
k3(18) = aspectratio(contour18);
k3(19) = aspectratio(contour19);
k3(20) = aspectratio(contour20);
k3(21) = aspectratio(contour21);
k3(22) = aspectratio(contour22);
k3(23) = aspectratio(contour23);
k3(24) = aspectratio(contour24);
k3(25) = aspectratio(contour25);
k3(26) = aspectratio(contour26);
k3(27) = aspectratio(contour27);
k3(28) = aspectratio(contour28);
k3(29) = aspectratio(contour29);



%% curl

   

%% Task5


% length = 1:29;
% 
% intervalk1 = 0:0.01:4;
% intervalk2 = 0:0.01:0.5;
% 
% 
% 
% 
% amount = 5;
% 
% 
% for i=1:amount
%     positionk1(i) = randsample(intervalk1, 1);
%     positionk2(i) = randsample(intervalk2, 1);
%     c(i,:) = [positionk1(i), positionk2(i)];
% end
% 
% 
% count = 0;
% for it=1:200
% 
%     k = [k1(:), k2(:)];
%     
%     for j = 1:amount
%         for i = 1:size(k,1)
%             distance(i,j) = sqrt((c(j,1)-k(i,1))^2+(c(j,2)-k(i,2))^2);
%         end
%     end
% 
%     M = min(distance,[], 2);
% 
% 
%     [a,b] = find(distance == min(distance,[], 2));
%     pos = [a(:), b(:)];
% 
% 
%     group = zeros(size(pos,2),size(pos,1));
% 
%     for j = 1:amount
%         for i = 1:size(k,1)
%             if(b(i)==j)
%                 group(j,i) = a(i);
%             end
%         end
%     end
% 
%     transgroup = transpose(group);
% 
% 
%     G = cell(1, amount);
%     avg_k1k2 = [];
%  
%     for i = 1:amount
%         temp = [];
%         for j = 1:size(transgroup, 1)
%             if(transgroup(j,i) ~= 0)
%                 
%                 temp(j,1:2) = k(transgroup(j,i),1:2);
% 
%             end
%         end
%         
%         %Deleting zeros
%         clean = ~all(temp, 2);
%         temp(clean,:) = [];
%         
%         c(i,1:2) = mean(temp);
%         
%         
%         G(i) = {temp};
%     end
%     count = count + 1;
% end  
% 
% hold on
% for i = 1:amount
%     if ~isempty(G{i})
%         scatter(G{i}(:,1), G{i}(:,2), '*');
%         set(gcf,'color','w');
%     end
% end
% xlabel('k1 - compactness')
% ylabel('k2 - circularity')
% hold off
%% Task 6

length = 1:29;

intervalk1 = 0:0.01:4;
intervalk2 = 0:0.01:0.5;
intervalk3 = 0:0.01:1.5;




amount = 5;


for i=1:amount
    positionk1(i) = randsample(intervalk1, 1);
    positionk2(i) = randsample(intervalk2, 1);
    positionk3(i) = randsample(intervalk3, 1);
    c(i,:) = [positionk1(i), positionk2(i), positionk3(i)];
end


count = 0;
for it=1:200

    k = [k1(:), k2(:), k3(:)];
    
    for j = 1:amount
        for i = 1:size(k,1)
            distance(i,j) = sqrt((c(j,1)-k(i,1))^2+(c(j,2)-k(i,2))^2+(c(j,3)-k(i,3))^2);
        end
    end

    M = min(distance,[], 2);


    [a,b] = find(distance == min(distance,[], 2));
    pos = [a(:), b(:)];


    group = zeros(size(pos,2),size(pos,1));

    for j = 1:amount
        for i = 1:size(k,1)
            if(b(i)==j)
                group(j,i) = a(i);
            end
        end
    end

    transgroup = transpose(group);


    G = cell(1, amount);
    avg_k1k2 = [];
 
    for i = 1:amount
        temp = [];
        for j = 1:size(transgroup, 1)
            if(transgroup(j,i) ~= 0)
                
                temp(j,1:3) = k(transgroup(j,i),1:3);

            end
        end
        
        %Deleting zeros
        clean = ~all(temp, 2);
        temp(clean,:) = [];
        
        c(i,1:3) = mean(temp);
       
        
        G(i) = {temp};
    end
    count = count + 1;
    d=c;
end  

view(3);
hold on
grid on
for i = 1:amount
    if ~isempty(G{i})
        scatter3(G{i}(:,1), G{i}(:,2), G{i}(:,3), '*');
        set(gcf,'color','w');
    end
end
hold off
xlabel('k1 - compactness');
ylabel('k2 - circularity');
zlabel('k3 - aspect ratio');

    
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
