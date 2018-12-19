function [p1,p2]=Xdistribution(T,distri)
switch distri
    case 'Normal'
        x=normrnd(2,sqrt(2),[1,T]);
        histogram(x,'Normalization','pdf');
        [mu,sigma] = normfit(x);
        p1=['mean:',num2str(mu)];
        p2=['derivation:',num2str(sigma)];
        xlabel('x')
        ylabel('fx(x)')
        title('Probability Density of X')
    case 'Uniform'
        x=unifrnd(2,4,[1,T]);
        histogram(x,'Normalization','pdf');
        [a,b] = unifit(x);
        p1=['a:',num2str(a)];
        p2=['b:',num2str(b)];
        xlabel('x')
        ylabel('fx(x)')
        title('Probability Density of X')
    case 'Exponential'
        x=exprnd(1/2,[1,T]);
        histogram(x,'Normalization','pdf');
        [mu] = expfit(x);
        p1=['mu:',num2str(1/mu)];
        p2='NAN';
        xlabel('x')
        ylabel('fx(x)')
        title('Probability Density of X')
end
end