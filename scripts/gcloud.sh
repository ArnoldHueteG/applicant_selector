function activate_gcloud(){
    client_email=$(jq -r '.client_email' $GOOGLE_APPLICATION_CREDENTIALS)
    project_id=$(jq -r '.project_id' $GOOGLE_APPLICATION_CREDENTIALS)
    gcloud auth activate-service-account $client_email --key-file=$GOOGLE_APPLICATION_CREDENTIALS --project=$project_id
}

