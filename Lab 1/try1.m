x = input("Enter number: ");
num =x;
ans = [];
i =1;
while num>0
    ans(i) = mod(num,2);
    i = i+1;
    num = floor(num/2);
end
flip(ans,2);
display(ans)