# Rate limit with iptables

Simple rate limit client using iptables
e.g. Max 10 requests within x seccond period
with automatic reset after x secconds.

> Note to make permanent, have the iptables script
  run at startup.

# Install 

Setup iptables to block requests (change settings to your
rules).

Read the script, then:
```
./rate-limit.sh
```

# Test

From your local laptop:
```
./test.sh
```

# Unintall *Danger*

> **Warning** this will remove **all** iptable rules,
not just the ones you added.

```
#./drop-all.sh
# Are you sture? Remove the '#' to remove ALL iptable rules,
# including rules you didn't add with this script.
```
