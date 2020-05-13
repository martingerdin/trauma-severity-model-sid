---
title: Development and validation of a local trauma severity score for adult trauma patients in urban India
subtitle: Study plan
author: 
- Siddarth David
- Martin Gerdin Wärnberg
documentclass: "article"
output:
  word_document
bibliography: bibliography.bib
csl: bmcemerg.csl
---

Background
==========

Trauma is global public health challenge, accounting for one-tenth of all deaths and disability-adjusted life-years (DALYs) (1--3). Nearly 90% of trauma-related deaths occur in low-and-middle-income countries (LMICs), and improving trauma care in these settings can save nearly 2 million lives each year (4,5). Standardized quantification of variables is important to assess patient prognosis and can improve the quality of trauma care (6,7) These variables can be used as predictors to develop prediction models to estimate the probability of defined outcomes (8,9). This can play a crucial role in over-burdened settings with limited pre-hospital care or triage (10,11).

Prediction models should be objective, replicable in different settings, less resource-intensive, and revised over time (12--14). There are multiple variables that affect trauma outcomes but trauma severity is the most important variable for predicting trauma outcomes (15,16). Severity informs clinical practice at different stages such as pre-hospital triage, in-hospital decision-making, and patient outcomes (12,17). There are several trauma scoring systems designed to quantify trauma severity. They predict mortality using different physiological, anatomical parameters, injury features, and patient characteristics to predict patient prognosis, specifically patient mortality (18--28).

The most widely used trauma severity prediction model is the Trauma and Injury Severity Score (TRISS) (29). This model was developed using a large population sample from the United States and Canada, and it predicts mortality using age, physiological status, anatomical severity of the injury, and the nature of the injury (21,30). Despite subsequent revisions and additions (31,32), TRISS continues to have considerable limitations. There are methodological issues such as the nature of the variables, high propensity for misclassification, and limited external validation (12,33--41). TRISS has also been criticized for its poor predictions in different settings, especially in LMICs which have limited resources to capture advanced or accurate data (6,42--52).

Machine learning algorithms are increasingly being used in medicine, including trauma research and care, to accurately predict complex outcomes across different settings (53--55). Ensemble machine learning algorithms combine several different statistical techniques to build an optimal prediction model rather than relying on a single technique (56). Thus, they are flexible and can be used to capture the complex relationships in trauma data. The aim of this study is to develop a local trauma severity model using an ensemble machine learning algorithm and to compare this model with TRISS.

Methodology
===========

Study Design
------------

This is a retrospective analysis of a prospectively collected multi-center observational cohort from three public hospitals in urban India between August 2016 to December 2019. The study will be reported using the Transparent Reporting of a multivariable prediction model for Individual Prognosis Or Diagnosis (TRIPOD) guidelines (9).

Setting
-------

The three hospitals participating in this study are Maulana Azad Medical College (MAMC), New Delhi; KB Bhabha Hospital (KBBH), Mumbai; and the Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata. They are part of an on-going study Trauma Triage Study (TTRIS). Each of the three hospitals have trauma units that receive patients from across the city. These are public hospital with free or nominal fees, providing access to low socio-economic groups.

Eligibility Criteria
--------------------

All adult patients (≥ 18 years of age) who were admitted to participating centers with a history of trauma---Chapter XX, block V01-Y36, in the International Classification of Disease 10th-revision (ICD 10) (57). Patients who were dead on arrival were excluded.

Variables
---------

The primary outcome variable will be all-cause mortality within 30-days of arrival at the participating center. Predictor variables were selected based on clinically relevant variables from literature as well as consultations with trauma surgeons experience in working in the urban Indian setting. These included physiological measures: systolic blood pressure (SBP), respiratory rate (RR), heart rate (HR), oxygen saturation, and Glasgow Coma Scale (GCS); injury etiology: time of injury, mode of transport, type of injury, mechanism of injury, and injury severity scores (ISS); and demographic measures: age and sex.

Data
----

