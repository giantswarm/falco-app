# k8s-metacollector

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.2](https://img.shields.io/badge/AppVersion-0.1.2-informational?style=flat-square)

Install k8s-metacollector to fetch and distribute Kubernetes metadata to Falco instances.

**Homepage:** <https://github.com/falcosecurity/k8s-metacollector>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| The Falco Authors | <cncf-falco-dev@lists.cncf.io> |  |

## Source Code

* <https://github.com/falcosecurity/k8s-metacollector>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | int | `1` | replicaCount is the number of identical copies of the k8s-metacollector. |
| image | object | `{"pullPolicy":"IfNotPresent","pullSecrets":[],"registry":"docker.io","repository":"falcosecurity/k8s-metacollector","tag":""}` | image is the configuration for the k8s-metacollector image. |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy used to determine when a node should attempt to pull the container image. |
| image.pullSecrets | list | `[]` | pullSecects a list of secrets containing credentials used when pulling from private/secure registries. |
| image.registry | string | `"docker.io"` | registry is the image registry to pull from. |
| image.repository | string | `"falcosecurity/k8s-metacollector"` | repository is the image repository to pull from |
| image.tag | string | `""` | tag is image tag to pull. Overrides the image tag whose default is the chart appVersion. |
| nameOverride | string | `""` | nameOverride is the new name used to override the release name used for k8s-metacollector components. |
| fullnameOverride | string | `""` | fullNameOverride same as nameOverride but for the full name. |
| namespaceOverride | string | `""` | namespaceOverride overrides the deployment namespace. It's useful for multi-namespace deployments in combined charts. |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | serviceAccount is the configuration for the service account. |
| serviceAccount.create | bool | `true` | create specifies whether a service account should be created. |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account. |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the full name template. |
| podAnnotations | object | `{}` | podAnnotations are custom annotations to be added to the pod. |
| podLabels | object | `{}` | podLabels are labels to be added to the pod. |
| podSecurityContext | object | `{"fsGroup":1000,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | These settings are override by the ones specified for the container when there is overlap. |
| podSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot when set to true enforces that the specified container runs as a non-root user. |
| podSecurityContext.runAsUser | int | `1000` | runAsUser specifies the user ID (UID) that the containers inside the pod should run as. |
| podSecurityContext.runAsGroup | int | `1000` | runAsGroup specifies the group ID (GID) that the containers inside the pod should run as. |
| podSecurityContext.fsGroup | int | `1000` | fsGroup specifies the group ID (GID) that should be used for the volume mounted within a Pod. |
| containerSecurityContext | object | `{"capabilities":{"drop":["ALL"]}}` | containerSecurityContext holds the security settings for the container. |
| containerSecurityContext.capabilities | object | `{"drop":["ALL"]}` | capabilities fine-grained privileges that can be assigned to processes. |
| containerSecurityContext.capabilities.drop | list | `["ALL"]` | drop drops the given set of privileges. |
| service | object | `{"create":true,"ports":{"broker-grpc":{"port":45000,"protocol":"TCP","targetPort":"broker-grpc"},"health-probe":{"port":8081,"protocol":"TCP","targetPort":"health-probe"},"metrics":{"port":8080,"protocol":"TCP","targetPort":"metrics"}},"type":"ClusterIP"}` | service exposes the k8s-metacollector services to be accessed from within the cluster. ref: https://kubernetes.io/docs/concepts/services-networking/service/ |
| service.create | bool | `true` | enabled specifies whether a service should be created. |
| service.type | string | `"ClusterIP"` | type denotes the service type. Setting it to "ClusterIP" we ensure that are accessible from within the cluster. |
| service.ports | object | `{"broker-grpc":{"port":45000,"protocol":"TCP","targetPort":"broker-grpc"},"health-probe":{"port":8081,"protocol":"TCP","targetPort":"health-probe"},"metrics":{"port":8080,"protocol":"TCP","targetPort":"metrics"}}` | ports denotes all the ports on which the Service will listen. |
| service.ports.metrics | object | `{"port":8080,"protocol":"TCP","targetPort":"metrics"}` | metrics denotes a listening service named "metrics". |
| service.ports.metrics.port | int | `8080` | port is the port on which the Service will listen. |
| service.ports.metrics.targetPort | string | `"metrics"` | targetPort is the port on which the Pod is listening. |
| service.ports.metrics.protocol | string | `"TCP"` | protocol specifies the network protocol that the Service should use for the associated port. |
| service.ports.health-probe | object | `{"port":8081,"protocol":"TCP","targetPort":"health-probe"}` | health-probe denotes a listening service named "health-probe" |
| service.ports.health-probe.port | int | `8081` | port is the port on which the Service will listen. |
| service.ports.health-probe.targetPort | string | `"health-probe"` | targetPort is the port on which the Pod is listening. |
| service.ports.health-probe.protocol | string | `"TCP"` | protocol specifies the network protocol that the Service should use for the associated port. |
| service.ports.broker-grpc | object | `{"port":45000,"protocol":"TCP","targetPort":"broker-grpc"}` | broker-grpc denotes a listening service named "grpc-broker" |
| service.ports.broker-grpc.port | int | `45000` | port is the port on which the Service will listen. |
| service.ports.broker-grpc.targetPort | string | `"broker-grpc"` | targetPort is the port on which the Pod is listening. |
| service.ports.broker-grpc.protocol | string | `"TCP"` | protocol specifies the network protocol that the Service should use for the associated port. |
| serviceMonitor | object | `{"create":false,"interval":"15s","labels":{},"path":"/metrics","relabelings":[],"scheme":"http","scrapeTimeout":"10s","targetLabels":[],"tlsConfig":{}}` | serviceMonitor holds the configuration for the ServiceMonitor CRD. A ServiceMonitor is a custom resource definition (CRD) used to configure how Prometheus should discover and scrape metrics from the k8s-metacollector service. |
| serviceMonitor.create | bool | `false` | create specifies whether a ServiceMonitor CRD should be created for a prometheus operator. https://github.com/coreos/prometheus-operator Enable it only if the ServiceMonitor CRD is installed in your cluster. |
| serviceMonitor.path | string | `"/metrics"` | path at which the metrics are expose by the k8s-metacollector. |
| serviceMonitor.labels | object | `{}` | labels set of labels to be applied to the ServiceMonitor resource. If your Prometheus deployment is configured to use serviceMonitorSelector, then add the right label here in order for the ServiceMonitor to be selected for target discovery. |
| serviceMonitor.interval | string | `"15s"` | interval specifies the time interval at which Prometheus should scrape metrics from the service. |
| serviceMonitor.scheme | string | `"http"` | scheme specifies network protocol used by the metrics endpoint. In this case HTTP. |
| serviceMonitor.tlsConfig | object | `{}` | tlsConfig specifies TLS (Transport Layer Security) configuration for secure communication when scraping metrics from a service. It allows you to define the details of the TLS connection, such as CA certificate, client certificate, and client key. Currently, the k8s-metacollector does not support TLS configuration for the metrics endpoint. |
| serviceMonitor.scrapeTimeout | string | `"10s"` | scrapeTimeout determines the maximum time Prometheus should wait for a target to respond to a scrape request. If the target does not respond within the specified timeout, Prometheus considers the scrape as failed for that target. |
| serviceMonitor.relabelings | list | `[]` | relabelings configures the relabeling rules to apply the target’s metadata labels. |
| serviceMonitor.targetLabels | list | `[]` | targetLabels defines the labels which are transferred from the associated Kubernetes service object onto the ingested metrics. |
| resources | object | `{}` | resources defines the computing resources (CPU and memory) that are allocated to the containers running within the Pod. |
| nodeSelector | object | `{}` | nodeSelector specifies a set of key-value pairs that must match labels assigned to nodes for the Pod to be eligible for scheduling on that node. |
| tolerations | list | `[]` | tolerations are applied to pods and allow them to be scheduled on nodes with matching taints. |
| affinity | object | `{}` | affinity allows pod placement based on node characteristics, or any other custom labels assigned to nodes. |
| healthChecks | object | `{"livenessProbe":{"httpGet":{"path":"/healthz","port":8081},"initialDelaySeconds":45,"periodSeconds":15,"timeoutSeconds":5},"readinessProbe":{"httpGet":{"path":"/readyz","port":8081},"initialDelaySeconds":30,"periodSeconds":15,"timeoutSeconds":5}}` | healthChecks contains the configuration for liveness and readiness probes. |
| healthChecks.livenessProbe | object | `{"httpGet":{"path":"/healthz","port":8081},"initialDelaySeconds":45,"periodSeconds":15,"timeoutSeconds":5}` | livenessProbe is a diagnostic mechanism used to determine wether a container within a Pod is still running and healthy. |
| healthChecks.livenessProbe.httpGet | object | `{"path":"/healthz","port":8081}` | httpGet specifies that the liveness probe will make an HTTP GET request to check the health of the container. |
| healthChecks.livenessProbe.httpGet.path | string | `"/healthz"` | path is the specific endpoint on which the HTTP GET request will be made. |
| healthChecks.livenessProbe.httpGet.port | int | `8081` | port is the port on which the container exposes the "/healthz" endpoint. |
| healthChecks.livenessProbe.initialDelaySeconds | int | `45` | initialDelaySeconds tells the kubelet that it should wait X seconds before performing the first probe. |
| healthChecks.livenessProbe.timeoutSeconds | int | `5` | timeoutSeconds is the number of seconds after which the probe times out. |
| healthChecks.livenessProbe.periodSeconds | int | `15` | periodSeconds specifies the interval at which the liveness probe will be repeated. |
| healthChecks.readinessProbe | object | `{"httpGet":{"path":"/readyz","port":8081},"initialDelaySeconds":30,"periodSeconds":15,"timeoutSeconds":5}` | readinessProbe is a mechanism used to determine whether a container within a Pod is ready to serve traffic. |
| healthChecks.readinessProbe.httpGet | object | `{"path":"/readyz","port":8081}` | httpGet specifies that the readiness probe will make an HTTP GET request to check whether the container is ready. |
| healthChecks.readinessProbe.httpGet.path | string | `"/readyz"` | path is the specific endpoint on which the HTTP GET request will be made. |
| healthChecks.readinessProbe.httpGet.port | int | `8081` | port is the port on which the container exposes the "/readyz" endpoint. |
| healthChecks.readinessProbe.initialDelaySeconds | int | `30` | initialDelaySeconds tells the kubelet that it should wait X seconds before performing the first probe. |
| healthChecks.readinessProbe.timeoutSeconds | int | `5` | timeoutSeconds is the number of seconds after which the probe times out. |
| healthChecks.readinessProbe.periodSeconds | int | `15` | periodSeconds specifies the interval at which the readiness probe will be repeated. |
| grafana | object | `{"dashboards":{"configMaps":{"collector":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"k8s-metacollector-grafana-dashboard","namespace":""}},"enabled":false}}` | grafana contains the configuration related to grafana. |
| grafana.dashboards | object | `{"configMaps":{"collector":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"k8s-metacollector-grafana-dashboard","namespace":""}},"enabled":false}` | dashboards contains configuration for grafana dashboards. |
| grafana.dashboards.enabled | bool | `false` | enabled specifies whether the dashboards should be deployed. |
| grafana.dashboards.configMaps | object | `{"collector":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"k8s-metacollector-grafana-dashboard","namespace":""}}` | configmaps to be deployed that contain a grafana dashboard. |
| grafana.dashboards.configMaps.collector | object | `{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"k8s-metacollector-grafana-dashboard","namespace":""}` | collector contains the configuration for collector's dashboard. |
| grafana.dashboards.configMaps.collector.name | string | `"k8s-metacollector-grafana-dashboard"` | name specifies the name for the configmap. |
| grafana.dashboards.configMaps.collector.namespace | string | `""` | namespace specifies the namespace for the configmap. |
| grafana.dashboards.configMaps.collector.folder | string | `""` | folder where the dashboard is stored by grafana. |
| grafana.dashboards.configMaps.collector.folderAnnotation | string | `"grafana_dashboard_folder"` | annotation used by grafana |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
