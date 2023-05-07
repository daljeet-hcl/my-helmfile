# my-helmfile
I made this project to mange configuration properties of 2000 plus microservices.
these 2000 plus microservices were divided in to 3 groups
and we have 3 deployment environments, Dev, QA, Production. 
This project helps to provide an inheritance model which is multilevel as well as hierarchichal.
To make is easier for you to understand, you can change a property at the root of the tree in that case that property would be changed for every microservice in all the 3environment and in all the 3 groups.
But suppose you want to override what was defined in the root at the group level or at the environment level or even at the microservice level then also you can do so easily.

what type of properties I am talking about:
for example, you can edit number of pods for each micro-service, the maximum allowed memory for each pod etc.
You can also provide application properties for spring boot applications or any other technology stack that you might be using, I have tested it for spring boot applications.

you can provide the spring boot application properties too in the hierarchy model, and the final properties that would be used by your spring boot application would be a derived from this hierarchial model,
if a property is not found in the microservices properties, it goes up to the hierarchy model like group and environment level to find the value of the property.

Thus to summarize there are two types of properties supported in this hierarchail model.
1. pod level properties.
2. application properties. 

#Configuration Management System for Microservices
This is an open source configuration management system designed for managing the configuration properties of a large number of microservices. It allows for flexible and hierarchical management of pod level properties and application properties, and is tested for use with Spring Boot applications.

##Features
Hierarchical management of pod level properties and application properties
Support for organizing microservices into groups and environments
Inheritance model that allows changes made at the root level to propagate down to all microservices
Easy override of properties at the group, environment, or microservice level
Tested for use with Spring Boot applications

#Getting Started
There are two ways to use this project, From the terminal of your laptop or from within the target Kubernetes cluster which has ArgoCd or configSync installed for gitops.

If you want to run from the terminal of your laptop, you will need to have the following dependencies installed:

kubectl
Helm
Helmfile
Helmfile is a plugin for Helm that is used to manage Helm releases across multiple environments. To install Helmfile, please refer to the Helmfile documentation.

Once you have installed the dependencies, you can configure the system to manage the properties of your microservices. This can be done either by running the system from the command line using the helmfile sync command, or by configuring it to use with ArgoCD.

If you choose to use the system with ArgoCD, you can implement GitOps principles and pull the configuration from inside your cluster instead of having external access to your cluster. This can help to increase the security of your cluster.

For more detailed instructions on getting started with this configuration management system, including how to configure it to work with ArgoCD, please refer to the documentation in the docs folder of the project.

##Contributing
This is an open source project and we welcome contributions from the community. If you would like to contribute, please follow the guidelines in the CONTRIBUTING.md file and submit a pull request.

##License
This configuration management system is released under the MIT License. For more information, please refer to the LICENSE file.
