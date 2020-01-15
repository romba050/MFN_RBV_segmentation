my_array=(./img_00_pred.png ./img00_ground_truth.png)
for file in ${my_array[@]}
do
  #echo ${file%.png}
  basename=${my_array[@]%.png}
  echo $file
  echo $basename
  convert "$file" -transparent white "$basename"_t.png
done

