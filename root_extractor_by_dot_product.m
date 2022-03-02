
% Our equation is in the form A*x^2+B*x+C=0
 
A = input('A = ');
B = input('B = ');
C = input('C = ');
disp('')

x0 = 0;
step_size = 1E-5;    % sensitivity value
y0 = A*x0^2 + B*x0 + C;
for i=1:1000000
    x1 = x0 + step_size;
    y1 = A*x1^2 + B*x1 + C;
    if((y0*y1) < 0)
        % If the result of the product is negative, then the signs are different.  
        % i.e. there are roots in the range [x0,x1]
        root = (x0 + x1) /2
        break;
    endif
    x0 = x1;
    y0 = y1;
endfor

disp("------------")

% The same operations are repeated to find the other root
% This time we take the root for which we find the initial value

x0 = root;
y0 = A*x0^2 + B*x0 + C;
for i=1:1000000
    x1 = x0 + step_size;
    y1 = A*x0^2 + B*x0 + C;
    if((y0*y1) < 0)
        % If the result of the product is negative, then the signs are different. 
        % i.e. there are roots in the range [x0,x1]
        root = (x0 + x1) /2
        break;
    endif
    x0 = x1;
    y0 = y1;
endfor