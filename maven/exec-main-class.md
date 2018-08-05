# Execute main class

I want to run a main class of a maven project. To do that, simply run `mvn exec:java -Dexec.mainClass="my.main.Class"`. To pass arguments, add `-Dexec.args="argument1"` to the command.

If there is only one main class, then the property `exec.MainClass` can be added to the `pom.xml`:

```maven
<properties>
  <exec.mainClass>my.main.Class</exec.mainClass>
</properties>
```

And then run it from the command line with:

```bash
mvn exec:java
```

Finally, the `pl` can be used to specify the module in a maven multi-module project.