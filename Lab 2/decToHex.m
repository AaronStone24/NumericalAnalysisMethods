clc
clear

dec = input("Enter the decimal number: \n");
hex = "";
ref = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'];

remainder = 0;
i = 1;
while dec > 0
    remainder = rem(dec,16);
    dec = floor(dec/16);
    hex = append(hex,ref(remainder+1));
    i = i+1;
end

hex = reverse(hex);

fprintf("The hexadecimal equivalent is: %s\n", hex);