function resampled_data = ResampleByFreq(data, fs_data, fs_desired)
    % Resamples data using linear interpolation
    arguments
        data double
        fs_data double
        fs_desired double
    end
    
    time_original_data = linspace(0,1/fs_data*(length(data)-1), length(data));
    time_new_data = 0:1/fs_desired:time_original_data(end);
    resampled_data = interp1(time_original_data, data, time_new_data);
    if size(resampled_data) ~= size(data)
        resampled_data = resampled_data';
    end
end