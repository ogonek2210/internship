# Task 4 #

<ol>
  <li>Install docker. (Hint: please use VMs or Clouds  for this.
    <p><b>EXTRA 1.1.</b><i> Write bash script for installing Docker. </p></i></li>
    
  <li>Find, download and run any docker container "hello world". (Learn commands and parameters to create/run docker containers.
<p><b>EXTRA 2.1.</b> <i>Use image with html page, edit html page and paste text: Username 2022</i></p></li>
  <li>Taks 3:
    <ol>
      <li> Create your Dockerfile for building a docker image. Your docker image should run any web application (nginx, apache, httpd). Web application should be located inside the docker image. 
      <ol><p><b>EXTRA 3.1.1.</b> <i>For creating docker image use clear basic images (ubuntu, centos, alpine, etc.)</i></p></ol>
      </li>
      <li>Add an environment variable "DEVOPS=<username> to your docker image 
 <ol><p><b>EXTRA 3.2.1.</b> <i>Print environment variable with the value on a web page (if environment variable changed after container restart - the web page must be updated with a new value)</i></p></ol></li>
    </ol>
  </li>
  <li>Push your docker image to docker hub (https://hub.docker.com/). Create any description for your Docker image. 
<b><p>EXTRA 4.1.</b><i> Integrate your docker image and your github repository. Create an automatic deployment for each push. (The Deployment can be in the “Pending” status for 10-20 minutes. This is normal).</i></p></li>
<li> Create docker-compose file. Deploy a few docker containers via one docker-compose file. 
first image - your docker image from the previous step. 5 nodes of the first image should be run;
second image - any java application;
last image - any database image (mysql, postgresql, mongo or etc.).
Second container should be run right after a successful run of a database container.
	<p><b>EXTRA 5.1.</b> <i>Use env files to configure each service.</i></p></li>
</ol>

__Task 1.1:__ Docker is installed via the script - *"Extra 1.1"/script-1.sh*

![docker8](./images/Screenshot_7.jpg)

![docker1](./images/Screenshot_1.jpg)

__Task 2.1:__
1. Pull the "hello-world" image:
*docker pull tutum/hello-world*

2. List images:
*docker image ls*
![docker2](./images/Screenshot_3.jpg)

3. Create image:
   *docker build -t tutum/hello-world .*

4. Build image:
*docker run -p 80:80 -d hello-world*

5. Start the image: *sudo docker run -d -p 80 tutum/hello-world*
   
6. It will print the new container ID (like 31e17b0746e4). Get the allocated external port: *sudo docker port 31e17b0746e4 80*

7. List of all running images:
 ![docker4](./images/Screenshot_4.jpg)

8. Edit the web page inside the existing container: *docker exec -it hardcore_perlman /bin/sh*
   ![docker5](./images/Screenshot_5.jpg)
   ![docker6](./images/Screenshot_6.jpg)

9. Check the localhost:
   ![docker7](./images/Screenshot_2.jpg)


__Extra task 3:__
1. I have created the following *dockerfile* and *index.html* files for the integration *nginx* to the centos 7:
 [Dockerfile3](https://github.com/ogonek2210/DevOps_SandBox/tree/master/Task4/Extra-3-1)

2. Build the docker image:
    *docker build -t task4:latest -f Dockerfile41 .*
    ![docker15](./images/Screenshot_15.jpg)

3. Run the docker image: 
    *docker run -d -p 80:80 task4*
    ![docker16](./images/Screenshot_16.jpg)

4. Output env *DEVOPS*:
    *docker exec 7ad845dcd8d1 bash -c 'echo "$DEVOPS"'*
    ![docker17](./images/Screenshot_17.jpg)

__Extra task 4:__

I just implemented the pipeline for pushing docker image to the Docker hub - [push-image-to-dockerhub.yml](https://github.com/ogonek2210/DevOps_SandBox/blob/master/.github/workflows/push-image-to-dockerhub.yml) and using the dockerfile - 
[Dockefile4-1](https://github.com/ogonek2210/DevOps_SandBox/tree/master/Task4/Extra-4-1)

These is my repository in the DockerHub -
[DockerHub](https://hub.docker.com/r/ogonek22101989/centos7-with-nginx)

__Extra task 5:__

All environment values are saved in the [variables.env](https://github.com/ogonek2210/DevOps_SandBox/blob/master/Task4/Extra-5/variables.env) file and docker compose file here [docker-compose.yml](https://github.com/ogonek2210/DevOps_SandBox/blob/master/Task4/Extra-5/compose.yaml)