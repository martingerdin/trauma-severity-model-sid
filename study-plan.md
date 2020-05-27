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

Trauma accounts for one-tenth of all deaths and disability-adjusted life-years (DALYs) [@Toroyan2013WHO;@Chandran2010global;@Haagsma2015global]. Nearly 90% of trauma-related deaths occur in low-and-middle-income countries (LMICs), and improving trauma care in these settings can save nearly 2 million lives each year [@Mock2012Estimate;@Gururaj2013Injury]. Patient-related variables affect trauma outcomes. Therefore, it is important to quantify the variables in a standardized process [@Roy2016Validation;@Shibahashi2019Epidemiological]. They can, then be used to develop prediction models to estimate the probability of defined trauma outcomes [@Altman2009Prognosis;@Collins2015Transparent]. Such models can play a crucial role in managing and improving care in over-burdened and resource-constrained settings [@Rehn2011Prognostic;@Perel2008Predicting]. <!-- This paragraph has two main messages: 1. Trauma is a big problem. 2. Prediction models are good. I think you should split it into two paragraph -- SD: I get the point, but then I feel it would become two small paragraphs.-->

Trauma severity is one variable that informs clinical practice at different stages such as pre-hospital triage, in-hospital decision-making, consequently, it is the most commonly used variable for prediction in trauma outcomes [@Champion2002Trauma;@Cook2014comparison;@Rehn2011Prognostic;@Fitzgerald2006India].There are several trauma scoring systems <!-- Same thing as trauma severity prediction model?--SD No, I wanted to say, that scoring systems help to measure severity by quantifying severity-->designed to quantify trauma severity. They use different physiological, anatomical parameters, injury features, and patient characteristics to determine severity, which is then used to predict outcomes, specifically mortality [@Moore2010new;@Skaga2018Validating;@Boyd1987Evaluating;@Champion1989revision;@Sartorius2010Mechanism;@Husum2003Respiratory;@West2000Harborview;@Burd2008Bayesian;@MacLeod2003Comparison;@Kondo2011Revised].

The most widely used trauma severity prediction model is the Trauma and Injury Severity Score (TRISS) [@Gabbe2004]. This model was developed in a large sample from North America, and it predicts mortality using age, physiological status, anatomical severity of the injury, and the nature of the injury [@Boyd1987Evaluating;@Champion1990major]. Despite subsequent revisions [@Domingues2018New;@Schluter2010Trauma], TRISS continues to have considerable limitations. the predictive ability of TRISS is affected by the nature of the included variables like Glasgow Coma Scale (GCS) which has a high propensity for misclassification among severely injured patients and respiratory rate (RR) which is not routinely recorded [@Ringdal2008Utstein;@Demetriades1998TRISS;@Domingues2015Performance;Ghorbani2016Comparison;@Zafar2002Registry; @Munter2017Mortality; @Gabbe2004]. TRISS has also limited external validation in different settings, especially in LMICs [@Zafar2002Registry; @Khajanchi2013Indians;@Perel2006Systematic;@Hung2017Exploring;@Laytin2015Choice;@Kimura2012Modification;@Podang2004Primary; @Gerdin2014Predicting; @Deshmukh2012Analysis;@Agarwal2015Evaluation;@Samanamalee2018]. 

Machine learning algorithms are increasingly used in medicine, including trauma, to accurately predict complex outcomes across different settings [@Christie2018Machine;@Gorczyca2019trauma;@Hubbard2013Time-dependent]. Ensemble machine learning algorithms combine several different statistical techniques to build an optimal prediction model rather than relying on a single technique [@Pirracchio2015Mortality]. Thus, they are flexible and can be used to capture the complex relationships in trauma data. The aim of this study is to develop a local trauma severity model using an ensemble machine learning algorithm and to compare this model with TRISS.

Methodology
===========

Sources of Data
---------------

This is a retrospective analysis of a prospectively collected multi-center cohort from three public hospitals in urban India between August 2016 to December 2019. Each participating center has a dedicated project officer collecting data in 8-hour shifts per day by prospectively enrolling patients. The shifts would alternate between morning, evening, and night in rotation. The project officer  followed-up patients in the hospital until discharge or death. They have continuous training and supervision throughout the study period. The collected data is uploaded to a central database and each week reviewed by the research team. The study will be reported using the Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis (TRIPOD) guidelines [@Collins2015Transparent].

