# Human-Gait-Analysis-with-Exoskeletons-3

## 3. Phase-Based Exoskeleton Control

### Overview
This project focuses on implementing a phase-based controller for an ankle exoskeleton, leveraging motion capture data for precise biomechanical analysis and control optimization.

### 1. Heel Strike Detection and Gait Phase Identification:
* Developed an IMU-based heel strike detector, employing a low-pass filter to enhance accuracy.
* Identified gait phases using regression and feature extraction techniques, achieving real-time deployment capabilities.

<img width="452" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-3/assets/115374409/87706483-e5cc-4943-8839-3d76ad7e819a">
<img width="592" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-3/assets/115374409/5f73ddb0-367c-455e-b1c7-adb21f168795">
<img width="434" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-3/assets/115374409/f77641c3-2b0f-45e4-a9f9-f4fe214a4a2b">



### 2. Phase-Based Exoskeleton Control:
* Addressed the discontinuity issue at heel strike by describing phase as a rotation, significantly improving phase prediction.
* Evaluated exoskeleton torque against the target, achieving a low RMSE of 2.177.
<img width="437" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-3/assets/115374409/53934f82-4358-4b90-b62c-5c908e65788f">



### 3. Alternative Control: EMG Integration:
* Explored EMG-based control, applying proportional myoelectric control for exoskeleton torque modulation.
* Compared phase-based and EMG controls, highlighting pros and cons for user acceptance and system readiness.

### 4. User-Friendly Considerations:

* Phase-based control demonstrated easier tuning based on individual requirements, while EMG control showed challenges in mapping to torque accurately.
* Considered factors influencing user preference, highlighting potential ease of use for phase-based control in a home setting.


In conclusion, the project provides insights into both phase-based and EMG control methods, offering a foundation for optimizing exoskeleton control strategies based on user needs and system readiness.


## Please refer the below repositories for related projects:
* Human-Gait-Analysis-with-Exoskeletons-1- : For "Measurement and Analysis of Gait"
* Human-Gait-Analysis-with-Exoskeletons-2- : For "Prosthesis Mid-level Control"
