% LTNghia

clc;

disp('------> This is a script to calculate x^e mod n using square-and-multiply algorithm <------')
x = input('\nEnter the value of x: ');
e = input('Enter the value of e: ');
n = input('Enter the value of n: ');
fprintf('\nThe result is: %d^%d mod %d = %d\n',x,e,n,ModuloWithSaM(x,e,n))
