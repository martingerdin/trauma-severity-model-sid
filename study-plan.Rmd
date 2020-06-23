---
title: Development and validation of a local trauma severity score for adult trauma
  patients in urban India
author:
- Siddarth David
- Martin Gerdin Wärnberg
output:
  pdf_document: default
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

Trauma accounts for eight per cent of all deaths and one-tenth of the disability-adjusted life-years (DALYs) across the world [@Haagsma2019].Transport injuries, self-harm and falls are among the top mechanisms of injury [@Karimkhani2016]. Nearly 90% of trauma-related deaths occur in low-and-middle-income countries (LMICs), and improving trauma care in these settings can save nearly two million lives each year [@Mock2012Estimate;@Gururaj2013Injury]. The Sustainable Development Goals (SDGs) had set the target reduce injury-related mortality by 2030 but there is still scope for improvement [James2018;@UnitedNations2019;@WorldHealthOrganizationWHO2018].


Patient and injury characteristics affect trauma outcomes [@Roy2016Validation;Shibahashi2019Epidemiological]. Trauma severity is a variable that informs clinical practice at both pre-hospital triage and in-hospital decision-making [@Champion2002Trauma;@Cook2014comparison;@Fitzgerald2006India]. There are several scoring systems designed to quantify trauma severity. They use different physiological, anatomical parameters, injury etiology, and patient characteristics to determine severity, which is then used to predict outcomes, for example mortality [@Moore2010new;@Skaga2018Validating;@Boyd1987Evaluating;@Champion1989revision;@Sartorius2010Mechanism;@Husum2003Respiratory;@West2000Harborview;@Burd2008Bayesian;@MacLeod2003Comparison;@Kondo2011Revised].


<!-- Need a smoother transition between the previous paragraph and this one. Specifically, you need to introduce prediction models better. Can you say that the scoring systems you mention are so called prediction models?-->In trauma, prediction models are used to estimate the probability of such outcomes  [@Altman2009Prognosis;@Collins2015Transparent]. These models use multiple patient characteristics such as age, gender, vital signs, etc. to determine outcomes [@Riley2020]<!-- Repetitive-->. Prediction  models should be objective, replicable in different settings, less resource-intensive, and revised over time [Altman2009Prognosis;Rozenfeld2014ISS]<!-- I think you can remove this sentence -->. Such models can play a crucial role in managing and improving care in over-burdened and resource-constrained settings [@Rehn2011Prognostic;@Perel2008Predicting]. 

Machine learning algorithms are increasingly used in medicine, including trauma, to develop prediction models across different settings. [@Christie2018Machine;@Gorczyca2019trauma;@Hubbard2013Time-dependent]. Ensemble machine learning algorithms combine several different statistical techniques to build an optimal prediction model rather than relying on a single technique [@Pirracchio2015Mortality].<!-- Although I see why you would like to merge this with the prediction model paragraph it's not quite obvious how they fit together. Maybe you should try to discuss TRISS before you get to ML -->


The most widely used trauma severity prediction model is the Trauma and Injury Severity Score (TRISS) [@Gabbe2004]. This model was developed in a large sample from North America, and it predicts mortality using age, physiological status, anatomical severity of the injury, and the nature of the injury [@Boyd1987Evaluating;@Champion1990major]. Despite subsequent revisions [@Domingues2018New;@Schluter2010Trauma], TRISS continues to have considerable limitations. the predictive ability of TRISS is affected by the nature of the included variables like Glasgow Coma Scale (GCS) which has a high propensity for misclassification among severely injured patients and respiratory rate (RR) which is not routinely recorded [@Ringdal2008Utstein;@Demetriades1998TRISS;@Domingues2015Performance;Ghorbani2016Comparison;@Zafar2002Registry; @Munter2017Mortality; @Gabbe2004]. TRISS has also limited external validation in different settings, especially in LMICs [@Zafar2002Registry; @Khajanchi2013Indians;@Perel2006Systematic;@Hung2017Exploring;@Laytin2015Choice;@Kimura2012Modification;@Podang2004Primary; @Gerdin2014Predicting; @Deshmukh2012Analysis;@Agarwal2015Evaluation;@Samanamalee2018]. Thus, they are flexible and can be used to capture the complex relationships in trauma data.<!-- Looks like you actually had the ML bit here, but moved it for some reason--> The aim of this study is to develop a local trauma severity model using an ensemble machine learning algorithm and to compare this model with TRISS.

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

