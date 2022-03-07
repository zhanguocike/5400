Data=readtable('Data1.txt');
A=Data(:,5);
B=Data(:,8);
G=Data(:,2);
AvF=table2array(A);
BF=table2array(B);
Gene=table2array(G);
figure(1);
plot(Gene,AvF);
title('Average Fitness plot');
xlabel('Generation');
ylabel('Average Fitness');
set(gca,'FontSize',13);
saveas(1,'1.svg');
figure(2);
plot(Gene,BF);
title('Best Fitness plot');
xlabel('Generation');
ylabel('Best Fitness');
set(gca,'FontSize',13);
saveas(2,'2.svg')
figure(3)
plot(Gene,AvF);
title('Average Fitness plot');
xlabel('Generation');
ylabel('Average Fitness');
set(gca,'FontSize',13);
saveas(3,'3.svg');
xlim([0,500])
figure(4);
plot(Gene,BF);
title('Best Fitness plot');
xlabel('Generation');
ylabel('Best Fitness');
set(gca,'FontSize',13);
saveas(4,'4.svg')
xlim([0,500])










