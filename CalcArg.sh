calc(){
  sum=0
  num=$#
  for i in $@
  do
   sum=$((sum+i))
  done
    avg=` expr $sum / $num `
  echo $avg
}

calc 1 2 3 4 5
calc 1 2


