decimalNum = input("Enter a decimal number:");
temp = decimalNum;
binaryNum = 0;
while temp>0
    binaryNum = binaryNum*10 + mod(temp,2);
    temp = floor(temp/2);
end
temp = binaryNum;
binaryNum = 0;
while temp~=0
    binaryNum = binaryNum*10 + mod(temp,10);
    temp = floor(temp/10);
end
sprintf("Binary Number: %d",binaryNum)
