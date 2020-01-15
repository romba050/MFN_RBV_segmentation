# Mean-field network for retinal blood vessel segmentation

This report analyses Mean Field network (MFN) formulations for segmenting blood vessels in eye-fundus images. Blood vessel segmentation is a classic problem in ophthalmology and it involves the prediction of long, elongated structures that thin towards the end into single pixel thickness. Extracting the vessel tree of an eye-fundus image is a well studied problem. MFNs allow a high degree of customizability, because the formulation of the model involves the design of an energy function that determines how the network learns. This allows to use expert knowledge about the data to your advantage for better prediction. Furthermore, this property makes them interesting for analysis, as the choice of energy function may inform about underlying properties of the data. This report investigates the use of different MFN formulations on this particular task via different models of connectedness. First a Multilayer perceptron is applied on the task both to serve as a baseline for comparison and later as an integral part of the MFN, serving as it's unary potential. Then three different MFN formulations are run on the same task. It is shown that increasing connectedness does indeed increase prediction success.

<br>
<p align="center">
  original image<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_masked.png" width="326pixels"></img><br>
  vessel segmentation (ground truth)<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_ground_truth_cropped.png"></img><br>
  vessel segmentation (model prediction)<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_pred_cropped.png"></img><br>
</p>
