function HS_idxs = DetectHeelStrikesIMU(gyro_x)
    % Uses a threshold on vertical force to calculate heel strike indices
    arguments
        gyro_x (:,1) double
    end

    % Your Code here
%     gyro_x=D.R_Gyro(:,1)

% Low pass filter the data (it will help tremendously to plot the filtered data against the unfiltered data to make sure you are filtering it appropriately to get rid of inadvertent peaks due to noise!!).  
% Find when both of the following conditions are met: a) a data point is a peak (above both its neighbors), and b) is above some minimum threshold (I recommend using 200 deg/s).  
% Adds a short delay to better correspond with the heelstrikes detected by the force plates (the exact value is up to you).

    HS_idxs=[];
    threshold=200;
%     filtered_data = lowpass(gyro_x,150);
    [b,a] = butter(2,10/(1500/2),'low'); %2nd order, 10 Hz, zero-lag low-pass
    filtered_data = filtfilt(b,a, gyro_x);
    unfiltered_data = gyro_x;
    figure;
    hold on;
    plot(filtered_data);
    plot(unfiltered_data);
    legend('Filtered','Unfiltered')
    hold off;
    figure;
    plot(filtered_data);
    for i=2:length(gyro_x)
        if filtered_data(i-1)<threshold && filtered_data(i)>threshold
            HS_idxs(end+1)=i;
            pause(0.05)
        end
    end
end