Each participating center has a dedicated project officer collecting data in 8-hour shifts per day by prospectively enrolling patients. On-arrival of the patients the project officer would also measure SBP, HR, RR, and oxygen saturation independently but would not be part of patient care. The project officer would follow-up with the patients in the hospital and if discharged telephonically to record the mortality at 24-hours, 30-days and 6-months. The shifts would alternate between morning, evening, and night in rotation. The project officers have continuous training and supervision throughout the study period. The collected data is uploaded to a central database and each week reviewed by the research team. Based on injury details, ISS was computed for each participant by accredited coders.

Developing Trauma Severity Models
---------------------------------

For the local model we constructed a priori consisting of the predictor variables mentioned above. For the TRISS model, we calculated the Revised Trauma Score (RTS) based on GCS, SBP and RR. Age, type of injury (blunt or penetrating) RTS and ISS were used to calculate the probability of survival (P) ranging from 0 to 1, where 0 corresponds to 0% and 1 to 100% probability of survival (30,58).

Analyses and Statistical Methods
--------------------------------

The ensemble machine learning procedure SuperLearner will be used in the study (59). It will combine different statistical techniques (also called machine learning algorithms) such as generalized linear and additive models, random forests, etc. to create a local model that best fits with the data. SuperLearner uses cross-validation to optimize prediction by separating the data into a "training sample" which will be used to generate a model and then using another "test sample" for validating model. We will use the training set to build the ensemble learner and to update TRISS. We will use the test set to estimate the performance of each of the ensemble learner, the original TRISS, and the updated TRISS.

Based on a recent review of machine learning (ML) algorithms for predicting outcomes in trauma patients (40), we selected seven most commonly used machine learning (ML) algorithms for developing the model: support vector machines (SVM), artificial neural networks (ANN), decision trees (DT), Bayes classification (BC), k-nearest neighbor (KNN), random forest (RF), and logistic regression (LR). We will then compare the performance of all models in a pair-wise fashion. Performance and differences in performance will be estimated as medians across imputations and 95% confidence intervals will be estimated using bootstrapping.

Sample Size
-----------

To develop a prediction model with a binary outcome, the current recommendation, is to include at least ten events, i.e. participants with the outcome, and at least as many non-events per free parameter in the model (60). Depending on the data structure as many as 25 events and non-events or more per free parameter may be required to obtain stable estimates (61). These recommendations are however mainly for logistic regression, whereas no recommendations exist for ensemble learners except that more data is likely needed (62). We will therefore include at least 25 events and non-events per free parameter in the training sample. With 12 predictor variables and around 40 free parameters, an estimated sample of at least 2000 will required. The training sample constitute 80% of the total sample. The remaining 20% of the cohort will be used as the test sample.

Missing Data
------------

We will use multiple imputation using chained equations to handle missing data (63).

Model Assessment
----------------

We will assess the local model and TRISS model for overall performance, discrimination, and calibration (64). Discrimination, if the higher scores correspond to higher mortality, will be measured using sensitivity, specificity, and the cross-validated area under the receiver-operating characteristic curve (AUROC), reported with corresponding 95% confidence interval (95% CI). Calibration, if the predicted mortality coincides well with the observed mortality, will be assessed by either Hosmer-Lemeshow statistic or Cox calibration test.

Ethical Considerations
----------------------

