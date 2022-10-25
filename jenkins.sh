#!/bin/bash

#Author- Eric Sotsky
#Date- 10/24/22
#Description- Installation of Jenkins

echo "Your Jenkins Installation will now begin"

# Step 1- Install Java

echo "Java will now be installed"

sudo yum install java-11-openjdk-devel -y01~

# Step 2 Enable the Jenkins Repository

echo "we are nwo going to enable the Jenkins Repository"

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

# Step 3: Install the latest stable version of Jenkins

echo "We will now install the latest version of Jenkins"

sudo yum install jenkins -y

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo systemctl enable jenkins

#Step 4- Adjust the firewall

"Your firewall will now be opened for the necessary ports" 

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload

#Setting Up Jenkins in the Browser

#Step 1
echo " Open the Jenkins Page in the browser"

echo "Launch your google chrome browser an type your IP address followed by the port number 8080

http://your_ip_or_domain:8080 

You will get a screen similar to this:"

#Step 2

echo "In your terminal, use the following command to print the Administrator password that was generated during jenkins installation.

You should see a 32-character long alphanumeric password. Copy the password and paste it into the Administrator password field in the page you have in the browser. Then click on Continue 

 Note: use this command to copy the initial password"

 sudo cat /var/lib/jenkins/secrets/initialAdminPassword

 #Step 3 Install Suggested plugins

 echo " On the screen Customize Jenkins, you will be asked to either Install suggested plugins or Select plugins to install. Click on the Install suggested plugins box and the installation process will start immediately"

#Step 4 Create the first admin user

echo "When the installation will be completed, you will get a form to create the First Admin User. Fill out the form an validate on Save and Continue

Username: utrains

Password: school1

E-mail address: use your own email address (the one in the image is just an example"

#Step 5- Instance Configuration

echo "On the next page you will need to set the URL for the Jenkins instance. The Jenkins URL field will come with a default  value (automatically generated). Just click on Save and Finish"

echo "Jenkins is now ready for use! Click on Start using Jenkins button and you will be automatically be redirected to the Jenkins dashboard

Here you are logged in as the First Admin user you created in a previous step"

fi 
