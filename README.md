# infra

> This directory contains the infrastructure code for the project.

### For Develompent Environment

- Install [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/)  
- Install [Skaffold](https://skaffold.dev/docs/install/)  
- Install Google SDK [GCP SDK](https://cloud.google.com/sdk/docs/install-sdk?_gl=1*43q58c*_up*MQ..&gclid=Cj0KCQjw8J6wBhDXARIsAPo7QA-wvvz1rePfCbkRB2nnUyZnHX-GbWDblDt9Ycn8skd7URstqGG5bUUaAlGJEALw_wcB&gclsrc=aw.ds&hl=es-419#deb)  

#### Initialiaze google cloud enviroment
- RUN ``` gcloud init ```
- Then log in (si20303022@gmail.com has the cluster), and then select the cloud project: sisrstp
- Now all G-Cloud CLI actions will have the context of that cloud project  
  > * Commands that require authentication will use si20303022@gmail.com by default  
  > * Commands will reference project `sisrstp` by default  

>  Note that you need all the respositories cloned in the top level directory.
> Should look something like:  
>  .  
> ├── Tramoove_app  
> ├── bustruck-service  
> ├── infra  
> └── users-service  

then access to the infra/skaffold directory and run the following command:

```bash

```
