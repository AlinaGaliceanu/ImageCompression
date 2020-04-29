function [A_k S] = cerinta4(image, k)
	A = imread(image);
	A = double(A);
	[m, n]  = size(A);
	miu = zeros(m,1);
	for i = 1:m
		for j = 1:n
			miu(i,1) = miu(i,1) + A(i,j);
		endfor
			miu(i,1) = miu(i,1) / n;
			A(i,:) = A(i,:) .-miu(i,1);
	endfor
	Z = A * (A'./ (n - 1));
	[V S] = eig(Z);
	W = V (1:m,1:k);
	Y = W' * A;
	A_k = W*Y + miu;
endfunction

	