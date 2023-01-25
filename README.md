# Azure Event Hub   

This repo contains some bash scripts for managing Infrastructure for Azure Event Hubs.

## Create Infra 

Infrastructure is created by running [CreateInfra.sh](CreateInfra.sh)
You must edit this file and provide a value for RESOURCE_OWNER_OBJECT_ID. 

## Destroy Infra
Infrastructure is destroyed by running [DestroyInfra.sh](DestroyInfra.sh)


## Sending Events
Dummy events can be sent by running [SendEventsToEventHub.py](app/SendEventsToEventHub.py) 