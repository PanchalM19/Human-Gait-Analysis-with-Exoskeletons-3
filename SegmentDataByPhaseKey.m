function [segmented_data] = SegmentDataByPhaseKey(heel_strike_indices, data_to_segment)
    % Segments data by heel strikes. 
    arguments
        heel_strike_indices double
        data_to_segment (:,:) double
    end
  
    gait_phase = 0:1:100;
    segmented_data = [];

    for hs_idx = 1:length(heel_strike_indices)-1
        snipit = data_to_segment(heel_strike_indices(hs_idx) : heel_strike_indices(hs_idx+1));
        snipit_phase = linspace(0, 100, length(snipit));
        segmented_data(:, end+1) = interp1(snipit_phase, snipit', gait_phase)';
    end
end