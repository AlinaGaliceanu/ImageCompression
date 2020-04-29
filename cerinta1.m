function A_k = cerinta1 (image, k)

	A = imread(image);
	[m, n]  = size(A);
	[U,S,V] = svd(A);
	U = U(1:m,1:k);
	S = S(1:k,1:k);
	V = V';
	V = V(1:k,1:n);
	A_k = U*S*V;

endfunction