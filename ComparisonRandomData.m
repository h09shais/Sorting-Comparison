close all;
clear all;
clc;
 
X = [100:50:450];
 
for m = 1:length(X)
    t1 = tic;  
    AfterBubbleSort = bubblesort(randperm(X(m)));
    YAverageBubble(m) = toc(t1);
    t1 = tic;  
    AfterQuickSort = quicksort(randperm(X(m)), 1, X(m));
    YAverageQuick(m) = toc(t1);
    t1 = tic;  
    AfterHeapSort = heapsort(randperm(X(m)));
    YAverageHeap(m) = toc(t1);
end
figure('Name','Simulation for Random Data','NumberTitle','off');
plot(X, YAverageBubble,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
plot(X, YAverageQuick,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
hold on;            
plot(X, YAverageHeap,'-+c','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','m',...
                'MarkerSize',10)   
title('Random data analysis');
grid on;
set(legend('Bubble sort','Quick sort','Heap sort',2),'Interpreter','none');
xlabel('No of Input');
ylabel('Execution Time(sec.)');
