#!/bin/bash

RG_NAME=EventHubTesting
LOCATION=centralus
EVENT_HUB_NAMESPACE=MyEhNamespace2423
EVENT_HUB_NAME=MyEh2423

az group delete -y \
    --name $RG_NAME
    


# Create an Event Hubs namespace. Specify a name for the Event Hubs namespace.
az eventhubs namespace create \
    --name $EVENT_HUB_NAMESPACE \
    --resource-group $RG_NAME \
    -l $LOCATION


# Create an event hub. Specify a name for the event hub. 
az eventhubs eventhub create \
    --name $EVENT_HUB_NAME \
    --resource-group $RG_NAME \
    --namespace-name $EVENT_HUB_NAMESPACE