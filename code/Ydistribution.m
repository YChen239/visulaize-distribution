function [p1,p2]=Ydistribution(T,distri)
switch distri
    case 'Normal'
        for n=1:T
            x=normrnd(2,sqrt(2),[1,T]);
            y(n)=mean(x)/2;
        end
        [mu,sigma] = normfit(y);
        Y=pdf('norm',y,mu,sigma);
        histogram(y,'Normalization','pdf')
        hold on;
        plot(y,Y,'.')
        xlabel('y')
        ylabel('fy(y)')
        title('Probability Density of y');
        hold off;
        p1=['mean:',num2str(mu)];
        p2=['derivation:',num2str(sigma)];
    case 'Uniform'
        for n=1:T
            x=unifrnd(2,4,[1,T]);
            y(n)=mean(x)/2;
        end
        [mu,sigma] = normfit(y);
        Y=pdf('norm',y,mu,sigma);
        histogram(y,'Normalization','pdf')
        hold on;
        plot(y,Y,'.')
        xlabel('y')
        ylabel('fy(y)')
        title('Probability Density of y');
        hold off;
        p1=['mean:',num2str(mu)];
        p2=['derivation:',num2str(sigma)];
    case 'Exponential'
        for n=1:T
            x=exprnd(1/2,[1,n]);
            y(n)=mean(x)/2;
        end
        [mu,sigma] = normfit(y);
        Y=pdf('norm',y,mu,sigma);
        histogram(y,'Normalization','pdf')
        hold on;
        plot(y,Y,'.')
        xlabel('y')
        ylabel('fy(y)')
        title('Probability Density of y');
        hold off;
        p1=['mean:',num2str(mu)];
        p2=['derivation:',num2str(sigma)];
end