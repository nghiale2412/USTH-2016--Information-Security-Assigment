% LTNghia

clc;

disp('------> This is the RSA script <------')
disp('Choose an option: ')
disp('1. Encrypt.')
disp('2. Decrypt.')
choice = input('Your choice is (e.g.,1,2,..): ');
if choice == 1
    disp('--> You are choosing Encrypt option.')
    disp('Choose an option: ')
    disp('1. e is given')
    disp('2. d is given')
    choice1 = input('Your choice is (e.g.,1,2,..): ');
    if choice1 == 1
        p = input('Enter the value of p: ');
        q = input('Enter the value of q: ');
        e = input('Enter the value of e: ');
        M = input('Enter the value of plaintext M: ');
        RSAEncryptionWithe(M,p,q,e);
    elseif choice1 == 2
        p = input('Enter the value of p: ');
        q = input('Enter the value of q: ');
        d = input('Enter the value of d: ');
        M = input('Enter the value of plaintext M: ');
        RSAEncryptionWithd(M,p,q,d);
    else 
        disp('--> Not a valid choice! Please re-run the script!')
    end
elseif choice == 2
    disp('--> You are choosing Decrypt option.')
    disp('Choose an option: ')
    disp('1. e is given')
    disp('2. d is given')
    choice2 = input('Your choice is (e.g.,1,2..): ');
    if choice2 == 1
        p = input('Enter the value of p: ');
        q = input('Enter the value of q: ');
        e = input('Enter the value of e: ');
        C = input('Enter the value of ciphertext C: ');
        RSADecryptionWithe(C,p,q,e);
    elseif choice2 == 2
        p = input('Enter the value of p: ');
        q = input('Enter the value of q: ');
        d = input('Enter the value of d: ');
        C = input('Enter the value of plaintext C: ');
        RSADecryptionWithd(C,p,q,d);
    else
        disp('--> Not a valid choice! Please re-run the script!')
    end
else 
    disp('--> Not a valid choice! Please re-run the script!')
end

    