The institutional ethics committee of each participating center has individually approved the collation and analysis of the TTRIS dataset. The reference numbers are: Maulana Azad Medical College, New Delhi (F.1/IEC/MAMC/(53/2/2016/No.97); KB Bhabha Hospital, Mumbai (HO/4882/KBBH of 3/8/2016); and Institute of Post-Graduate Medical Education and Seth Sukhlal Karnani Memorial Hospital (IPGMER & SSKM), Kolkata (Inst/IEC/2016/328).

References
==========

1. Toroyan T, Peden MM, Iaych K. WHO launches second global status report on road safety. Inj Prev. 2013;19(2):150. 

2. Chandran A, Hyder AA, Peek-Asa C. The global burden of unintentional injuries and an agenda for progress. Epidemiol Rev. 2010;32(1):110--20. 

3. Haagsma JA, Graetz N, Bolliger I, Naghavi M, Higashi H, Mullany EC, et al. The global burden of injury: incidence, mortality, disability-adjusted life years and time trends from the Global Burden of Disease study 2013. Inj Prev . 2015;1--16. 

4. Mock C, Joshipura M, Quansah CAR. An Estimate of the Number of Lives that Could be Saved through Improvements in Trauma Care Globally. 2012;959--63. 

5. Gururaj G. Injury Prevention and Care : An Important Public Health Agenda for Health, Survival and Safety of Children. Indian J Pediatr \[Internet\]. 2013;80(S1):100--8. Available from: http://link.springer.com/10.1007/s12098-012-0783-z

6. Roy N, Gerdin M, Schneider E, Kizhakke Veetil DK, Khajanchi M, Kumar V, et al. Validation of international trauma scoring systems in urban trauma centres in India. Injury \[Internet\]. 2016;47(11):2459--64. Available from: http://dx.doi.org/10.1016/j.injury.2016.09.027

7. Shibahashi K, Nishida M, Okura Y, Hamabe Y. Epidemiological State, Predictors of Early Mortality, and Predictive Models for Traumatic Spinal Cord Injury: A Multicenter Nationwide Cohort Study. Spine (Phila Pa 1976). 2019;44(7):479--87. 

8. Altman DG, Vergouwe Y, Royston P, Moons KGM, Grobbee DE. Prognosis and prognostic research: What, why, and how? BMJ \[Internet\]. 2009;338(7706):1373--7. Available from: http://www.scopus.com/inward/record.url?eid=2-s2.0-67650045441&partnerID=40&md5=dd049c85a10ce5091e16e718a0e742ac%5Cnhttp://www.scopus.com/inward/record.url?eid=2-s2.0-67650089602&partnerID=40&md5=9060bb61e0805218c6cbd739d845f79d%5Cnhttp://www.scopus.com/i

9. Collins GS, Reitsma JB, Altman DG, Moons KGM. Transparent reporting of a multivariable prediction model for individual prognosis or diagnosis (TRIPOD): The TRIPOD Statement. Eur Urol. 2015;67(6):1142--51. 

10. Rehn M, Perel P, Blackhall K, Lossius HM. Prognostic models for the early care of trauma patients: a systematic review. 2011 \[cited 2018 Jul 22\]; Available from: http://www.sjtrem.com/content/19/1/17

11. Perel PA, Olldashi F, Muzha I, Filipi N, Lede R, Copertari P, et al. Predicting outcome after traumatic brain injury: Practical prognostic models based on large cohort of international patients. Bmj. 2008;336(7641):425--9. 

12. Rehn M, Perel P, Blackhall K, Lossius HM. Prognostic models for the early care of trauma patients: a systematic review. Scand J Trauma Resusc Emerg Med \[Internet\]. 2011;19(17):17. Available from: http://easyaccess.lib.cuhk.edu.hk/login?url=http://ovidsp.ovid.com/ovidweb.cgi?T=JS&CSC=Y&NEWS=N&PAGE=fulltext&D=emed10&AN=21418599%5Cnhttp://findit.lib.cuhk.edu.hk/852cuhk/?sid=OVID:embase&id=pmid:21418599&id=doi:10.1186/1757-7241-19-17&issn=1757-7241&is

13. Altman DG, Vergouwe Y, Royston P, Moons KGM. Prognosis and prognostic research: Validating a prognostic model. BMJ. 2009;338(7708):1432--5. 

14. Rozenfeld M, Radomislensky I, Freedman L, Givon A, Novikov I, Peleg K. ISS groups: Are we speaking the same language? Inj Prev. 2014;20(5):330--5. 15. Champion HR. Trauma Scoring. Scand J Surg. 2002;91:12--22. 

16. Cook A, Weddle J, Baker S, Hosmer D, Glance L, Friedman L, et al. A comparison of the Injury Severity Score and the Trauma Mortality Prediction Model. J Trauma Acute Care Surg. 2014;76(1):47--53. 

17. Fitzgerald M, Dewan Y, O'Reilly G. India and the management of road crashes: Towards a national trauma system. Indian J Surg \[Internet\]. 2006;68(4):226--32. Available from: http://scholar.google.com/scholar?hl=en&btnG=Search&q=intitle:India+and+the+management+of+road+crashes+:+Towards+a+national+trauma+system\#0

18. Moore L, Hanley JA, Turgeon AF, Lavoie A, Eric B. A new method for evaluating trauma centre outcome performance: Tram-adjusted mortality estimates. Ann Surg. 2010;251(5):952--8. 

19. Skaga NO, Eken T, Søvik S. Validating performance of TRISS, TARN and NORMIT survival prediction models in a Norwegian trauma population. Acta Anaesthesiol Scand. 2018;62(2):253--66. 

20. Kondo Y, Abe T, Kohshi K, Tokuda Y, Cook EF, Kukita I. Revised trauma scoring system to predict in-hospital mortality in the emergency department: Glasgow Coma Scale, Age, and Systolic Blood Pressure score. Crit Care \[Internet\]. 2011 Aug 10 \[cited 2018 Jul 22\];15(4):R191. Available from: http://www.ncbi.nlm.nih.gov/pubmed/21831280

21. Boyd CR, Tolson MA, Copes WS. Evaluating trauma care: the TRISS method. Trauma Score and the Injury Severity Score. \[Internet\]. Vol. 27, The Journal of trauma. 1987. p. 370--8. Available from: http://www.ncbi.nlm.nih.gov/pubmed/3106646

22. Champion HR, Sacco WJ, Copes WS, Gann DS, Gennarelli TA, Flanagan ME. A revision of the Trauma Score. J Trauma \[Internet\]. 1989 May \[cited 2018 Jul 22\];29(5):623--9. Available from: http://www.ncbi.nlm.nih.gov/pubmed/2657085

23. Sartorius D, Le Manach Y, David J-S, Rancurel E, Smail N, Thicoïpé M, et al. Mechanism, Glasgow Coma Scale, Age, and Arterial Pressure (MGAP): A new simple prehospital triage score to predict mortality in trauma patients\*. Crit Care Med \[Internet\]. 2010 Mar \[cited 2018 Jul 22\];38(3):831--7. Available from: http://www.ncbi.nlm.nih.gov/pubmed/20068467

24. Husum H, Modaghegh M, Wisborg T, Van Heng Y, Murad M. Respiratory rate as a prehospital triage tool in rural trauma. J Trauma. 2003;55(3):466--70. 

25. West T Al, Rivara FP, Cummings P, Jurkovich GJ, Maier R V. Harborview assessment for risk of mortality: An improved measure of injury severity on the basis of ICD-9-CM. J Trauma - Inj Infect Crit Care. 2000;49(3):530--41. 

26. Burd RS, Ouyang M, Madigan D. Bayesian logistic injury severity score: A method for predicting mortality using international classification of disease-9 codes. Acad Emerg Med. 2008;15(5):466--75. 

27. Glance LG, Osler TM, Mukamel DB, Meredith W, Wagner J, Dick AW. TMPM-ICD9: A trauma mortality prediction model based on ICD-9-CM codes. Ann Surg. 2009;249(6):1032--9. 

28. MacLeod JBA, Kobusingye O, Frost C, Lett R, Kirya F, Shulman C. A Comparison of the Kampala Trauma Score (KTS) with the Revised Trauma Score (RTS), Injury Severity Score (ISS) and the TRISS Method in a Ugandan Trauma Registry: Is Equal Performance Achieved with Fewer Resources? Eur J Trauma. 2003;29(6):392--8. 

29. Gabbe BJ, Cameron PA, Wolfe R. TRISS: Does It Get Better than This? Acad Emerg Med. 2004;11(2):181--6. 

30. Champion HR, Copes WS, Sacco WJ, Lawnick MM, Keast SL, Bain LW, et al. The major trauma outcome study: Establishing national norms for trauma care. Vol. 30, Journal of Trauma - Injury, Infection and Critical Care. 1990. p. 1356--65. 

31. Domingues C de A, Coimbra R, Poggetti RS, Nogueira L de S, de Sousa RMC. New Trauma and Injury Severity Score (TRISS) adjustments for survival prediction. World J Emerg Surg. 2018;13(1):1--6. 32. Schluter PJ, Nathens A, Neal ML, Goble S, Cameron CM, Davey TM, et al. Trauma and Injury Severity Score (TRISS) coefficients 2009 revision. J Trauma - Inj Infect Crit Care. 2010;68(4):761--70. 

33. Demetriades D, Chan LS, Velmahos G, Berne T V., Cornwell EE, Belzberg H, et al. TRISS methodology in trauma: The need for alternatives. Br J Surg. 1998;85(3):379--84. 

34. Ringdal KG, Coats TJ, Lefering R, Bartolomeo S Di, Steen PA, Røise O, et al. The Utstein template for uniform reporting of data following major trauma: A joint revision by SCANTEM, TARN, DGU-TR and RITG. Scand J Trauma Resusc Emerg Med \[Internet\]. 2008;16(167):1--19. Available from: http://www.sjtrem.com/content/16/1/7

35. Domingues CDA, Nogueira LDS, Settervall CHC, De Sousa RMC. Performance of Trauma and Injury Severity Score (TRISS) adjustments: An integrative review. Rev da Esc Enferm. 2015;49(SpecialIssue):135--43. 36. Khajanchi MU, Kumar V, Gerdin M, Roy N. Indians fit the Asian trauma model. World J Surg. 2013;37(3):705--6. 

37. Ghorbani P, Ringdal KG, Hestnes M, Skaga NO, Eken T, Ekbom A, et al. Comparison of risk-adjusted survival in two Scandinavian Level-I trauma centres. Scand J Trauma Resusc Emerg Med \[Internet\]. 2016;24(1):1--8. Available from: http://dx.doi.org/10.1186/s13049-016-0257-9

38. Majdan M, Brazinova A, Rusnak M, Leitgeb J. Outcome prediction after traumatic brain injury: Comparison of the performance of routinely used severity scores and multivariable prognostic models. J Neurosci Rural Pract. 2017;8(1):20--9. 

39. O'Reilly GM, Cameron PA, Jolley DJ. Which patients have missing data? An analysis of missingness in a trauma registry. Injury \[Internet\]. 2012;43(11):1917--23. Available from: http://dx.doi.org/10.1016/j.injury.2012.07.18540. Liu NT, Salinas J. Machine Learning for Predicting Outcomes in Trauma. Shock. 2017;48(5):504--10. 

41. de Munter L, Polinder S, Lansink KWW, Cnossen MC, Steyerberg EW, de Jongh MAC. Mortality prediction models in the general trauma population: A systematic review. Injury \[Internet\]. 2017;48(2):221--9. Available from: http://dx.doi.org/10.1016/j.injury.2016.12.009

42. Zafar H, Rehmani R, Raja AJ, Ali A, Ahmed M. Registry based trauma outcome: Perspective of a developing country. Emerg Med J. 2002;19(5):391--4. 

43. Kamal VK, Agrawal D, Pandey RM. Prognostic models for prediction of outcomes after traumatic brain injury based on patients admission characteristics. Brain Inj \[Internet\]. 2016;30(4):393--406. Available from: http://dx.doi.org/10.3109/02699052.2015.1113568

44. Samanamalee S, Sigera PC, De Silva AP, Thilakasiri K, Rashan A, Wadanambi S, et al. Traumatic brain injury (TBI) outcomes in an LMIC tertiary care centre and performance of trauma scores. BMC Anesthesiol. 2018;18(1):1--7. 

45. Perel P, Edwards P, Wentz R, Roberts I. Systematic review of prognostic models in traumatic brain injury. BMC Med Inform Decis Mak. 2006;6:1--10. 

46. Hung YW, He H, Mehmood A, Botchey I, Saidi H, Hyder AA, et al. Exploring injury severity measures and in-hospital mortality: A multi-hospital study in Kenya. Injury \[Internet\]. 2017;48(10):2112--8. Available from: http://dx.doi.org/10.1016/j.injury.2017.07.001

47. Laytin AD, Kumar V, Juillard CJ, Sarang B, Lashoher A, Roy N, et al. Choice of injury scoring system in low- and middle-income countries: Lessons from Mumbai. Injury \[Internet\]. 2015;46(12):2491--7. Available from: http://dx.doi.org/10.1016/j.injury.2015.06.029

48. Kimura A, Chadbunchachai W, Nakahara S. Modification of the Trauma and Injury Severity Score (TRISS) method provides better survival prediction in Asian blunt trauma victims. World J Surg. 2012;36(4):813--8. 

49. Podang J, Singhasivanon P, Podhipak A, Santikarn C, Sarol-jr J, Ancheta C. Primary Verification : Is the Triss Appropriate for Thailand ? Southeast Asian J Trop Med Public Heal. 2004;35(188--194). 

50. Gerdin M, Roy N, Khajanchi M, Kumar V, Dharap S, Felländer-Tsai L, et al. Predicting early mortality in adult trauma patients admitted to three public University Hospitals in urban India: A prospective multicentre cohort study. PLoS One. 2014;9(9):1--7. 

51. Deshmukh VU, Ketkar MN, Bharucha EK. Analysis of Trauma Outcome Using the TRISS Method at a Tertiary Care Centre in Pune. Indian J Surg. 2012;74(6):440--4. 

52. Agarwal A, Agrawal A, Maheshwari R. Evaluation of probability of survival using APACHE II and TRISS method in orthopaedic polytrauma patients in a tertiary care centre. J Clin Diagnostic Res. 2015;9(7):RC01--4. 

53. Christie SA, Hubbard A, Callcut RA, Hameed M, Dissak-Delon FN, Mekolo D, et al. Machine learning without borders? An adaptable tool to optimize mortality prediction in diverse clinical settings. J Trauma Acute Care Surg. 2018;85(5):921--7. 

54. Gorczyca MT, Toscano NC, Cheng JD. The trauma severity model: An ensemble machine learning approach to risk prediction. Comput Biol Med \[Internet\]. 2019;108(February):9--19. Available from: https://doi.org/10.1016/j.compbiomed.2019.02.025

55. Hubbard A, Munoz ID, Decker A, Holcomb JB, Schreiber MA, Bulger EM, et al. Time-dependent prediction and evaluation of variable importance using superlearning in high-dimensional clinical data. J Trauma Acute Care Surg. 2013;75(1 SUPPL1):53--60. 

56. Pirracchio R, Petersen ML, Carone M, Rigon MR, Chevret S, van der Laan MJ. Mortality prediction in intensive care units with the Super ICU Learner Algorithm (SICULA): A population-based study. Lancet Respir Med \[Internet\]. 2015;3(1):42--52. Available from: http://dx.doi.org/10.1016/S2213-2600(14)70239-5

57. Word Health Organization. International Statistical Classification of Diseases and Related Health Problems 10th Revision (ICD-10)-WHO Version for ;2016 \[Internet\]. Available from: http://apps.who.int/classifications/icd10/browse/2016/en\#/XX

58. Meredith JW, Evans G, Kilgo PD, Mackenzie E, Osler T, Mcgwin G, et al. A Comparison of the Abilities of Nine Scoring Algorithms in Predicting Mortality. J Trauma Inj Infect Crit Care. 1996;53(4):621--9. 

59. van der Laan MJ, Polley EC, Hubbard AE. Super Learner. Stat Appl Genet Mol Biol \[Internet\]. 2007;6(1). Available from: https://www.degruyter.com/view/j/sagmb.2007.6.issue-1/sagmb.2007.6.1.1309/sagmb.2007.6.1.1309.xml

60. Peduzzi P, Concato J, Kemper E, Holford TR, Feinstem AR. A simulation study of the number of events per variable in logistic regression analysis. J Clin Epidemiol. 1996;49(12):1373--9. 61. Courvoisier DS, Combescure C, Agoritsas T, Gayet-Ageron A, Perneger T V. Performance of logistic regression modeling: Beyond the number of events per variable, the role of data structure. J Clin Epidemiol. 2011;64(9):993--1000. 

62. Van Der Ploeg T, Austin PC, Steyerberg EW. Modern modelling techniques are data hungry: A simulation study for predicting dichotomous endpoints. BMC Med Res Methodol. 2014;14(1):1--13. 

63. Vergouwe Y, Royston P, Moons KGM, Altman DG. Development and validation of a prediction model with missing predictor data: a practical approach. J Clin Epidemiol \[Internet\]. 2010;63(2):205--14. Available from: http://dx.doi.org/10.1016/j.jclinepi.2009.03.017

64. Steyerberg EW, Vickers AJ, Cook NR, Gerds T, Gonen M, Obuchowski N, et al. Assessing the performance of prediction models: A framework for traditional and novel measures. Epidemiology. 2010;21(1):128--38.
