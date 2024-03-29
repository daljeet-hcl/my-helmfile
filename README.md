# Configuration Management System for Microservices
This is an open source configuration management system designed for managing the configuration properties of a large number of microservices. It allows for flexible and hierarchical management of pod level properties and application properties, and is tested for use with Spring Boot applications.

## Features
* Hierarchical management of pod level properties and application properties
* Support for organizing microservices into groups and environments
* Inheritance model that allows changes made at the root level to propagate down to all microservices
* Easy override of properties at the group, environment, or microservice level
* Tested for use with Spring Boot applications

# Getting Started
There are two ways to use this project, From the terminal of your laptop or from within the target Kubernetes cluster which has ArgoCd or configSync installed for gitops.

If you want to run from the terminal of your laptop, you will need to have the following dependencies installed:

* kubectl
* Helm
* Helmfile

Helmfile is a plugin for Helm that is used to manage Helm releases across multiple environments. To install Helmfile, please refer to the Helmfile documentation.

Once you have installed the dependencies, you can configure the system to manage the properties of your microservices. This can be done either by running the system from the command line using the <b>'helmfile sync'</b>  command, or by configuring it to use with ArgoCD.

If you choose to use the system with ArgoCD, you can implement GitOps principles and pull the configuration from inside your cluster instead of having external access to your cluster. This can help to increase the security of your cluster. For more information on how to run this project with ArgoCD you would need to install and setup ArgoCD and learn how to use it with Helm, For additional configuration help on using it with helmfile and this project please refer https://github.com/travisghansen/argo-cd-helmfile


