# Task6 #
Tasks:
1. Installed Jenkins which was installed in a docker container  according to the [article](https://dev.to/ductnn/install-jenkins-with-docker-3lfe).

![plugins-for-jenkins](./images/Screenshot_5.jpg)

2. Installed necessary plugins:
   
   ![plugins-for-jenkis](./images/Screenshot_6.jpg)

3. Configured several 2 build agents. Agents must be run in docker:
   The first agent was created according to the [documentation](https://www.jenkins.io/doc/book/using/using-agents/)

    ![agent1](./images/Screenshot_8.jpg)

    ![agent2](./images/Screenshot_9.jpg)

4. Created a Freestyle project. Which will show the current date as a result of execution:
   
   ![task4](./images/Screenshot_4.jpg)

5. Created Pipeline which will execute docker ps -a in docker agent, running on Jenkins master’s Host:
   
   ![task5](./images/Screenshot_7.jpg)

6. Create Pipeline, which will build artifact using Dockerfile directly from your github repo (use Dockerfile from previous task):

   ![task6-1](./images/Screenshot_10.jpg)

   ![task6-2](./images/Screenshot_3.jpg)
   
7. Pass  variable PASSWORD=QWERTY! To the docker container. Variable must be encrypted!!!
   
   ![task7](./images/Screenshot_2.jpg)

