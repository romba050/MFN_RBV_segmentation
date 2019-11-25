# Mean-field network for retinal blood vessel segmentation.

This report analyses mean Field network (MFN) formulations for segmenting blood vessels in eye-
fundus images. Blood vessel segmentation is a classic problem in ophthalmology and it involves the
prediction of long, elongated structures that thin towards the end into single pixel thickness. Extract-
ing the vessel tree of an eye-fundus image is a well studied problem. MFNs allow a high degree of
customizability, because the formulation of the model involves the design of an energy function that
determines how the network learns. This allows to use expert knowledge about the data to your ad-
vantage for better prediction. Furthermore, this property makes them interesting for analysis, as the
choice of energy function may inform about underlying properties of the data. This report investigates
the use of different MFN formulations on this particular task via different models of connectedness.
First a Multilayer perceptron is applied on the task both to serve as a baseline for comparison and
later as an integral part of the MFN, serving as it's unary potential. Then three different MFN for-
mulations are run on the same task. It is shown that increasing connectedness does indeed increase
prediction success.
