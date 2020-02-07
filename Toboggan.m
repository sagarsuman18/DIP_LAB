% MatLab Code for Toboggan Image Enhancemen
% Created By : Sagar Suman, ECE , IIIT, Nagpur.
Gradient=[[12,14,23,13],
[16,11,21,18],
[21,24,23,12],
[12,21,20,10]];


image=[[4,4,3,2],
[3,7,6,1],
[2,7,6,2],
[0,1,0,2]];            
T=[[0,0,0,0],
[0,0,0,0],
[0,0,0,0],
[0,0,0,0]];            


display(Gradient);
display(image);
display(T);

for i=1:1:4
    for j=1:1:4
        least=Gradient(i,j);  
        x=i;
        y=j;
        if(i+1<=4&&Gradient(i+1,j)<least)
            least=Gradient(i+1,j);
            x=i+1;
            y=j;
        end
        if(i-1>=1&&Gradient(i-1,j)<least)
            least=Gradient(i-1,j);
            x=i-1;
            y=j;
        end
        if(j-1>=1&&Gradient(i,j-1)<least)
        least=Gradient(i,j-1);
        y=j-1;
        x=i;
        end
        if(j+1<=4&&Gradient(i,j+1)<least)
        least=Gradient(i,j+1);
        y=j+1;
        x=i;
        end 
        if(j+1<=4&&i+1<=4&&Gradient(i+1,j+1)<least)
        least=Gradient(i+1,j+1);
        y=j+1;
        x=i+1;
        end
        if(j-1>=1&&i+1<=4 && Gradient(i+1,j-1)<least)
        least=Gradient(i+1,j-1);
        y=j-1;
        x=i+1;
        end
        if(j+1<=4&&i-1>=1 && Gradient(i-1,j+1)<least)
        least=Gradient(i-1,j+1);
        y=j+1;
        x=i-1;
        end 
T(i,j)=image(x,y);
        end
end
display(T);