Participants
------------

### Setting

The three hospitals participating in this study are Maulana Azad Medical College (MAMC), New Delhi; KB Bhabha Hospital (KBBH), Mumbai; and the Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata. They are part of an on-going study Trauma Triage Study (TTRIS). Each of the three hospitals have trauma units that receive patients from across the cities. These are public hospital with free or nominal fees, providing access to low socio-economic groups.

KBBH is a public secondary-care hospital with 436 inpatient beds. It includes departments for general surgery, orthopedics, and anesthesia along with intensive care units and a general emergency department (ED). It has in-house diagnostic services such as x-rays and ultrasonography and a day-time computed tomography (CT) service. Most patients are directly admitted to KBBH and then if required referred to tertiary-care facilities. 

MAMC and SSKM are both public tertiary-care teaching hospitals with all departments and diagnostic facilities available in-house 24x7 with general EDs. MAMC has approximately 2200 inpatient beds, and SSKM has approximately 1775 inpatient beds. As tertiary-care hospitals, both MAMC and SSKM have a large proportion of patients who are transferred as referrals from other public and private health facilities.


### Eligibility Criteria

We included all adult patients (>=18 years of age) who presented alive to the ED at the participating centers with a history of trauma - Chapter XX, block V01-Y36, in the International Classification of Disease 10th-revision (ICD 10) [@WordHealthOrganization].


Outcome 
--------

The outcome variable will be all-cause mortality within 30-days of arrival at the participating center. For participants who died before discharge this variable was extracted from medical records; for discharged participants it was collected telephonically from the participant or a contact person.

Predictors
----------

<<<<<<< HEAD
Predictor variables were selected based on clinically relevant variables from literature as well as consultations with trauma surgeons experience in working in the urban Indian setting. These included physiological measures: systolic blood pressure (SBP), respiratory rate (RR), heart rate (HR), oxygen saturation (SPO), and Glasgow Coma Scale (GCS); injury etiology:mode of transport, type of injury, mechanism of injury, and injury severity scores (ISS); and demographic measures: age and sex. Similar to outcome measure, project officers in each centre will collect information on these variables. Demographic and injury etiology will be collected from the patients or their caregivers and if required from the medical records. On-arrival of the patients the project officer would measure SBP, HR, RR, and oxygen saturation independently but would not be part of patient care. Based on injury details, ISS was computed for each participant by accredited coders.
=======
The local model will include  physiological measures: systolic blood pressure (SBP), respiratory rate (RR), heart rate (HR), oxygen saturation (SPO), and Glasgow Coma Scale (GCS); injury etiology:mode of transport, type of injury, mechanism of injury, and injury severity scores (ISS); and demographic measures: age and sex. The predictors were selected based on the literature as well as consultations with trauma surgeons working in the urban Indian setting. TRISS will include the Revised Trauma Score (RTS) based on GCS, SBP and RR. Age, type of injury (blunt or penetrating) [@Champion1990major;@Meredith1996Comparison].
>>>>>>> martingerdin-master

Project officers collecting outcome data in each center will also collect information on these variables. On-arrival of the patients, the project officer would measure SBP, HR, RR, and oxygen saturation independently but would not be part of patient care.Based on injury details, ISS will be computed for each participant by accredited coders. Injury etiology and demographic data will be collected from the patients or their caregivers and if required from the medical records. 


Sample Size
------------

To develop a prediction model with a binary outcome the current recommendation is to include at least ten events, i.e. participants with the outcome, and at least as many non-events per free parameter in the model [@Courvoisier2011Performance]. Depending on the data structure as many as 25 events and non-events or more per free parameter may be required to obtain stable estimates [@Ploeg2014Modern]. These recommendations are however mainly for logistic regression, whereas no recommendations exist for ensemble learners except that more data is likely needed [@VanderLaan2007]. We will therefore include at least 25 events and non-events per free parameter in the training sample.

<<<<<<< HEAD
A previous study on the a subset of the same population found the 30-day mortality to be around 8% [@WarnbergGerdin2020]. We will assume it to be around 10%. With 12 predictor variables and 35 free parameters.The training sample would require around 8,750 patients.For the validation and the test sample wold include around 200 events, that is 2000 patients. Therfore, the total sample requird for this study is around 10,750 patients.
=======

