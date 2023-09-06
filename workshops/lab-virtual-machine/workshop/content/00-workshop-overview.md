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
