#!/bin/bash

# Set S3 bucket name and get file name from command-line argument
#BUCKET_NAME="pmi-bora-data-transfer-microsvc/ayo_b2b/business_all_contacts/"
#if [[ $# -eq 0 ]]; then
#    echo "Please specify the file name as an argument"
#    exit 1
#fi
#FILE_NAME="$1"

# Check if the file exists in the S3 bucket
#if aws s3 ls "s3://${BUCKET_NAME}/${FILE_NAME}" 2>&1 | grep -q 'NoSuchKey'; then
#    echo "File not found"
#    exit 1
#else
#    echo "File found"
#fi

# Start the DMS replication task and log output
echo "Starting DMS replication task..."
if aws dms start-replication-task \
    --replication-task-arn "arn:aws:dms:ap-southeast-1:454418302049:task:QNCLU4KIVULOQ74AHTDF2V6GMIG3FXOSEHIL2PQ" \
    --start-replication-task-type reload-target \
    --region ap-southeast-1 \
    > business_all_contacts.txt 2>&1; then
    echo "DMS replication task started successfully"
    cat business_all_contacts.txt
else
    echo "Error starting DMS replication task"
    cat business_all_contacts.txt
    exit 1
fi

