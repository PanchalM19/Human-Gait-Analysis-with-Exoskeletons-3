function Features = GetFeatures(window_size, D, signals)
    % Creates a feature matrix with mean, min, max from a window of data,
    % from whichever signal names are passed.
    arguments
        window_size double
        D table
        signals string
    end
%     Features=[];
%     % Your code here
%     for i=1:length(D.(signals))
%         for k=1:size(D.signals,2)
%             for j=1:length(signals(i,k))
%                 Features = [mean(D.(signals(i:(i+window_size),k))), min(D.(signals(i:(i+window_size),1))), max(D.(signals(i:(i+window_size),1)))]
% %                 ;
% %                 mean(D.(signals(i:(i+window_size),2))), min(D.(signals(i:(i+window_size),2))), max(D.(signals(i:(i+window_size),2)));
% %                 mean(D.(signals(i:(i+window_size),3))), min(D.(signals(i:(i+window_size),3))), max(D.(signals(i:(i+window_size),3)))];
% %             data = [D.(signals(i))(signals(j)-window_size:signals(j))(window_size(j)), 1) ...
% %                     D.(signals(i))((window_size(j)), 2) ...
% %                     D.(signals(i))((window_size(j)), 3)];
% %                 feature_matr Features; feature_matrix_current];
%             end
%         end
%     end
% end

    Features=[];
    dummy_1=[];
    dummy_2=[];
    dummy_3=[];
    dummy_4=[];

    for j=1:length(signals)
        for i = (window_size+1):length(D.(signals(j)))
            if j==1
                dummy_1(i,:)=[mean((D.(signals(j))((i-window_size):i,:))), max((D.(signals(j))((i-window_size):i,:))),min((D.(signals(j))((i-window_size):i,:))),D.(signals(j))(i-window_size,:)];
            elseif j==2
                dummy_2(i,:)=[mean((D.(signals(j))((i-window_size):i,:))), max((D.(signals(j))((i-window_size):i,:))),min((D.(signals(j))((i-window_size):i,:))),D.(signals(j))(i-window_size,:)];
            elseif j==3
                dummy_3(i,:)=[mean((D.(signals(j))((i-window_size):i,:))), max((D.(signals(j))((i-window_size):i,:))),min((D.(signals(j))((i-window_size):i,:))),D.(signals(j))(i-window_size,:)];
            else
                dummy_4(i,:)=[mean((D.(signals(j))((i-window_size):i,:))), max((D.(signals(j))((i-window_size):i,:))),min((D.(signals(j))((i-window_size):i,:))),D.(signals(j))(i-window_size,:)];
            end
            
        end
        
    end
    Features=[dummy_1,dummy_2,dummy_3,dummy_4];


end