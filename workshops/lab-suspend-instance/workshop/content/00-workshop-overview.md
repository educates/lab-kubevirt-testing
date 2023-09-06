---
title: Workshop Overview
---

Wait for virtual machine to be ready.

```examiner:execute-test
name: check-virtual-machine-is-ready
prefix: KubeVirt
title: "Checking virtual machine is ready"
args:
- testing
timeout: 5
retries: .INF
delay: 1
autostart: true
```

Access the virtual machine.

```terminal:execute
command: ssh fedora@testing.{{< param session_namespace >}}
```

Accept the host fingerprint.

```terminal:input
text: yes
```


Exit virtual machine shell.

```terminal:execute
command: exit
```

Suspend virtual machine.

```terminal:execute
session: 2
command: virtctl pause vm testing
```

Check status of virtual machine.

```terminal:execute
session: 2
command: kubectl get vms
```

Confirm that can not access virtual machine.

```terminal:execute
command: ssh fedora@testing.{{< param session_namespace >}}
```

Resume virtual machine.

```terminal:execute
session: 2
command: virtctl unpause vm testing
```

Check status of virtual machine.

```terminal:execute
session: 2
command: kubectl get vms
```

Confirm that can can access virtual machine again.

```terminal:execute
command: ssh fedora@testing.{{< param session_namespace >}}
```
