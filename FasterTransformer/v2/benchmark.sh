SEQ_LEN=(10 20 40 60 80 100 200 300 400 500)
BATCH_SIZE=(1 20)

rm log.txt
for batch_size in ${BATCH_SIZE[*]}
do
  for seq_len in ${SEQ_LEN[*]}
  do
     python encoder_sample.py -time 1 -batch=${batch_size} -s=${seq_len}
  done
done

