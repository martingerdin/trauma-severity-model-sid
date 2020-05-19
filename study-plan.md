---
title: Development and validation of a local trauma severity score for adult trauma
  patients in urban India
author:
- Siddarth David
- Martin Gerdin Wärnberg
output:
  word_document: default
  html_document:
    df_print: paged
subtitle: Study plan
documentclass: article
bibliography: bibliography.bib
csl: bmcemerg.csl
---

Background
==========

Trauma accounts for one-tenth of all deaths and disability-adjusted life-years (DALYs) [@Toroyan2013WHO;@Chandran2010global;@Haagsma2015global]. Nearly 90% of trauma-related deaths occur in low-and-middle-income countries (LMICs), and improving trauma care in these settings can save nearly 2 million lives each year [@Mock2012Estimate;@Gururaj2013Injury]. Patient-related variables affect trauma outcomes. Therefore, it is important to quantify the variables in a standardized process [@Roy2016Validation;@Shibahashi2019Epidemiological]. Standardized variables can be used to develop prediction models to estimate the probability of defined trauma outcomes [@Altman2009Prognosis;@Collins2015Transparent]. Such models can play a crucial role in managing and improving care in over-burdened and resoruce-constrained settings [@Rehn2011Prognostic;@Perel2008Predicting]. 

Among the multiple variables that affect trauma outcomes, trauma severity strongly informs clinical practice at different stages such as pre-hospital triage, in-hospital decision-making [@Rehn2011Prognostic;@Fitzgerald2006India]. Consequently, it is the most commonly used variable for prediction in trauma outcomes [@Champion2002Trauma;@Cook2014comparison].There are several trauma scoring systems designed to quantify trauma severity. They use different physiological, anatomical parameters, injury features, and patient characteristics to determine severity, which is then used to predict outcomes, specifically mortality [@Moore2010new;@Skaga2018Validating;@Boyd1987Evaluating;@Champion1989revision;@Sartorius2010Mechanism;@Husum2003Respiratory;@West2000Harborview;@Burd2008Bayesian;@MacLeod2003Comparison;@Kondo2011Revised].

The most widely used trauma severity prediction model is the Trauma and Injury Severity Score (TRISS) [@Gabbe2004]. This model was developed using a large sample from North America, and it predicts mortality using age, physiological status, anatomical severity of the injury, and the nature of the injury [@Boyd1987Evaluating;@Champion1990major]. Ideally, prediction models should be objective, replicable in different settings, less resource-intensive, and revised over time [@Rehn2011Prognostic;@Altman2009Prognosis;@Rozenfeld2014ISS]. Despite subsequent revisions [@Domingues2018New;@Schluter2010Trauma], TRISS continues to have considerable limitations. the predictive ability of TRISS is affected by the nature of the included variables like Glasgow Coma Scale (GCS) which has a high propensity for misclassification among severly injured patients and respirtaory rate (RR) which is not rountinely recorded [@Ringdal2008Utstein;@Demetriades1998TRISS;@Domingues2015Performance;Ghorbani2016Comparison;@Zafar2002Registry; @Munter2017Mortality; @Gabbe2004]. TRISS has also limited external validation in different settings, especially in LMICs [@Zafar2002Registry; @Khajanchi2013Indians;@Perel2006Systematic;@Hung2017Exploring;@Laytin2015Choice;@Kimura2012Modification;@Podang2004Primary; @Gerdin2014Predicting; @Deshmukh2012Analysis;@Agarwal2015Evaluation;@Samanamalee2018]. 

Machine learning algorithms are increasingly used in medicine, including trauma, to accurately predict complex outcomes across different settings [@Christie2018Machine;@Gorczyca2019trauma;@Hubbard2013Time-dependent]. Ensemble machine learning algorithms combine several different statistical techniques to build an optimal prediction model rather than relying on a single technique [@Pirracchio2015Mortality]. Thus, they are flexible and can be used to capture the complex relationships in trauma data. The aim of this study is to develop a local trauma severity model using an ensemble machine learning algorithm and to compare this model with TRISS.

Methodology
===========

Sources of Data
---------------

This is a retrospective analysis of a prospectively collected multi-center observational cohort from three public hospitals in urban India between August 2016 to December 2019. The study will be reported using the Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis (TRIPOD) guidelines [@Collins2015Transparent].

Participants
------------

_Setting_

The three hospitals participating in this study are Maulana Azad Medical College (MAMC), New Delhi; KB Bhabha Hospital (KBBH), Mumbai; and the Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata. They are part of an on-going study Trauma Triage Study (TTRIS). Each of the three hospitals have trauma units that receive patients from across the cities. These are public hospital with free or nominal fees, providing access to low socio-economic groups.

KBBH is a public secondary-care hospital with 436 inpatient beds. It includes departments for general surgery, orthopaedics, and anaesthesia along with intensive care units and a general emergency department (ED). It has in-house diagnostic services such as x-rays and ultrasonography and a day-time computed tomography (CT) service. Most patients are directly admitted to KBBH and then if required referred to tertiary-care facilities. 

MAMC and SSKM are both public tertiary-care teaching hospitals with all departments and diagnostic facilities available in-house 24x7 with general EDs. MAMC has approximately 2200 inpatient beds, and SSKM has approximately 1775 inpatient beds. As tertiary-care hospitals, both MAMC and SSKM have a large proportion of patients who are transferred as referrals from other public and private health facilities.


_Eligibility Criteria_

