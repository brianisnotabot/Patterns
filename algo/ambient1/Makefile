KEYS=../../instr/keys/keys.orc

CLUSTER=../../clusters/cluster.json

#CSD_NAME=out.csd
#OUTFILE=output.wav

SCO=out.sco
CSD_FLAGS = -DORC_KEYS=$(KEYS)
CSD_FLAGS += -DSCO=$(SCO)
CSD_FLAGS += -DOUTFILE=$(OUTFILE)
OBJECTS=$(CSD_NAME) $(OUTFILE) $(SCO)

default:

$(SCO): scoregen.py $(CLUSTER)
	python scoregen.py $(CLUSTER)> $(SCO)

$(CSD_NAME): template.m4 $(ORC) $(SCO)
	m4 $(CSD_FLAGS) template.m4  > $(CSD_NAME)

$(OUTFILE): $(CSD_NAME)
	csound $(CSD_NAME)


all: $(OBJECTS)
	make $(OUTFILE)

clean: 
	rm -rf $(OBJECTS)
