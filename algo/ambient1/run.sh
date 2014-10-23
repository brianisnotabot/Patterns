#KEYS=../../instr/keys/
#KEYS=$KEYS`ls $KEYS | shuf -n 1`
#
#CLUSTER=../../clusters/
#CLUSTER=$CLUSTER`ls $CLUSTER | shuf -n 1`
#
#CSD_NAME=out.csd
#OUTFILE=output.wav
#
#VAR=$KEYS $CSD_NAME $OUTFILE


#For testing purposes

make all \
KEYS=../../instr/keys/ \
KEYS=$KEYS`ls $KEYS | shuf -n 1` \
CLUSTER=../../clusters/ \
CLUSTER=$CLUSTER`ls $CLUSTER | shuf -n 1` \
CSD_NAME=out.csd \
OUTFILE=output.wav \
