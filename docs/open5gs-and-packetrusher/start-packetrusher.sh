#!/bin/bash  

# Ensure the environment variables are substituted in the config file  
export GNB_NGAP_ADDR="${GNB_NGAP_ADDR:-auto}"  
export GNB_GTPU_ADDR="${GNB_GTPU_ADDR:-auto}"  
export GNBSD="${GNBSD:-fffffff}"  
export UESD="${UESD:-fffffff}"  

# Run PacketRusher  
envsubst < /config/config.yml > /config/config_run.yml  
./packetrusher --config /config/config_run.yml ue  