The local model will include  physiological measures: systolic blood pressure (SBP), respiratory rate (RR), heart rate (HR), oxygen saturation (SPO), and Glasgow Coma Scale (GCS); injury etiology:mode of transport, type of injury, mechanism of injury, and injury severity scores (ISS); and demographic measures: age and sex. The predictors were selected based on the literature as well as consultations with trauma surgeons working in the urban Indian setting. TRISS will include the Revised Trauma Score (RTS) based on GCS, SBP and RR. Age, type of injury (blunt or penetrating) [@Champion1990major;@Meredith1996Comparison].


Project officers collecting outcome data in each center will also collect information on these variables. On-arrival of the patients, the project officer would measure SBP, HR, RR, and oxygen saturation independently but would not be part of patient care.Based on injury details, ISS will be computed for each participant by accredited coders. Injury etiology and demographic data will be collected from the patients or their caregivers and if required from the medical records. 


Sample Size
------------

```{r sample-size, echo = FALSE, include = FALSE}

library(pmsampsize)
# Outcome is binary (mortality)
type <- "b"

# Riley recommends R-squared of 0.48 for prevalnce of 0.1. Are you sure it's not 0.11?
rsquared <- 0.11

#There are 12 candidate predictors. But this should be the number of parameters, i.e. 20
parameters <- 20

#Shrinkage suggested 0.9

#Based on Ludde et al 
prevalence <- 0.1

## Why are you putting these numbers into objects if you are anyway going to use the actual numbers in the call to pmsampsize? Note that you also want to put the output of pmsampsize in an object and then use that inline. See example below.

sample.size <- pmsampsize(type = type, rsquared = rsquared, parameters = parameters, prevalence = prevalence)$sample_size

```

A recent study has recommended that for clinical prediction models samples, alongwith the number of events, predictor parameters, and the outcome incidence, the expected predictive performance of the model should also be be included [@Riley2020]<!-- This is an awkward sentence. Can't you just say that the recent study outlines four steps, or four factors that need to be considered?-->. A previous study on the a subset of the same population found the 30-day mortality to be around 8% [@WarnbergGerdin2020]. We will assume it to be around 10%. In this study there are 12 predictor variables and 20 free parameters. With an anticipated Cox-Snell R squared of 0.11 [@Riley2020], using the the proposed methodology for binary outcomes (mortality), the required sample size would be `r study.size` patients..

<!--This gives a minimum sample size of 357. Isn't that too low?-->


Missing Data
------------

We will use multiple imputation using chained equations to handle missing data [Vergouwe2010].

Analyses and Statistical Methods
--------------------------------

### Handling predictors and outcomes

We will use R for all statistical analyses [@RCoreTeam2015]. For the model, predictors such as: SBP, RR, HR, SPO, GCS, ISS, and age will be treated as continuous variables. Mode of transport to the health facility was divided into four groups: on feet, private vehicles (including cabs, automatic rickshaws),ambulance, and police van. There were two groups of types of injuries: blunt and penetrating. Mechanism of injury was categorized into five groups: road traffic injuries, falls, railway injuries, assaults and others. Sex was categorized into female and male. Thus, there are 20 free parameters (Table 1).<!-- If you're putting it in a table maybe it doesn't have to be in the text as well. The table does not look like a table in the word document. Try outputting a pdf instead. -->

