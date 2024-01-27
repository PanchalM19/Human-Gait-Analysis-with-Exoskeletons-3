function gait_phase = GetGaitPhase(time, heel_strike_indices)
    % Uses the time vector and heel strike indices to calculate gait phase.
    arguments
        time (:,1) double
        heel_strike_indices (1,:) double
    end

    stride_idx = 0;
    gait_phase = NaN(size(time));
% 
%     % Get a list of Stride Durations
%     stride_durations = [];
%     for i = 1:length(heel_strike_indices)-1
%         stride_durations(end+1) = time(heel_strike_indices(i+1)) - time(heel_strike_indices(i));
% %         stride_time = time(stride_durations) - time(stride_start);
% 
%         % Compute gait phase as a percentage of stride duration
%         gait_phase(stride_start:stride_end) = 100*(stride_time/stride_duration);
%     end
% 
%     % Set gait phase to 0 at the first heel strike
%     gait_phase(heel_strike_indices(1)) = 0;
% 
%     end
%     
%     
%     
% 
%     % Your code here   
%             stride_idx=stride_idx+1

    % Set gait phase to 0 at heel strike and approach 100 at next heel strike
    for i = 1:length(heel_strike_indices)-1
        stride_start = heel_strike_indices(i);
        stride_end = heel_strike_indices(i+1);

        % Compute elapsed time within stride
        stride_duration = time(stride_end) - time(stride_start);
        elapsed_time = time(stride_start:stride_end) - time(stride_start);

        % Compute gait phase as a percentage of stride duration
        gait_phase(stride_start:stride_end) = 100*(elapsed_time/stride_duration);
    end

    % Set gait phase to 0 at the first heel strike
    gait_phase(heel_strike_indices(1)) = 0;

end