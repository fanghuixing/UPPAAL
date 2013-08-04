x=[0:0.01:30];
subplot(1,2,1); 
y=0.5*exp( -x/10 );
y1=0.4*exp( -x/10 );
y2=0.25*exp( -x/10 );
y3=0.1*exp( -x/10 );
y4=0.05*exp( -x/10 );
plot(x,y,'k','LineWidth',2);hold on;
plot(x,y1,'g','LineWidth',2);hold on;
plot(x,y2,'b','LineWidth',2);hold on;
plot(x,y3,'r','LineWidth',2);hold on;
plot(x,y4,'y','LineWidth',2);
grid on;
xlabel('Time(s)')
ylabel('Probability')
title('Prabobility Function Over Time (Train Doors)')
subplot(1,2,2); 
y=0.5*0.5*exp( -x/10 );
y1=0.5*0.4*exp( -x/10 );
y2=0.5*0.25*exp( -x/10 );
y3=0.5*0.1*exp( -x/10 );
y4=0.5*0.05*exp( -x/10 );
plot(x,y,'k','LineWidth',2);hold on;
plot(x,y1,'g','LineWidth',2);hold on;
plot(x,y2,'b','LineWidth',2);hold on;
plot(x,y3,'r','LineWidth',2);hold on;
plot(x,y4,'y','LineWidth',2);
grid on;
xlabel('Time(s)')
ylabel('Probability')
title('Prabobility Function Over Time (Screen Doors)')