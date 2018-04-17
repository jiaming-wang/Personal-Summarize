%%%三维绘图
clear all; clc;
% clc;
% clear all;
% 
% set(0,'defaultfigurecolor','w')
% xa = 0:0.25:1.0;%tauHs
% ya = 0:0.25:1.0;%tauL
% % ya=1-ya;
% [x,y] = meshgrid(xa,ya);
% 
% z=[24.4701857	24.81733956	24.825713	24.8236774	24.82212636	
% 24.77179581	24.86052917	24.851357	24.86986359	24.86752486	
% 24.7677367	24.85493862	24.850769	24.86357556	24.8616632	
% 24.75374932	24.85154008	24.834542	24.86032987	24.85838312	
% 24.74260449	24.84942157	24.806223	24.85795511	24.85606583	]
% 
% mesh(x,y,z);
% xlabel('HR  ¦Ëh','rotation',15,'Fontsize',15);
% ylabel('LR  ¦Ël','rotation',-15,'Fontsize',15);
% zlabel('The PSNR dB','Fontsize',15);
% set(get(gca,'XLabel')) ;
% set(gca,'xtick',[0 0.25 0.5 0.75 1.0],'xticklabel',[0,0.25,0.5,0.75,1.0]) 
% set(gca,'ytick',[0 0.25 0.5 0.75 1.0],'yticklabel',[0,0.25,0.5,0.75,1.0]) 
% % set(gca,'ytick',[0 0.25 0.5 0.75 1.0],'yticklabel',[1.0,0.75,0.5,0.25,0.0])  
% set(get(gca,'YLabel')) ;
% set(get(gca,'ZLabel')) ;
% % title('The Recognition rate values versus different ¦Ë','Fontsize',15);
% set(get(gca,'title')) ;



%%%VIF
% u=[0 1 0.2999
% ;
%     0.25 0.75 0.4138
% ;
%     0.5 0.5 0.4284
% ;
%     0.75 0.25 0.4407
% ;
% 
%     1 0 0.467
% ;
% ];
% x=u(:,1);
% y=u(:,2);
% z=u(:,3);
% 
% plot3(x,y,z,'bo',x,y,z);grid on;
% xlabel('¦Ëpixel','rotation',15,'Fontsize',15);
% ylabel('¦Ëfeature','rotation',-15,'Fontsize',15);
% zlabel('VIF','Fontsize',15);
% set(gca,'xtick',[0 0.25 0.5 0.75 1.0],'xticklabel',[0,0.25,0.5,0.75,1.0]) 
% set(gca,'ytick',[0 0.25 0.5 0.75 1.0],'yticklabel',[0,0.25,0.5,0.75,1.0])  

%%%mnmi
u=[0 1 0.3648
;
    0.25 0.75 0.3973
;
    0.5 0.5 0.4013
;
    0.75 0.25 0.4036
;
    1 0 0.4219
;
];
x=u(:,1);
y=u(:,2);
z=u(:,3);

plot3(x,y,z,'bo',x,y,z);grid on;
xlabel('¦Ëpixel','rotation',15,'Fontsize',15);
ylabel('¦Ëfeature','rotation',-15,'Fontsize',15);
zlabel('MNMI','Fontsize',15);
set(gca,'xtick',[0 0.25 0.5 0.75 1.0],'xticklabel',[0,0.25,0.5,0.75,1.0]) 
set(gca,'ytick',[0 0.25 0.5 0.75 1.0],'yticklabel',[0,0.25,0.5,0.75,1.0])  


%%%FSIM
% u=[0 1 0.7613;
%     0.25 0.75 0.8912;
%     0.5 0.5 0.8985
% ;
%     0.75 0.25 0.9015
% ;
%     1 0 0.9097
% ;
% ];
% x=u(:,1);
% y=u(:,2);
% z=u(:,3);
% 
% plot3(x,y,z,'bo',x,y,z);grid on;
% xlabel('¦Ëpixel','rotation',15,'Fontsize',15);
% ylabel('¦Ëfeature','rotation',-15,'Fontsize',15);
% zlabel('FSIM','Fontsize',15);
% set(gca,'xtick',[0 0.25 0.5 0.75 1.0],'xticklabel',[0,0.25,0.5,0.75,1.0]) 
% set(gca,'ytick',[0 0.25 0.5 0.75 1.0],'yticklabel',[0,0.25,0.5,0.75,1.0])  