```{r, results='asis'}
Table1<-data.frame(Predictors=c("Mechanism of Injury", "Mechanism of Injury","Mechanism of Injury"," Mechanism of Injury"," Mechanism of Injury" ,"Type of Injury","Type of Injury","Mode of Transport","Mode of Transport","Mode of Transport","Mode of Transport","Gender","Gender","Systolic Blood Pressure","Respiratory Rate","Heart Rate","Heart Rate","Oxygen saturation","Glasgow Comma Scale","Injury Severity Score","Age"), Categories=c("Road Traffic Injury","Fall","Railway Injury","Assault","Others","Blunt","Penetrating", "Private Vehicle","Ambulance","Police Van","On foot","Male","Female","Continous Variable","Continous Variable","Continous Variable","Continous Variable","Continous Variable","Continous Variable","Continous Variable","Continous Variable"))
library(knitr)
library(kableExtra)

kable(Table1, format = "latex")%>%
  kable_styling(bootstrap_options = c("striped", "hover"))%>%
  collapse_rows(columns=1:2, valign = "middle")
  
```
  
For the TRISS we used the specified categorization (@Champion2002Trauma). SBP is assigned into five groups:0 mm Hg, 1-49mm Hg, 50-75mm Hg, 76-89mm Hg, >89mm Hg. SPO is categorized into five groups: 0 or not measurable, 1-80, 81-90, 91-95 and 96-100.GCS is also assigned into five groups:GCS 15-13, GCS 12-9, GCS 8-6, GCS 5-4 and GCS 3.ISS was categorized as mild (ISS between 1 and 8). Age has two categories: less than 55 years and greater than or equal to 55 years.


### Model building

The entire sample will be be split into three sets: a training sample which will be used to generate a model, a validation sample to test the performance of the model, and a test sample to compare the model with TRISS. Based on sample size described above, the training sample will constitute 55% of the total cohort and the validation and test samples will be 22% each of the cohort. After developing the preliminary model, we will modify the model parameters, followed by training, and then testing its performance in the validation sample until a satisfactory performance is achieved. The model will be trained using the combined training and validation samples using the parameters that resulted in the best performance. We will update TRISS in the combined training and validation samples. Then the performance of model and TRISS will be compared in the test sample.


The ensemble machine learning procedure SuperLearner will be used in the study [@VanderLaan2007]. It combines different statistical techniques (also called learner) such as generalized linear and additive models, random forests, etc. to develop a prediction model that best fits with the data provided to it. In order to optimize prediction SuperLearner uses cross-validation [@Polley2010]. It trains each learner with one part of the data set and determines the error of the learner  by validating it with an other part of dataset. It then creates a optimal weighted average of those learners or an "ensemble model".

Based on a recent review of machine learners for predicting outcomes in trauma patients [@Liu2017Machine], we will include the seven most commonly used learners in our ensemble model: support vector machines (SVM), artificial neural networks (ANN), decision trees (DT), Bayes classification (BC), k-nearest neighbor (KNN), random forest (RF), and logistic regression (LR). We will then compare the performance of all models in a pair-wise fashion. 

### Model performance

Performance and differences in performance will be estimated as medians across imputations and 95% confidence intervals will be estimated using bootstrapping.We will assess the local model and TRISS model for overall performance, discrimination, and calibration [@Steyerberg2010Assessing]. Discrimination, if the higher scores correspond to higher mortality, will be measured using sensitivity, specificity, and the area under the receiver-operating characteristic curve (AUROC), reported with corresponding 95% confidence interval (95% CI). Calibration, if the predicted mortality coincides well with the observed mortality, will be assessed by either Hosmer-Lemeshow statistic or Cox calibration test.

<!--So, I didn't yet find much on using Hosmer-lemshow in comparing model. But I fould Akaike's criterion (AIC) it is a goodness-of-fit test by  sum of squares   number of parameters in the model. You get a probability of each model being better and probabilities add to 100. So, I guess it like 30 vs 60 or 20 vs 80. So we can compare the local vs. TRISS--> 

<!-- We could use AIC, but I'm not sure how to think about AIC and confidence intervals -->




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

