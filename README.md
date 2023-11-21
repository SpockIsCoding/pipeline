
To Show My Pipeline Project. 

- Im going to use Git/GitLab to version control and webhook to pull its commits to Jenkins server.
- Jenkins ans Sonarquibe will do the application test (quality). Jenkins will start Ansible Playbooks.
  #Jenkins can do de docker build images and deploy to K8s
- Ansible will build Docker images (with new commit files), Tagging, and pushing to Registry (Docker Hub/Harbor).
- Use Kyverno to add a securtiy layer
- Ansible will deploy the application to MicroK8s (Kubernetes cluster).
- User will use the application.

Baremetal servers:

|Hostname| IP| Applications|
|-----------|---|--------------|
|Pi-hole.spocknimoy.me| 172.16.0.250| Pi-hole,Ntp Server,Dns Server|
|Rosinha.spocknimoy.me| 10.10.10.200 | MicroK8s,Docker,Ansible|
|Grilo.spocknimoy.me| 10.10.10.201 | Gitlab|
|Chico.spocknimoy.me| 10.10.10.202 | Rancher,Docker,Jenkins|
|Vicentao.spocknimoy.me| 10.10.10.203|Sonarqube|

  
![image](https://github.com/SpockIsCoding/pipeline/blob/main/pipeline.jpg)
