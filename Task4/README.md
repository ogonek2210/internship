# Task 4 #

<ol>
  <li>Install docker. (Hint: please use VMs or Clouds  for this.
    <p><b>EXTRA 1.1.</b><i> Write bash script for installing Docker. </p></i></li>
  <li>Find, download and run any docker container "hello world". (Learn commands and parameters to create/run docker containers.
<p><b>EXTRA 2.</b> <i>Use image with html page, edit html page and paste text: Username 2022</i></p></li>
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


