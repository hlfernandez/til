# Temporarily disable password policy

I needed to make the policy very permissive temporarily to create a weak password for a test project. First, one can check the policy-related variables with:

```SQL
SHOW VARIABLES LIKE 'validate_password%';
```

Then, adjust values temporarily to create the user and revert them back:

```SQL
SET GLOBAL validate_password.policy = LOW;
SET GLOBAL validate_password.length = 4;
```
