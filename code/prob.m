function prob(distri,m,e)
p=zeros(1,10000);
a=zeros(1,10000);
switch distri
    case 'Normal'
    for m=1:m
        x=normrnd(2,sqrt(2),[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            if abs(y(t)-0)>e
                p(t)=p(t)+1;
            end
        end
        for i=1:10000
            c=0;
            for j=i:10000
                if abs(y(j)-0)>e
                    c=1;
                end
            end
            a(i)=a(i)+c;
        end
    end
    p=p/m;
    a=a/m;
    plot(p);
    hold on
    plot(a);
    axis([0 10000 0 1])
    xlabel('n')
    ylabel('p_n and a_n')
    title(['Criterion value for convergence in probability (\epsilon=',num2str(e),')'])
    legend('p_n','a_n')
    hold off
    case 'Uniform'
    for m=1:m
        x=unifrnd(2,4,[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            if abs(y(t)-0)>e
                p(t)=p(t)+1;
            end
        end
        for i=1:10000
            c=0;
            for j=i:10000
                if abs(y(j)-0)>e
                    c=1;
                end
            end
            a(i)=a(i)+c;
        end
    end
    p=p/m;
    a=a/m;
    plot(p);
    hold on
    plot(a);
    axis([0 10000 0 1])
    xlabel('n')
    ylabel('p_n and a_n')
    title(['Criterion value for convergence in probability (\epsilon=',num2str(e),')'])
    legend('p_n','a_n')
    hold off
    
    
    case 'Exponential'
    for m=1:m
        x=exprnd(1/2,[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
            if abs(y(t)-0)>e
                p(t)=p(t)+1;
            end
        end
        for i=1:10000
            c=0;
            for j=i:10000
                if abs(y(j)-0)>e
                    c=1;
                end
            end
            a(i)=a(i)+c;
        end
    end
    p=p/m;
    a=a/m;
    plot(p);
    hold on
    plot(a);
    axis([0 10000 0 1])
    xlabel('n')
    ylabel('p_n and a_n')
    title(['Criterion value for convergence in probability (\epsilon=',num2str(e),')'])
    legend('p_n','a_n')
    hold off
end
end