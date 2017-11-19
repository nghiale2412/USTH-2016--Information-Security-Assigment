% LTNghia
% This is the function using RSA to calculate decryption if p,q,C and e is
% given

function RSADecryptionWithe(C,p,q,e)
N = p*q;
n = (p-1)*(q-1);
for i = 0:n
    if mod(e*i,n) == 1 % calculate the value of d so that e*d = 1 mod n
        d = i;
        break;
    end
end
fprintf('--> Public key: (N,e) = (%d,%d)\n',N,e);
fprintf('--> Private key: d = %d\n',d);

% The exceeds of maximum integer that is guaranteed to be
% represented exactly as double (which is 2^53) can cause the incorrect result of
% Matlab mod() function -> Apply square-and-multiply algorithm to
% calculate modulo
fprintf('--> Decrypted plaintext M of ciphertext C = %d : M = %d\n',C,ModuloWithSaM(C,d,N));
