function law1(distri,m,n)
switch distri
    case 'Normal'
        mu=2;
        theta=sqrt(2);
        Fn=zeros(1,9);
        F=zeros(1,9);
        for T=-2:6
            for m=1:m
                s=0;
                x=normrnd(2,sqrt(2),[1,n]);
                for t=1:n
                    s=s+x(t);
                    y(t)=s/(2*t);  
                end
                if y(n)<=T
                    Fn(T+3)=Fn(T+3)+1;
                end
                if x(n)<=T
                    F(T+3)=F(T+3)+1;
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        plot(Fn);
        hold on
        plot(F);
        xlabel('t')
        ylabel('F(t) and F_n(t)')
        x1=[-2,-1,0,1,2,3,4,5,6];
        set(gca,'XTickLabel',x1);
        title(['Convergence in Law (n=',num2str(n),')'])
        legend('F_n(t)','F(t)')
        hold off
        
        
        case 'Uniform'
        Fn=zeros(1,9);
        F=zeros(1,9);
        for T=-2:6
            for m=1:m
                s=0;
                x=unifrnd(2,4,[1,n]);
                for t=1:n
                    s=s+x(t);
                    y(t)=s/(2*t);  
                end
                if y(n)<=T
                    Fn(T+3)=Fn(T+3)+1;
                end
                if x(n)<=T
                    F(T+3)=F(T+3)+1;
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        plot(Fn);
        hold on
        plot(F);
        xlabel('t')
        ylabel('F(t) and F_n(t)')
        x1=[-2,-1,0,1,2,3,4,5,6];
        set(gca,'XTickLabel',x1);
        title(['Convergence in Law (n=',num2str(n),')'])
        legend('F_n(t)','F(t)')
        hold off
    
        case 'Exponential'
        Fn=zeros(1,9);
        F=zeros(1,9);
        for T=-2:6
            for m=1:m
                s=0;
                x=exprnd(1/2,[1,n]);
                for t=1:n
                    s=s+x(t);
                    y(t)=s/(2*t);  
                end
                if y(n)<=T
                    Fn(T+3)=Fn(T+3)+1;
                end
                if x(n)<=T
                    F(T+3)=F(T+3)+1;
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        plot(Fn);
        hold on
        plot(F);
        xlabel('t')
        ylabel('F(t) and F_n(t)')
        x1=[-2,-1,0,1,2,3,4,5,6];
        set(gca,'XTickLabel',x1);
        title(['Convergence in Law (n=',num2str(n),')'])
        legend('F_n(t)','F(t)')
        hold off
end
end

    