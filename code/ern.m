function ern(distri,m,r)
e=zeros(1,10000);
E=zeros(1,10000);
switch distri
    case 'Normal'
    for m=1:m
        s=0;
        x=normrnd(2,sqrt(2),[1,10000]);
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            E(t)=(abs(y(t)-0))^r;
            e(t)=e(t)+(abs(y(t)-0))^2;
        end
    end
    e=e/m;
    plot(E);
    hold on
    plot(e);
    xlabel('n')
    ylabel('e_{n,r} and e1_{n,r}')
    title(['Convergence in ',num2str(r),'-th mean'])
    legend('e_{n,r}','e1_{n,r}')
    hold off
    
    case 'Uniform'
    for m=1:m
        x=unifrnd(2,4,[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            E(t)=abs(y(t)-0)^r;
            e(t)=e(t)+abs(y(t)-0)^r;
        end
    end
    e=e/m;
    plot(E);
    hold on
    plot(e);
    xlabel('n')
    ylabel('e_{n,r} and e_{n,r}')
    title(['Convergence in ',num2str(r),'-th mean'])
    legend('e_{n,r}','e_{n,r}')
    hold off
    
    case 'Exponential'
    for m=1:m
        x=exprnd(1/2,[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            E(t)=(abs(y(t)-0))^r;
            e(t)=e(t)+(abs(y(t)-0))^2;
        end
    end
    e=e/m;
    plot(E);
    hold on
    plot(e);
    xlabel('n')
    ylabel('e_{n,r} and e1_{n,r}')
    title(['Convergence in ',num2str(r),'-th mean'])
    legend('e_{n,r}','e1_{n,r}')
    hold off
end
end