A previous study on the a subset of the same population found the 30-day mortality to be around 8% [@WarnbergGerdin2020]. We will assume it to be around 10%. In this study there 12 predictor variables and 20 free parameters.The training sample would require around 5000 patients.For the validation and the test sample wold include around 200 events, that is 2000 patients in each sample. Therefore, the total sample required for this study is around 9000 patients.

>>>>>>> martingerdin-master

Missing Data
------------

We will use multiple imputation using chained equations to handle missing data [Vergouwe2010].

Analyses and Statistical Methods
--------------------------------

### Handling predictors and outcomes

<<<<<<< HEAD
We will use R for all statistical analyses [@RCoreTeam2015]. For the demographic predictors age was categorized into young adults (18-24 years), middle adults (25-64 year), and older adults (65 years and above); and sex was categorized into female and male.Mechanism of injury was categorized into five groups: road traffic injuries, falls, railway injuries, assaults and others. Mode of transport to the health facility was divided into four groups: on feet, private vehicles (including cabs, automatic rickshaws),ambulance, and police van.There were two groups of types of injuries: blunt and penetrating. SBP was categorized into two groups: normal (SBP 90-140 mmHg) and abnormal (below 90 amd above 140 mmHg).HR was grouped as bradycardia (HR <60 beats/min [bpm]), tachycardia (HR >100 bpm), and normal (HR 60–100 bpm). RR was categorized as poor (0-5), moderate (6-29), and good (30 and more) and SPO was grouped into weak (0-80), moderate (81-95), good (96 and above). GCS was categorized into mild (GCS 13 to 15), moderate (GCS 9 to 12), and severe (GCS 8 and below).ISS was categorized as mild (ISS between 1 and 8), moderate (ISS between 9 and 15), severe (ISS between 16 and 24), and very severe (ISS> 24).Thus, there were 35 free parameters.<!--Should I put this as a table?--> <!-- Sorry if I'm missing something, but didn't we say that you should keep continuous variables as continuous? -->
=======
### Handling predictors and outcomes

We will use R for all statistical analyses [@RCoreTeam2015]. For the model, predictors such as: SBP, RR, HR, SPO, GCS, ISS, and age were taken as continuous variables. Mode of transport to the health facility was divided into four groups: on feet, private vehicles (including cabs, automatic rickshaws),ambulance, and police van.There were two groups of types of injuries: blunt and penetrating. Mechanism of injury was categorized into five groups: road traffic injuries, falls, railway injuries, assaults and others.Sex was categorized into female and male.Thus, there are 20 free parameters.<!--Should I put this as a table?-->
>>>>>>> martingerdin-master

For the TRISS we used the specified categorization (@Champion2002Trauma). SBP is assigned into five groups:0 mm Hg, 1-49mm Hg, 50-75mm Hg, 76-89mm Hg, >89mm Hg. SPO is categorized into five groups: 0 or not measurable, 1-80, 81-90, 91-95 and 96-100.GCS is also assigned into five groups:GCS 15-13, GCS 12-9, GCS 8-6, GCS 5-4 and GCS 3.ISS was categorized as mild (ISS between 1 and 8). Age has two categories: less than 55 years and greater than or equal to 55 years.


### Model building
<<<<<<< HEAD

The ensemble machine learning procedure SuperLearner will be used in the study [@Peduzzi1996simulation]<!-- I don't think this reference is the one you intended -->. SuperLearner combines different learners<!-- I think we can use just "learner" to denote a machine learning algorithm -->(also called machine learning algorithms) such as generalized linear and additive models, random forests, etc. to create a local model that best fits with the data<!-- When you write "create a local model" do you refer to how you will use it or how it is generally used? Either way it needs to be rephrased for clarity. If you mean the latter I suggest you remove it as it doesn't add much-->. SuperLearner uses cross-validation to optimize prediction<!-- Why is cross-validation used? What improves with cross-validation? -->.The entire sample will be be split into three sets: a training sample which will be used to generate a model, a validation sample to test the performance of the model, and a test sample to compare the model with TRISS<!-- I suggest that this comes earlier-->.

