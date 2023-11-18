
To Show My Pipeline Project. 

- Im going to use Git/GitLab to version control and webhook to pull its commits to Jenkins server.
- Jenkins ans Sonarquibe will do the application test. Jenkins will start Ansible Playbooks.
- Ansible will build Docker images (with new commit files), Tagging, and pushing to Registry (Docker Hub/Harbor).
- Ansible will deploy de application to MicroK8s (Kubernetes cluster).
- User will use de application.

  
![image](https://github.com/SpockIsCoding/pipeline/blob/main/pipeline_page-0001.jpg)
