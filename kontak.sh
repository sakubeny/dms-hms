#!/bin/sh

aws dms start-replication-task --replication-task-arn arn:aws:dms:ap-southeast-1:454418302049:task:Z66ENWR6FULZKVJ5F53PLTSMTLL6LFDMCB26C2A  --start-replication-task-type reload-target --region ap-southeast-1

aws dms start-replication-task --replication-task-arn arn:aws:dms:ap-southeast-1:454418302049:task:SALJ2ORGTWCSJNKJJK5ZE3BBHTY5DABI65MYMIY  --start-replication-task-type reload-target  --region ap-southeast-1

