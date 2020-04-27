# Mean Field Network for retinal blood vessel segmentation

The following is a quick overview of the project, for an in-depth description, read "Mean Field Networks for Retinal Blood Vessel Segmentation.pdf"

This work analyses a machine learning model known as Mean Field Network (MFN) [[1]](http://arxiv.org/abs/1410.5884) for segmenting blood vessels in eye-fundus images. Blood vessel segmentation is a classic problem in ophthalmology and it involves the prediction of long, elongated structures that thin towards the end into single pixel thickness. Extracting the vessel tree of an eye-fundus image is a well studied problem.

MFNs allow a high degree of customizability, because the formulation of the model involves the design of an energy function that determines how the network learns. This allows to use expert knowledge about the data to your advantage for better prediction. Furthermore, this property makes them interesting for analysis, as the choice of energy function may inform about underlying properties of the data. This report investigates the use of different MFN formulations on this particular task via different models of connectedness (dubbed case 1, case 2 and case 3). 

All three models follow the same basic outline. The make us of an energy function. The energy function involves of a unary and a pairwise potential of pixels. The unary potential of a pixel is a score that is based on the features of that pixel. The pairwise potential is a score for a pair of pixels based on their similarity. In our case these pixels are direclty adjacent to each other in the grid, i.e. each pixel has 8 neighbours and 8 pairwise potentials. 

<p align="center">
  unary and pairwise potentials <br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/unary_and_pw_potentials.png" width="500pixels"></img>
</p>

First a Multilayer perceptron is applied on the task both to serve as a baseline for comparison and later as an integral part of the MFN, serving as it's unary potential. Then one of three MFN formulations of different connectedness are run for the pairwise potential (case 1 , case 2 or case 3). It is shown that increasing connectedness does indeed increase prediction success.


<p align="center">
  workflow<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/MFN_workflow.png"></img>
</p>


Below you can see the prediction for a given fundus image by model case 3.

<br>
<p align="center">
  original image<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_masked.png" width="326pixels"></img><br>
  vessel segmentation (ground truth)<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_ground_truth_cropped.png"></img><br>
  vessel segmentation (model prediction, case 3)<br>
  <img src="https://github.com/romba050/MFN_RBV_segmentation/blob/master/readme_images/img00_pred_cropped.png"></img><br>
</p>

Sources: <br>
[1] Yujia Li and Richard Zemel. "Mean-Field Networks". In: 32.2 (2014), pp. 1-5. issn: 0038-1098.
doi: 10.1016/0038-1098(65)90067-0. arXiv: 1410.5884. url: http://arxiv.org/abs/1410.5884.