The training sample constitute 80% of the total cohort and the remaining samples will be 20% of the cohort<!-- Is this still true? -->. We will modify the model parameters, followed by training, and then testing its performance in the validation sample until a satisfactory performance is achieved. The ensemble model will be trained using the combined training and validation samples using the parameters that resulted in the best performance. We will update TRISS in the combined training and validation samples. Then the perfromance of ensemble model and TRISS will be compared in the test sample.<!-- I think this is more of an overview of the whole analysis process, and can be first in this section -->

Based on a recent review of machine learners for predicting outcomes in trauma patients [@Liu2017Machine], we will include the seven most commonly used learners in our ensemble model: support vector machines (SVM), artificial neural networks (ANN), decision trees (DT), Bayes classification (BC), k-nearest neighbor (KNN), random forest (RF), and logistic regression (LR). We will then compare the performance of all models in a pair-wise fashion. Performance and differences in performance will be estimated as medians across imputations and 95% confidence intervals will be estimated using bootstrapping.<!-- This last sentence should be moved to model performance -->
=======

The ensemble machine learning procedure SuperLearner will be used in the study [@Peduzzi1996simulation]. It will combine different statistical techniques (also called machine learning algorithms) such as generalized linear and additive models, random forests, etc. to create a local model that best fits with the data. SuperLearner uses cross-validation to optimize prediction.The entire sample will be be split into three sets: a training sample which will be used to generate a model, a validation sample to test the performance of the model, and a test sample to compare the model with TRISS.

Based on sample size described above, the training sample will constitute 55% of the total cohort and the validation and test samples will be 22% each of the cohort. After developing the preliminary  ensemble model, we will modify the model parameters, followed by training, and then testing its performance in the validation sample until a satisfactory performance is achieved. The ensemble model will be trained using the combined training and validation samples using the parameters that resulted in the best performance. We will update TRISS in the combined training and validation samples. Then the performance of ensemble model and TRISS will be compared in the test sample.

>>>>>>> martingerdin-master

Based on a recent review of machine learners for predicting outcomes in trauma patients [@Liu2017Machine], we will include the seven most commonly used learners in our ensemble model: support vector machines (SVM), artificial neural networks (ANN), decision trees (DT), Bayes classification (BC), k-nearest neighbor (KNN), random forest (RF), and logistic regression (LR). We will then compare the performance of all models in a pair-wise fashion. 

### Model performance

<<<<<<< HEAD
We will assess the local model and TRISS model for overall performance, discrimination, and calibration [@Steyerberg2010Assessing]. Discrimination, if the higher scores correspond to higher mortality, will be measured using sensitivity, specificity, and the cross-validated area under the receiver-operating characteristic curve (AUROC)<!-- Will you use cross-validation in the test sample? Otherwise it's just AUROCC-->, reported with corresponding 95% confidence interval (95% CI). Calibration, if the predicted mortality coincides well with the observed mortality, will be assessed by either Hosmer-Lemeshow statistic or Cox calibration test<!-- Can you compare calibration between the ensemble and TRISS using these metrics? Will you come up with 95% CIs for these as well?-->.
=======
Performance and differences in performance will be estimated as medians across imputations and 95% confidence intervals will be estimated using bootstrapping.We will assess the local model and TRISS model for overall performance, discrimination, and calibration [@Steyerberg2010Assessing]. Discrimination, if the higher scores correspond to higher mortality, will be measured using sensitivity, specificity, and the cross-validated area under the receiver-operating characteristic curve (AUROC), reported with corresponding 95% confidence interval (95% CI). Calibration, if the predicted mortality coincides well with the observed mortality, will be assessed by either Hosmer-Lemeshow statistic or Cox calibration test.
>>>>>>> martingerdin-master



Results
=======



Discussions
===========




Conclusions
==========



Ethical Considerations
=======================
The institutional ethics committee of each participating center has individually approved the collation and analysis of the TTRIS data set. The reference numbers are: Maulana Azad Medical College, New Delhi (F.1/IEC/MAMC/(53/2/2016/No.97); KB Bhabha Hospital, Mumbai (HO/4882/KBBH of 3/8/2016); and Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata (Inst/IEC/2016/328).

References
==========

