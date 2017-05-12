close all;
clear all;
clc;
X = [100:50:450];
 
for m = 1:length(X)
    a = 1 : X(m);
    t1 = tic;  
    AfterBubbleSort = bubblesort(a);
    YBestBubble(m) = toc(t1);
    t1 = tic;  
    AfterQuickSort = quicksort(a, 1, X(m));
    YBestQuick(m) = toc(t1);
    t1 = tic;  
    AfterHeapSort = heapsort(a);
    YBestHeap(m) = toc(t1);
end
 
 
figure('Name','Simulation for Sorted Data','NumberTitle','off');
plot(X, YBestBubble,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
plot(X, YBestQuick,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
hold on;            
plot(X, YBestHeap,'-+c','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','m',...
                'MarkerSize',10)   
            
title('Sorted Data Analysis');
grid on;
set(legend('Bubble sort','Quick sort','Heap sort',2),'Interpreter','none');
xlabel('No of Input');
ylabel('Execution Time(sec.)');
