#!/bin/bash

method=$1
num=$2
dataset=$3
load=$4

old_num=$num
num="$(($num-1))"

#./track_cpu_mem.sh results_watdiv/cpu ${method}_${load} ${old_num} 1 &
for i in $(seq 0 1 $num)
do
  #node --max-old-space-size=14840 Client.js/bin/${method}-client http://172.19.2.100:8080/${dataset} Client.js/queries/client${i}/ > $dir/client$i.csv &
  #java -jar spf-client.jar http://130.226.98.174:8080/${dataset} watdiv_queries/client${i} ${method} results_stars ${old_num} ${i} ${dataset} ${load} > out_${method}_${load}_${i} & pids[$i]=$!
  #java -jar smartkg++-client.jar config.json watdiv_queries ${method} results_stars ${old_num} ${i} ${dataset} ${load} > out_${method}_${load}_${i} & pids[$i]=$!
#  java -jar sage-client.jar http://137.208.107.75:8890/sparql/watdiv dbpedia_queries ${method} results_stars_16 ${old_num} $i ${dataset} ${load} 
  docker run --rm ldfclients java -jar sage-client.jar http://kg-server.ai.wu.ac.at:8890/sparql/dbpedia Typeddbpediaqueries/bounded sage results_sage_1 4 4 dbpedia2015
  # java -jar wisekg-client-d.jar config-watdiv10M.json watdiv_queries/client${i} ${method} results_stars ${old_num} $i ${dataset} ${load}

  #> out_${method}_${dataset}_$i & pids[$i]=$!
  #java -jar smartkg-client.jar http://kg-server.ai.wu.ac.at:8083/${dataset} watdiv_queries/client${i} ${method} results_stars ${old_num} $i ${dataset} ${load} 
done

echo "Waiting..."
wait "${pids[@]}"

#./stop_tracking.sh
