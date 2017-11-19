% LTNghia
% This is the function to calculate modulo using square-and-multiply
% algorithm

function y = ModuloWithSaM(x,e,n)

% Convert exponent from decimal to binary 
h = dec2bin(e);

t = 0;
% Read the binary from MSB (most significant bit)
% to LSB (less significant bit) (from left to right)
for j = 1:length(h)
    if (h(j) == '1') % skip all MSB = '0'
        t = length(h)-j+1; % t = new length start from MSB = '1'
        break;
    end
end

% Initialize r 
r = 1; % e = 0 -> x^0 = 1

for i = (t-1):-1:0 % scan exponent bits
   if (h(t-i) == '1') % if bit processed = '1'
        r = mod((r * r * x), n); % square and multiply
   else % if bit processed = '0'
        r = mod((r * r), n); % square
   end
end

% Return y
y = r;
end
