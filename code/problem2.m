% %Normal
% for t=1:3
%     y=[];
%     for n=1:10*10^t
%         x=normrnd(2,sqrt(2),[1,n]);
%         y(n)=mean(x)/2;
%     end
%    [muHat(t),sigmaHat(t)] = normfit(y);
%    Y=pdf('norm',y,muHat(t),sigmaHat(t));
%    figure(t)
%    histogram(y,'Normalization','pdf');
%    hold on;
%    plot(y,Y,'.')
%    title(['X is normal distribution and n=',num2str(n)])
% end

% %Uniform
% for t=1:3
%     y=[];
%     for n=1:10*10^t
%         x=unifrnd(2,4,[1,n]);
%         y(n)=mean(x)/2;
%     end
%    [muHat(t),sigmaHat(t)] = normfit(y);
%    Y=pdf('norm',y,muHat(t),sigmaHat(t));
%    figure(t)
%    histogram(y,'Normalization','pdf');
%    hold on;
%    plot(y,Y,'.')
%    title(['X is uniform distribution and n=',num2str(n)])
% end


%Exponential
for t=1:3
    y=[];
    for n=1:10*10^t
        x=exprnd(1/2,[1,n]);
        y(n)=mean(x)/2;
    end
   [muHat(t),sigmaHat(t)] = normfit(y);
   Y=pdf('norm',y,muHat(t),sigmaHat(t));
   figure(t)
   histogram(y,'Normalization','pdf');
   hold on;
   plot(y,Y,'.')
   title(['X is uniform distribution and n=',num2str(n)])
end