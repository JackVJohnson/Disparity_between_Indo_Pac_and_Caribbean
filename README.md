# Disparity_between_Indo_Pac_and_Caribbean
Code and data for Ecology and Evolution paper assessing the relative influence of warming on coral reefs


The codes run consecutively through their respective numbers. 
1.	Combine_benthic_data.R
Combines the benthic data from the 2 survey locations of Honduras and Indonesia, then summarizes them into a suitable format for further data extraction and analyses. 
Input: Hoga_Benthic.csv and Honduras_Benthic.csv
Output: Summarised_benthic_data.csv

2.	Download_CRW_combine_SSTA.R
Downloads SSTA data from the coral reef watch database for the specific coordinates used in this study, and temporally associated with each survey.
Input: Summarized_benthic_data.csv
Output: Monitoring_with_CRW_SSTANOMALY.csv

3.	Stan_analysis.R
Runs beta distribution random effect Bayesian model through BRMs package (which uses STAN). 
Input: Monitoring_with_CRW_SSTANOMALY.csv
Output: coeffs_combined.csv, and Figure 2 of temperatures through time

4.	Ordination_analysis.R
Conducts ordination analysis (nMDS_
Input: Monitoring_with_CRW_SSTANOMALY.csv
Output: Figure 6 nMDS 

5.	RDA_analysis.R
Performs Redundancy analysis for each location
Input: Monitoring_with_CRW_SSTANOMALY.csv
Output: Figure 5 RDA plot

6.	Coefficient_plot
Creates the coefficient plot (Figure 4) displaying Bayesian analysis results
Input: Coefficients_combined.csv
Output: Figure 4

7.	Benthic_cover_through_time.R
Produces a summary of benthic components at each location through the last decade
Input: Monitoring_with_CRW_SSTANOMALY.csv
Output: figure 3 

