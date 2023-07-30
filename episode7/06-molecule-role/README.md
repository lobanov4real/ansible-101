# Create a new role with molecule

```bash
molecule init role myrole
```

Then test it:

```bash
molecule test
```

And test it but leave the container running for debugging:

```bash
molecule converge
```

Set a 'breakpoint' using 'fail:' in the tasks.
