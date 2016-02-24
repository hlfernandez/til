# Execute main class

I want to run a main class of a maven project. To do that, I just added property `exec.MainClass` to `pom.xml`:

```maven
<properties>
  <exec.mainClass>my.main.Class</exec.mainClass>
</properties>
```

And then run it from the command line with:

```bash
mvn exec:java
```