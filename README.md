# ECG-Filter-Design
In these Codes, my main task was to design efficient digital filters to eliminate all the noise sources associated with the ECG signal so as to get a noise free ECG signal as output from the filters.

ECG inevitably affected by various types of noise interference such as:

1. Baseline Wander noise
2. Power Line Interference (50/60 HZ)

A **4th order Elliptic** filter and a **4th order Chebyshev Type II** configurations are found to be better choice for the implementation of high pass and Notch filters respectively.

# How to Filter noisy ECG:
1. Add path your corresponding directory
2. Add following codes to this path:
      * **Chebyshev_II.m**
      * **Elliptic.m**
      * **Test.m**
  
3. Add your noisy ecg signal to this directory. Note that your signal must be in **.mat** format.
4. Open **Test.m** file
5. Enter the name of your signal in the **Load Signal** section. 
6. Use **Notch** function to filter 50 Hz powerline noise.
7. Use **HPF** function to filter baseline noise.
8. Run the code

Then you can see the result of filtering in the opened figures.

Any feedback to this filters design is warmly welcomed. 


