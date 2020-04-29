function cerinta2() 

	A = imread('in/images/image3.gif');
	[U S V] = svd(A);
	v = diag(S);
	k = linspace(1,20,size(v));
	subplot(2,2,1);
	plot(k,v);
	[m n] = size(A);
	c = min(m, n);
	suma = sum(diag(S(1:c,1:c)));
	info = zeros(c,1);
	for i = 1:c 
		for j = 1:i
			info(i,1) = info(i,1) + S(j,j);
		endfor
		info(i,1) / suma;
	endfor
	k1 = linspace(1,20,c);
	subplot(2,2,2);
	 plot(k1, info);

	% partea a 3 a
	% k2 = linspace(1,c,1);
	k2 = 1:c;
	eps = zeros(c,1);
	for i = 1:c
		A_k = cerinta1('in/images/image3.gif',i);
		eps(i,1)  =sum(sum((A - A_k).^2))/(m * n);
	endfor
	subplot(2,2,3);
	plot(k2,eps);
	k3 = 1:30;
	comp = zeros(30,1);
	for i = 1:30
		comp(i,1) = (m *i + n* i + i)/(m*n);
	endfor
	subplot(2,2,4);
	plot(k3, comp);
	


endfunction