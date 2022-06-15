

## Prerequisites 
- Need to create a service account
https://cloud.google.com/iam/docs/creating-managing-service-accounts#creating
- Need to grant permissions as below to that service account 

  ![image](https://user-images.githubusercontent.com/26404622/173893551-7868b24d-fece-4675-b9a5-cce38580e9a7.png)


## Architecture of the solution

![image](https://user-images.githubusercontent.com/26404622/173892585-b1efadd0-084c-40eb-8b6a-ea5fabd686c9.png)

## How The github workflow Starts with
- Can start with manually using below url 
https://github.com/harsharachith/servian-tech-challenge/actions/workflows/google.yaml

- Or it will trigger as the file change on gke_tf , worker_nodes , sqldb folders 
