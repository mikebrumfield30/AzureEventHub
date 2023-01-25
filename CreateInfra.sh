#!/bin/bash

# FILL IN THIS PARAMETER WITH THE OBJECT ID OF YOUR USER IN AZURE AD
RESOURCE_OWNER_OBJECT_ID=PLACEHOLDER

RG_NAME=EventHubTesting
LOCATION=centralus
EVENT_HUB_NAMESPACE=MyEhNamespace2423
EVENT_HUB_NAME=MyEh2423



az group create \
    --name $RG_NAME \
    --location $LOCATION


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


# Add roles
az role assignment create \
    --assignee-object-id cb3b09cc-3411-483f-8135-68c0147e72df \
    --assignee-principal-type User \
    --role "Azure Event Hubs Data Owner"