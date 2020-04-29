function [A_k S] = cerinta3(image, k)
	A = imread(image);
	A = double(A);
	[m, n]  = size(A);
	miu = zeros(m,1);
	for i = 1:m
		for j = 1:n
			miu(i) = miu(i) + A(i,j);
		endfor
			miu(i) = miu(i) / n;
			A(i,1:n) = A(i,1:n) .-miu(i);
	endfor
	Z = A' ./ sqrt(n-1);
	[U, S ,V] = svd(Z);
	W = V(1:m, 1:k);
	Y = W' * A;
	A_k = W * Y .+miu;
endfunction