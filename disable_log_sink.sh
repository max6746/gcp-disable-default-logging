#!/bin/bash

for prj in $(gcloud projects list | awk '{print $1}' | sed '1d')
do
  gcloud logging sinks update _Default  --disabled --project=$prj
done
