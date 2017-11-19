% LTNghia
% This is the function using RSA to calculate encryption if p,q,M and d is
% given

function RSAEncryptionWithd(M,p,q,d)
N = p*q;
n = (p-1)*(q-1);
for i = 0:n
    if mod(d*i,n) == 1 % calculate the value of e so that e*d = 1 mod n
        e = i;
        break;
    end
end
fprintf('--> Public key: (N,e) = (%d,%d)\n',N,e);
fprintf('--> Private key: d = %d\n',d);

% The exceeds of maximum integer that is guaranteed to be
% represented exactly as double (which is 2^53) can cause the incorrect result of
% Matlab mod() function -> Apply square-and-multiply algorithm to
% calculate modulo
fprintf('--> Encrypted ciphertext C of plaintext M = %d : C = %d\n',M,ModuloWithSaM(M,e,N));
