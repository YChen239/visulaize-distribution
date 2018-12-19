function convergence(distri,m,e,n)
switch distri
    case 'Normal'
    for m=1:m
        s=0;
        x=normrnd(2,sqrt(2),[1,10000]);
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
        end
        plot(y)
        hold on   
    end
    plot([0,10000],[e,e],'g');
    plot([0,10000],[-e,-e],'g');
    plot([0,10000],[0,0],'b');
    plot([n,n],[-0.5,2.5],'r');
    plot([n,10000],[2.5,2.5],'r');
    plot([n,10000],[-0.5,-0.5],'r');
    xlabel('n')
    ylabel('Y_n-0')
    title('visual Convergence')
    hold off
    case 'Uniform'
    for m=1:m
        s=0;
        x=unifrnd(2,4,[1,10000]);
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
        end
        plot(y)
        hold on
    end
    plot([0,10000],[e,e],'g');
    plot([0,10000],[-e,-e],'g');
    plot([0,10000],[0,0],'b');
    plot([n,n],[-0.5,2],'r');
    plot([n,10000],[2,2],'r');
    plot([n,10000],[-0.5,-0.5],'r'); 
    xlabel('n')
    ylabel('Y_n-0')
    title('visual Convergence')
    hold off
    case 'Exponential'
    for m=1:m
        x=exprnd(1/2,[1,10000]);
        s=0;
        for t=1:10000
            s=s+x(t);
            y(t)=s/(2*t);
        end
        plot(y)
        hold on   
    end
    plot([0,10000],[e,e],'g');
    plot([0,10000],[-e,-e],'g');
    plot([0,10000],[0,0],'b');
    plot([n,n],[-0.5,0.5],'r');
    plot([n,10000],[0.5,0.5],'r');
    plot([n,10000],[-0.5,-0.5],'r');
    xlabel('n')
    ylabel('Y_n-0')
    title('visual Convergence')
    hold off
end
end