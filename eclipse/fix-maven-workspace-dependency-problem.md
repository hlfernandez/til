# Fix a problem with maven workspace resolution

I have two maven projects in the same workspace so that one depends on the other. For any reason, the workspace resolution feature of the maven plugin fails copying the dependency and marks a project error. 

Altought the project is working properly and `mvn install` works fine, I find this error very annoying. To fix it, I just disabled the workspace resolution (right click on the project and Maven > Disable workspace resolution).