close all;
clear all;
clc;
X = [100:50:450];
 
for m = 1:length(X)
    a = 1 : X(m);
    index1 = 1;
    index2 = length(a);
    b = zeros(1,length(a));
    while (index2 >= 1)
        b(index1) = a(index2);
        index1 = index1 + 1;
        index2 = index2 - 1;
    end
 
    t1 = tic;  
    AfterBubbleSort = bubblesort(a);
    YWorstBubble(m) = toc(t1);
    t1 = tic;  
    AfterQuickSort = quicksort(a, 1, X(m));
    YWorstQuick(m) = toc(t1);
    t1 = tic;  
    AfterHeapSort = heapsort(a);
    YWorstHeap(m) = toc(t1);
end
 
figure('Name','Simulation for Reverse Data','NumberTitle','off');
plot(X, YWorstBubble,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
plot(X, YWorstQuick,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
hold on;            
plot(X, YWorstHeap,'-+c','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','m',...
                'MarkerSize',10)   
            
title('Reverse Data Analysis');
grid on;
set(legend('Bubble sort','Quick sort','Heap sort',2),'Interpreter','none');
xlabel('No of Input');
ylabel('Execution Time(sec.)');