We included all adult patients (≥ 18 years of age) who presented alive to the ED at the participating centers with a history of trauma - Chapter XX, block V01-Y36, in the International Classification of Disease 10th-revision (ICD 10) [@WordHealthOrganization].


Outcome 
--------

The primary outcome variable will be all-cause mortality within 30-days of arrival at the participating center. Each participating center has a dedicated project officer collecting data in 8-hour shifts per day by prospectively enrolling patients. The project officer would follow-up with the patients in the hospital and if discharged telephonically to record the mortality at 24-hours and 30-day. The shifts would alternate between morning, evening, and night in rotation.The project officers have continuous training and supervision throughout the study period. The collected data is uploaded to a central database and each week reviewed by the research team.


Predictors
----------

Predictor variables were selected based on clinically relevant variables from literature as well as consultations with trauma surgeons experience in working in the urban Indian setting. These included physiological measures: systolic blood pressure (SBP), respiratory rate (RR), heart rate (HR), oxygen saturation, and Glasgow Coma Scale (GCS); injury etiology:mode of transport, type of injury, mechanism of injury, and injury severity scores (ISS); and demographic measures: age and sex. Similar to outcome measure, project officers in each centre will collect information on these variables. Demographic and injury etiology will be collected from the patients or their caregivers and if required from the medical records. On-arrival of the patients the project officer would measure SBP, HR, RR, and oxygen saturation independently but would not be part of patient care. Based on injury details, ISS was computed for each participant by accredited coders.


For the local model we constructed a priori consisting of the predictor variables mentioned above. For the TRISS model, we calculated the Revised Trauma Score (RTS) based on GCS, SBP and RR. Age, type of injury (blunt or penetrating) RTS and ISS were used to calculate the probability of survival (P) ranging from 0 to 1, where 0 corresponds to 0% and 1 to 100% probability of survival [@Champion1990major;@Meredith1996Comparison].

Sample Size
------------

To develop a prediction model with a binary outcome the current recommendation is to include at least ten events, i.e. participants with the outcome, and at least as many non-events per free parameter in the model [@Courvoisier2011Performance]. Depending on the data structure as many as 25 events and non-events or more per free parameter may be required to obtain stable estimates [@Ploeg2014Modern]. These recommendations are however mainly for logistic regression, whereas no recommendations exist for ensemble learners except that more data is likely needed [@VanderLaan2007]. We will therefore include at least 25 events and non-events per free parameter in the training sample.

The training sample constitute 80% of the total sample and the remaining 20% of the cohort will be used as the test sample.A previous study on the a subset of the same population found the 30-day mortality to be around 8% [@WarnbergGerdin2020]. We will assume it to be around 10%. With 12 predictor variables and around 40 free parameters <!-- say 3-5 categories in each variable. It is an overestimation as some like sex or SBP would have only 2 categories-->.The training sample would require 10,000 patients.For the validation and the test sample wold include around 200 events, that is 2000 patients. Therfore, the total sample requird for this study is around 14,000 patients.


Missing Data
------------

We will use multiple imputation using chained equations to handle missing data [Vergouwe2010].



Analyses and Statistical Methods
--------------------------------
We will use R for all statistical analyses [@RCoreTeam2015]. <!--Then describe, in order:
1. How predictors were handled
2. Model building
  * Split complete sample into training, validation and test
  * Develop ensemble and update in training
  * Test performance of ensemble in validation sample
  * Modify model parameters, train again, and then test performance in validation sample until we're satisfied with performance
  * Train ensemble using the combined training and validation samples using the parameters that resulted in the best performance
  * Update TRISS in the combined training and validation samples
  * Compare the ensemble and TRISS in the test sample
3. Measures to assess model performance and compare models
-->



The ensemble machine learning procedure SuperLearner will be used in the study [@Peduzzi1996simulation]. It will combine different statistical techniques (also called machine learning algorithms) such as generalized linear and additive models, random forests, etc. to create a local model that best fits with the data. SuperLearner uses cross-validation to optimize prediction by separating the data into a "training sample" which will be used to generate a model and then using another "test sample" for validating model. We will use the training set to build the ensemble learner and to update TRISS. We will use the test set to estimate the performance of each of the ensemble learner, the original TRISS, and the updated TRISS.

Based on a recent review of machine learners for predicting outcomes in trauma patients [@Liu2017Machine], we will include the seven most commonly used learners in our ensemble model: support vector machines (SVM), artificial neural networks (ANN), decision trees (DT), Bayes classification (BC), k-nearest neighbor (KNN), random forest (RF), and logistic regression (LR). We will then compare the performance of all models in a pair-wise fashion. Performance and differences in performance will be estimated as medians across imputations and 95% confidence intervals will be estimated using bootstrapping.



Model Assessment 
----------------

We will assess the local model and TRISS model for overall performance, discrimination, and calibration [@Steyerberg2010Assessing]. Discrimination, if the higher scores correspond to higher mortality, will be measured using sensitivity, specificity, and the cross-validated area under the receiver-operating characteristic curve (AUROC), reported with corresponding 95% confidence interval (95% CI). Calibration, if the predicted mortality coincides well with the observed mortality, will be assessed by either Hosmer-Lemeshow statistic or Cox calibration test.

Ethical Considerations
----------------------

The institutional ethics committee of each participating center has individually approved the collation and analysis of the TTRIS dataset. The reference numbers are: Maulana Azad Medical College, New Delhi (F.1/IEC/MAMC/(53/2/2016/No.97); KB Bhabha Hospital, Mumbai (HO/4882/KBBH of 3/8/2016); and Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata (Inst/IEC/2016/328).

References
==========
