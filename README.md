kubevirt Testing
================

A series of workshops for demonstrating the use of `kubevirt`.

Workshops included are:

* [lab-virtual-machine](workshops/lab-virtual-machine) - A workshop
  demonstrating creation of a virtual machine with each workshop session.

To deploy all the workshops run:

```
kubectl apply -f https://github.com/educates/labs-kubevirt-testing/releases/latest/download/workshops.yaml
kubectl apply -f https://github.com/educates/labs-kubevirt-testing/releases/latest/download/trainingportal.yaml
```

Educates version 2.6.0 or later is required to run these workshops.

Note that `kubevirt` must be installed into the Kubernetes cluster where
Educates is deployed.
