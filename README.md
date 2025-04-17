# Kubernetes-log-collector

This project show how to retrieve logs from Kubernetes pods (console output), forward them with Filebeat, and process them through Logstash. 

## Project Structure

- **Logstash_conf** : Folder containing Logstash input, filter, and output configurations.
- **filebeat_conf.yml** : Filebeat configuration for reading and forwarding logs.
- **script_kube_retrieve_log.sh** : Bash script to extract logs from Kubernetes.

## Variables

- **In script_kube_retrieve_log.sh** :
```shell
export CONTEXT=my-kube-context        # Kubernetes context
export NAMESPACE=my-namespace         # Namespace of the pod
export MY_APP=my-app-name             # App name
```
- **In 010.logstash_filter.yaml** :
```shell
export MY_APP=my-app-name             # App name
```