% f = @(x)(1/sqrt(2*pi)*theta).*exp(-(x-mu)^2/(2*(theta^2)));
% g = @(x)exp(-x);
% grnd = @()normrnd(2,sqrt(2),1);
% rng('default') % For reproducibility
% X = accrejrnd(f,g,grnd,0,1000,1);
% Y = raylrnd(1,1e4,1);
% [f, xc] = ecdf(X);
% ecdfhist(f, xc);
% hold on
% histogram(Y)
% legend('A-R RNG','Rayleigh RNG')


% %Normal distribution
% mu=2;
% theta=sqrt(2);
% for n=1:3
% x=10*10^n;
% y=normrnd(mu,theta,[1,x]);
% f = @(x)(1/sqrt(2*pi)*theta).*exp(-(x-mu)^2/(2*(theta^2)));
% g = @(x)1/12;
% grnd = @()unifrnd(-4,8,1);
% rng('default') % For reproducibility
% X = accrejrnd(f,g,grnd,5,x,1);
% [muHat(n),sigmaHat(n),muCI(n,1:2),sigmaCI(n,1:2)] = normfit(y);
% [muHat1(n),sigmaHat1(n),muCI1(n,1:2),sigmaCI1(n,1:2)] = normfit(X);
% subplot(1,3,n);
% histogram(y,'Normalization','pdf');
% hold on
% histogram(X,'Normalization','pdf')
% legend('Matlab routine','Rejection method')
% xlabel('Number of Distribution (x)')
% ylabel('Probability Density Function (f(x)')
% title(['The histogram when n=',num2str(x)])
% hold off
% end



%uniform distribution
for n=1:3
x=10*10^n;
y=unifrnd(2,4,[1,x]);
f = @(x)uni(x);
g = @(x)0.5;
grnd = @()unifrnd(2,4,1);
rng('default') % For reproducibility
X = accrejrnd(f,g,grnd,2,x,1);
[ahat(n),bhat(n),aci(n,1:2),bci(n,1:2)] = unifit(y);
[ahat1(n),bhat1(n),aci1(n,1:2),bci1(n,1:2)] = unifit(X);
subplot(1,3,n);
histogram(y,'Normalization','pdf');
hold on
histogram(X,'Normalization','pdf')
legend('Matlab routine','Rejection method') 
axis([1 5 0 1]);
xlabel('Number of Distribution (x)')
ylabel('Probability Density Function (f(x)')
title(['The histogram when n=',num2str(x)])
hold off
end
% 




% %exponential distribution
% for n=1:3
% x=10*10^n;
% y=exprnd(1/2,[1,x]);
% f = @(x)2.*exp(-2*x);
% g = @(x)1/10;
% grnd = @()unifrnd(0,10,1);
% rng('default') % For reproducibility
% X = accrejrnd(f,g,grnd,20,x,1);
% [muhat(n),muci(n,1:2)] = expfit(y);
% [muhat1(n),muci1(n,1:2)] = expfit(X);
% subplot(1,3,n);
% histogram(y,'Normalization','pdf');
% hold on
% histogram(X,'Normalization','pdf');
% legend('Matlab routine','Rejection method') 
% xlabel('Number of Distribution (x)')
% ylabel('Probability Density Function (F(x))')
% title(['The histogram when n=',num2str(x)])
% hold off
% end

