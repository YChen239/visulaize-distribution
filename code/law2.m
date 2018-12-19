function law2(distri,m)
switch distri
    case 'Normal'
        mu=2;
        theta=sqrt(2);
        Fn=zeros(9,10000);
        F=zeros(9,10000);
        for T=-2:6
            for m=1:m
                s=0;
                x=normrnd(2,sqrt(2),[1,10000]);
                for t=1:10000
                    s=s+x(t);
                    y(t)=s/(2*t);  
                    if y(t)<=T
                    Fn(T+3,t)=Fn(T+3)+1;
                    end
                    if x(t)<=T
                    F(T+3,t)=F(T+3)+1;
                    end
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        Ln=abs(Fn-F);
        mesh(Ln);
        ylabel('t')
        xlabel('n')
        zlabel('F(t)-F_n(t)')
        x1=[-2,3,8];
        set(gca,'YTickLabel',x1);
        title('Convergence in Law')
        
        
        case 'Uniform'
        Fn=zeros(9,10000);
        F=zeros(9,10000);
        for T=-2:6
            for m=1:m
                s=0;
                x=unifrnd(2,4,[1,10000]);
                for t=1:10000
                    s=s+x(t);
                    y(t)=s/(2*t);  
                    if y(t)<=T
                    Fn(T+3,t)=Fn(T+3)+1;
                    end
                    if x(t)<=T
                    F(T+3,t)=F(T+3)+1;
                    end
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        Ln=abs(Fn-F);
        mesh(Ln);
        ylabel('t')
        xlabel('n')
        zlabel('F(t)-F_n(t)')
        axis([xlim 1 9 zlim])
        x1=[-2,-1,0,1,2,3,4,5,6];
        set(gca,'YTickLabel',x1);
        title('Convergence in Law')
        
        case 'Exponential'
        Fn=zeros(9,10000);
        F=zeros(9,10000);
        for T=-2:6
            for m=1:m
                s=0;
                x=exprnd(1/2,[1,10000]);
                for t=1:10000
                    s=s+x(t);
                    y(t)=s/(2*t);  
                    if y(t)<=T
                    Fn(T+3,t)=Fn(T+3)+1;
                    end
                    if x(t)<=T
                    F(T+3,t)=F(T+3)+1;
                    end
                end
            end
        end
        Fn=Fn/m;
        F=F/m;
        Ln=abs(Fn-F);
        mesh(Ln);
        ylabel('t')
        xlabel('n')
        zlabel('F(t)-F_n(t)')
        axis([xlim 1 9 zlim])
        x1=[-2,-1,0,1,2,3,4,5,6];
        set(gca,'YTickLabel',x1);
        title('Convergence in Law')
end