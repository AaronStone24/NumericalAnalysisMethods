clc

bin = input("Enter the binary: \n",'s');
len = strlength(bin);
dec = 0;

for i = 1:len
    dec = dec + str2double(bin(i))*(2^(len-i));
end

fprintf("The decimal equivalent is: %d\n", dec);