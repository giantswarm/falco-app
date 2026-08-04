# falcosidekick

![Version: 0.13.1](https://img.shields.io/badge/Version-0.13.1-informational?style=flat-square) ![AppVersion: 2.31.1](https://img.shields.io/badge/AppVersion-2.31.1-informational?style=flat-square)

Connect Falco to your ecosystem

**Homepage:** <https://github.com/falcosecurity/falcosidekick>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Issif | <cncf-falco-dev@lists.cncf.io> |  |

## Source Code

* <https://github.com/falcosecurity/falcosidekick>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | int | `2` | number of running pods |
| image | object | `{"pullPolicy":"IfNotPresent","registry":"docker.io","repository":"falcosecurity/falcosidekick","tag":"2.32.0"}` | number of old history to retain to allow rollback (If not set, default Kubernetes value is set to 10) revisionHistoryLimit: 1 |
| image.registry | string | `"docker.io"` | The image registry to pull from |
| image.repository | string | `"falcosecurity/falcosidekick"` | The image repository to pull from |
| image.tag | string | `"2.32.0"` | The image tag to pull |
| image.pullPolicy | string | `"IfNotPresent"` | The image pull policy |
| podSecurityContext | object | `{"fsGroup":1234,"runAsUser":1234}` | Sidekick pod securityContext |
| securityContext | object | `{}` | Sidekick container securityContext |
| imagePullSecrets | list | `[]` | Secrets for the registry |
| nameOverride | string | `""` | Override name |
| fullnameOverride | string | `""` | Override the name |
| podSecurityPolicy | object | `{"create":false}` | podSecurityPolicy |
| podSecurityPolicy.create | bool | `false` | Whether to create a podSecurityPolicy |
| priorityClassName | string | `""` | Name of the priority class to be used by the Sidekickpods, priority class needs to be created beforehand |
| customLabels | object | `{}` | custom labels to add to all resources |
| customAnnotations | object | `{}` | custom annotations to add to all resources |
| podLabels | object | `{}` | additions labels on the pods |
| podAnnotations | object | `{}` | additions annotations on the pods |
| serviceMonitor.enabled | bool | `false` | enable the deployment of a Service Monitor for the Prometheus Operator. |
| serviceMonitor.additionalLabels | object | `{}` | specify Additional labels to be added on the Service Monitor. |
| serviceMonitor.interval | string | `""` | specify a user defined interval. When not specified Prometheus default interval is used. |
| serviceMonitor.scrapeTimeout | string | `""` | specify a user defined scrape timeout. When not specified Prometheus default scrape timeout is used. |
| serviceMonitor.additionalProperties | object | `{}` | allows setting additional properties on the endpoint such as relabelings, metricRelabelings etc. |
| prometheusRules.enabled | bool | `false` | enable the creation of PrometheusRules for alerting |
| prometheusRules.alerts.warning.enabled | bool | `true` | enable the high rate rule for the warning events |
| prometheusRules.alerts.warning.rate_interval | string | `"5m"` | rate interval for the high rate rule for the warning events |
| prometheusRules.alerts.warning.threshold | int | `0` | threshold for the high rate rule for the warning events |
| prometheusRules.alerts.error.enabled | bool | `true` | enable the high rate rule for the error events |
| prometheusRules.alerts.error.rate_interval | string | `"5m"` | rate interval for the high rate rule for the error events |
| prometheusRules.alerts.error.threshold | int | `0` | threshold for the high rate rule for the error events |
| prometheusRules.alerts.critical.enabled | bool | `true` | enable the high rate rule for the critical events |
| prometheusRules.alerts.critical.rate_interval | string | `"5m"` | rate interval for the high rate rule for the critical events |
| prometheusRules.alerts.critical.threshold | int | `0` | threshold for the high rate rule for the critical events |
| prometheusRules.alerts.alert.enabled | bool | `true` | enable the high rate rule for the alert events |
| prometheusRules.alerts.alert.rate_interval | string | `"5m"` | rate interval for the high rate rule for the alert events |
| prometheusRules.alerts.alert.threshold | int | `0` | threshold for the high rate rule for the alert events |
| prometheusRules.alerts.emergency.enabled | bool | `true` | enable the high rate rule for the emergency events |
| prometheusRules.alerts.emergency.rate_interval | string | `"5m"` | rate interval for the high rate rule for the emergency events |
| prometheusRules.alerts.emergency.threshold | int | `0` | threshold for the high rate rule for the emergency events |
| prometheusRules.alerts.output.enabled | bool | `true` | enable the high rate rule for the errors with the outputs |
| prometheusRules.alerts.output.rate_interval | string | `"5m"` | rate interval for the high rate rule for the errors with the outputs |
| prometheusRules.alerts.output.threshold | int | `0` | threshold for the high rate rule for the errors with the outputs |
| prometheusRules.alerts.additionalAlerts | object | `{}` |  |
| grafana | object | `{"dashboards":{"configMaps":{"falcosidekick":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-grafana-dashboard","namespace":""}},"enabled":false}}` | grafana contains the configuration related to grafana. |
| grafana.dashboards | object | `{"configMaps":{"falcosidekick":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-grafana-dashboard","namespace":""}},"enabled":false}` | dashboards contains configuration for grafana dashboards. |
| grafana.dashboards.enabled | bool | `false` | enabled specifies whether the dashboards should be deployed. |
| grafana.dashboards.configMaps | object | `{"falcosidekick":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-grafana-dashboard","namespace":""}}` | configmaps to be deployed that contain a grafana dashboard. |
| grafana.dashboards.configMaps.falcosidekick | object | `{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-grafana-dashboard","namespace":""}` | falcosidekick contains the configuration for falcosidekick's dashboard. |
| grafana.dashboards.configMaps.falcosidekick.name | string | `"falcosidekick-grafana-dashboard"` | name specifies the name for the configmap. |
| grafana.dashboards.configMaps.falcosidekick.namespace | string | `""` | namespace specifies the namespace for the configmap. |
| grafana.dashboards.configMaps.falcosidekick.folder | string | `""` | folder where the dashboard is stored by grafana. |
| grafana.dashboards.configMaps.falcosidekick.folderAnnotation | string | `"grafana_dashboard_folder"` | annotation used by grafana |
| config.existingSecret | string | `""` | Existing secret with configuration |
| config.extraEnv | list | `[]` | Extra environment variables |
| config.extraArgs | list | `[]` | Extra command-line arguments |
| config.debug | bool | `false` | DEBUG environment variable |
| config.customfields | string | `""` | a list of escaped comma separated custom fields to add to falco events, syntax is "key:value\,key:value" |
| config.templatedfields | string | `""` | a list of escaped comma separated Go templated fields to add to falco events, syntax is "key:template\,key:template" |
| config.customtags | string | `""` | a list of escaped comma separated custom tags to add to falco events, syntax is "tag\,tag" |
| config.bracketreplacer | string | `""` | if not empty, the brackets in keys of Output Fields are replaced |
| config.outputFieldFormat | string | `""` |  |
| config.mutualtlsfilespath | string | `"/etc/certs"` | folder which will used to store client.crt, client.key and ca.crt files for mutual tls for outputs, will be deprecated in the future (default: "/etc/certs") |
| config.mutualtlsclient.certfile | string | `""` | client certification file for mutual TLS client certification, takes priority over mutualtlsfilespath if not empty |
| config.mutualtlsclient.keyfile | string | `""` | client key file for mutual TLS client certification, takes priority over mutualtlsfilespath if not empty |
| config.mutualtlsclient.cacertfile | string | `""` | CA certification file for server certification for mutual TLS authentication, takes priority over mutualtlsfilespath if not empty |
| config.tlsclient.cacertfile | string | `""` | CA certificate file for server certification on TLS connections, appended to the system CA pool if not empty |
| config.tlsserver.deploy | bool | `false` | if true TLS server will be deployed instead of HTTP |
| config.tlsserver.existingSecret | string | `""` | existing secret with server.crt, server.key and ca.crt files for TLS Server |
| config.tlsserver.servercrt | string | `""` | server.crt file for TLS Server |
| config.tlsserver.certfile | string | `"/etc/certs/server/server.crt"` | server certification file path for TLS Server |
| config.tlsserver.serverkey | string | `""` | server.key file for TLS Server |
| config.tlsserver.keyfile | string | `"/etc/certs/server/server.key"` | server key file path for TLS Server |
| config.tlsserver.mutualtls | bool | `false` | if true mutual TLS server will be deployed instead of TLS, deploy also has to be true |
| config.tlsserver.cacrt | string | `""` |  |
| config.tlsserver.cacertfile | string | `"/etc/certs/server/ca.crt"` | CA certification file path for client certification if mutualtls is true |
| config.tlsserver.notlsport | int | `2810` | port to serve http server serving selected endpoints |
| config.tlsserver.notlspaths | string | `"/ping"` | a comma separated list of endpoints, if not empty, and tlsserver.deploy is true, a separate http server will be deployed for the specified endpoints (/ping endpoint needs to be notls for Kubernetes to be able to perform the healthchecks) |
| config.slack.webhookurl | string | `""` | Slack Webhook URL (ex: <https://hooks.slack.com/services/XXXX/YYYY/ZZZZ>), if not `empty`, Slack output is *enabled* |
| config.slack.channel | string | `""` | Slack channel (optionnal) |
| config.slack.footer | string | `""` | Slack Footer |
| config.slack.icon | string | `""` | Slack icon (avatar) |
| config.slack.username | string | `""` | Slack username |
| config.slack.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Slack), `fields` (only fields are displayed in Slack) |
| config.slack.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.slack.messageformat | string | `""` | a Go template to format Slack Text above Attachment, displayed in addition to the output from `slack.outputformat`. If empty, no Text is displayed before Attachment |
| config.rocketchat.webhookurl | string | `""` | Rocketchat Webhook URL (ex: <https://XXXX/hooks/YYYY>), if not `empty`, Rocketchat output is *enabled* |
| config.rocketchat.icon | string | `""` | Rocketchat icon (avatar) |
| config.rocketchat.username | string | `""` | Rocketchat username |
| config.rocketchat.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Rocketcaht), `fields` (only fields are displayed in Rocketchat) |
| config.rocketchat.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.rocketchat.messageformat | string | `""` | a Go template to format Rocketchat Text above Attachment, displayed in addition to the output from `slack.outputformat`. If empty, no Text is displayed before Attachment |
| config.rocketchat.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.rocketchat.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.mattermost.webhookurl | string | `""` | Mattermost Webhook URL (ex: <https://XXXX/hooks/YYYY>), if not `empty`, Mattermost output is *enabled* |
| config.mattermost.footer | string | `""` | Mattermost Footer |
| config.mattermost.icon | string | `""` | Mattermost icon (avatar) |
| config.mattermost.username | string | `""` | Mattermost username |
| config.mattermost.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Slack), `fields` (only fields are displayed in Mattermost) |
| config.mattermost.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.mattermost.messageformat | string | `""` | a Go template to format Mattermost Text above Attachment, displayed in addition to the output from `slack.outputformat`. If empty, no Text is displayed before Attachment |
| config.mattermost.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.mattermost.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.teams.webhookurl | string | `""` | Teams Webhook URL (ex: <https://outlook.office.com/webhook/XXXXXX/IncomingWebhook/YYYYYY>"), if not `empty`, Teams output is *enabled* |
| config.teams.activityimage | string | `""` | Teams section image |
| config.teams.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Teams), `facts` (only facts are displayed in Teams) |
| config.teams.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.datadog.apikey | string | `""` | Datadog API Key, if not `empty`, Datadog output is *enabled* |
| config.datadog.host | string | `""` | Datadog host. Override if you are on the Datadog EU site. Defaults to american site with "<https://api.datadoghq.com>" |
| config.datadog.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.datadoglogs.apikey | string | `""` | Datadog API Key, if not empty, Datadog Logs output is enabled |
| config.datadoglogs.host | string | `""` | Datadog host. Override if you are on the Datadog EU site. Defaults to american site with "https://http-intake.logs.datadoghq.com/" |
| config.datadoglogs.service | string | `""` | The name of the application or service generating the log events. |
| config.datadoglogs.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" (default) |
| config.alertmanager.hostport | string | `""` | Comma separated list of http://{domain or ip}:{port} that will all receive the payload, if not empty, Alertmanager output is enabled |
| config.alertmanager.endpoint | string | `"/api/v1/alerts"` | alertmanager endpoint on which falcosidekick posts alerts, choice is: `"/api/v1/alerts" or "/api/v2/alerts" , default is "/api/v1/alerts"` |
| config.alertmanager.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.alertmanager.expireafter | string | `""` | if set to a non-zero value, alert expires after that time in seconds (default: 0) |
| config.alertmanager.extralabels | string | `""` | comma separated list of labels composed of a ':' separated name and value that is added to the Alerts. Example: my_label_1:my_value_1, my_label_1:my_value_2 |
| config.alertmanager.extraannotations | string | `""` | comma separated list of annotations composed of a ':' separated name and value that is added to the Alerts. Example: my_annotation_1:my_value_1, my_annotation_1:my_value_2 |
| config.alertmanager.customseveritymap | string | `""` | comma separated list of tuple composed of a ':' separated Falco priority and Alertmanager severity that is used to override the severity label associated to the priority level of falco event. Example: debug:value_1,critical:value2. Default mapping: emergency:critical,alert:critical,critical:critical,error:warning,warning:warning,notice:information,informational:information,debug:information. |
| config.alertmanager.dropeventdefaultpriority | string | `"critical"` | default priority of dropped events, values are emergency|alert|critical|error|warning|notice|informational|debug |
| config.alertmanager.dropeventthresholds | string | `"10000:critical, 1000:critical, 100:critical, 10:warning, 1:warning"` | comma separated list of priority re-evaluation thresholds of dropped events composed of a ':' separated integer threshold and string priority. Example: `10000:critical, 100:warning, 1:informational` |
| config.alertmanager.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.alertmanager.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.elasticsearch.hostport | string | `""` | Elasticsearch <http://host:port>, if not `empty`, Elasticsearch is *enabled* |
| config.elasticsearch.index | string | `"falco"` | Elasticsearch index |
| config.elasticsearch.type | string | `"_doc"` | Elasticsearch document type |
| config.elasticsearch.pipeline | string | `""` | Optional ingest pipeline name |
| config.elasticsearch.suffix | string | `"daily"` | Date suffix for index rotation : daily, monthly, annually, none |
| config.elasticsearch.apikey | string | `""` | Use this APIKey to authenticate to Elasticsearch if the APIKey is not empty (default: "") |
| config.elasticsearch.username | string | `""` | Use this username to authenticate to Elasticsearch if the username is not empty |
| config.elasticsearch.password | string | `""` | Use this password to authenticate to Elasticsearch if the password is not empty |
| config.elasticsearch.flattenfields | bool | `false` | Replace . by _ to avoid mapping conflicts, force to true if createindextemplate==true (default: false) |
| config.elasticsearch.createindextemplate | bool | `false` | Create an index template (default: false) |
| config.elasticsearch.numberofshards | int | `3` | Number of shards set by the index template (default: 3) |
| config.elasticsearch.numberofreplicas | int | `3` | Number of replicas set by the index template (default: 3) |
| config.elasticsearch.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.elasticsearch.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.elasticsearch.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.elasticsearch.enablecompression | bool | `false` | if true enables gzip compression for http requests (default: false) |
| config.elasticsearch.maxconcurrentrequests | int | `1` | max number of concurrent http requests (default: 1) |
| config.elasticsearch.batching | object | `{"batchsize":"5242880","enabled":true,"flushinterval":"1s"}` | batching configuration, improves throughput dramatically utilizing _bulk Elasticsearch API |
| config.elasticsearch.batching.enabled | bool | `true` | if true enables batching |
| config.elasticsearch.batching.batchsize | string | `"5242880"` | batch size in bytes (default: 5 MB) (use string to avoid the conversion into float64 by helm) |
| config.elasticsearch.batching.flushinterval | string | `"1s"` | batch fush interval (default: 1s) |
| config.elasticsearch.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.influxdb.hostport | string | `""` | Influxdb <http://host:port>, if not `empty`, Influxdb is *enabled* |
| config.influxdb.database | string | `"falco"` | Influxdb database |
| config.influxdb.organization | string | `""` | Influxdb organization |
| config.influxdb.precision | string | `"ns"` | write precision |
| config.influxdb.user | string | `""` | User to use if auth is *enabled* in Influxdb |
| config.influxdb.password | string | `""` | Password to use if auth is *enabled* in Influxdb |
| config.influxdb.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.influxdb.token | string | `""` | API token to use if auth in enabled in Influxdb (disables user and password) |
| config.influxdb.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.influxdb.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.loki.hostport | string | `""` | Loki <http://host:port>, if not `empty`, Loki is *enabled* |
| config.loki.user | string | `""` | user for Grafana Logs |
| config.loki.apikey | string | `""` | API Key for Grafana Logs |
| config.loki.endpoint | string | `"/loki/api/v1/push"` | Loki endpoint URL path, more info: <https://grafana.com/docs/loki/latest/api/#post-apiprompush> |
| config.loki.tenant | string | `""` | Loki tenant, if not `empty`, Loki tenant is *enabled* |
| config.loki.format | string | `"text"` | Format for the log entry value: json, text (default) |
| config.loki.extralabels | string | `""` | comma separated list of fields to use as labels additionally to rule, source, priority, tags and custom_fields |
| config.loki.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.loki.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.loki.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.loki.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.loki.grafanaDashboard | object | `{"configMap":{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-loki-dashboard-grafana","namespace":""},"enabled":true}` | dashboard for Grafana |
| config.loki.grafanaDashboard.enabled | bool | `true` | enabled specifies whether this dashboard should be deployed. |
| config.loki.grafanaDashboard.configMap | object | `{"folder":"","folderAnnotation":"grafana_dashboard_folder","name":"falcosidekick-loki-dashboard-grafana","namespace":""}` | configmaps to be deployed that contain a grafana dashboard. |
| config.loki.grafanaDashboard.configMap.name | string | `"falcosidekick-loki-dashboard-grafana"` | name specifies the name for the configmap. |
| config.loki.grafanaDashboard.configMap.namespace | string | `""` | namespace specifies the namespace for the configmap. |
| config.loki.grafanaDashboard.configMap.folder | string | `""` | folder where the dashboard is stored by grafana. |
| config.loki.grafanaDashboard.configMap.folderAnnotation | string | `"grafana_dashboard_folder"` | annotation used by grafana |
| config.prometheus.extralabels | string | `""` | comma separated list of fields to use as labels additionally to rule, source, priority, tags and custom_fields |
| config.nats.hostport | string | `""` | NATS "nats://host:port", if not `empty`, NATS is *enabled* |
| config.nats.subjecttemplate | string | `"falco.<priority>.<rule>"` | template for the subject, tokens <priority> and <rule> will be automatically replaced (default: falco.<priority>.<rule>) |
| config.nats.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.nats.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.nats.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.stan.hostport | string | `""` | Stan nats://{domain or ip}:{port}, if not empty, STAN output is *enabled* |
| config.stan.clusterid | string | `""` | Cluster name, if not empty, STAN output is *enabled* |
| config.stan.clientid | string | `""` | Client ID, if not empty, STAN output is *enabled* |
| config.stan.subjecttemplate | string | `"falco.<priority>.<rule>"` | template for the subject, tokens <priority> and <rule> will be automatically replaced (default: falco.<priority>.<rule>) |
| config.stan.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.stan.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.stan.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.aws.useirsa | bool | `true` | Use IRSA, if true, the rolearn value will be used to set the ServiceAccount annotations and not the env var |
| config.aws.rolearn | string | `""` | AWS IAM role ARN for falcosidekick service account to associate with (optionnal if you use EC2 Instance Profile) |
| config.aws.externalid | string | `""` | External id for the role to assume (optional if you use EC2 Instance Profile) |
| config.aws.accesskeyid | string | `""` | AWS Access Key Id (optionnal if you use EC2 Instance Profile) |
| config.aws.secretaccesskey | string | `""` | AWS Secret Access Key (optionnal if you use EC2 Instance Profile) |
| config.aws.region | string | `""` | AWS Region (optionnal if you use EC2 Instance Profile) |
| config.aws.checkidentity | bool | `true` | check the identity credentials, set to false for locale developments |
| config.aws.cloudwatchlogs.loggroup | string | `""` | AWS CloudWatch Logs Group name, if not empty, CloudWatch Logs output is *enabled* |
| config.aws.cloudwatchlogs.logstream | string | `""` | AWS CloudWatch Logs Stream name, if empty, Falcosidekick will try to create a log stream |
| config.aws.cloudwatchlogs.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.lambda.functionname | string | `""` | AWS Lambda Function Name, if not empty, AWS Lambda output is *enabled* |
| config.aws.lambda.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.sns.topicarn | string | `""` | AWS SNS TopicARN, if not empty, AWS SNS output is *enabled* |
| config.aws.sns.rawjson | bool | `false` | Send RawJSON from `falco` or parse it to AWS SNS |
| config.aws.sns.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.sqs.url | string | `""` | AWS SQS Queue URL, if not empty, AWS SQS output is *enabled* |
| config.aws.sqs.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.s3.bucket | string | `""` | AWS S3, bucket name |
| config.aws.s3.prefix | string | `""` | AWS S3, name of prefix, keys will have format: s3://<bucket>/<prefix>/YYYY-MM-DD/YYYY-MM-DDTHH:mm:ss.s+01:00.json |
| config.aws.s3.endpoint | string | `""` | Endpoint URL that overrides the default generated endpoint, use this for S3 compatible APIs |
| config.aws.s3.objectcannedacl | string | `"bucket-owner-full-control"` | Canned ACL (x-amz-acl) to use when creating the object |
| config.aws.s3.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.kinesis.streamname | string | `""` | AWS Kinesis Stream Name, if not empty, Kinesis output is *enabled* |
| config.aws.kinesis.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.aws.securitylake.bucket | string | `""` | Bucket for AWS SecurityLake data, if not empty, AWS SecurityLake output is enabled |
| config.aws.securitylake.region | string | `""` | Bucket Region |
| config.aws.securitylake.prefix | string | `""` | Prefix for keys |
| config.aws.securitylake.accountid | string | `""` | Account ID |
| config.aws.securitylake.interval | int | `5` | Time in minutes between two puts to S3 (must be between 5 and 60min) |
| config.aws.securitylake.batchsize | int | `1000` | Max number of events by parquet file |
| config.aws.securitylake.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.smtp.hostport | string | `""` | "host:port" address of SMTP server, if not empty, SMTP output is *enabled* |
| config.smtp.tls | bool | `true` | use TLS connection (true/false) |
| config.smtp.authmechanism | string | `"plain"` | SASL Mechanisms : plain, oauthbearer, external, anonymous or "" (disable SASL) |
| config.smtp.user | string | `""` | user to access SMTP server |
| config.smtp.password | string | `""` | password to access SMTP server |
| config.smtp.token | string | `""` | OAuthBearer token for OAuthBearer Mechanism |
| config.smtp.identity | string | `""` | identity string for Plain and External Mechanisms |
| config.smtp.trace | string | `""` | trace string for Anonymous Mechanism |
| config.smtp.from | string | `""` | Sender address (mandatory if SMTP output is *enabled*) |
| config.smtp.to | string | `""` | comma-separated list of Recipident addresses, can't be empty (mandatory if SMTP output is *enabled*) |
| config.smtp.outputformat | string | `"html"` | html, text |
| config.smtp.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.opsgenie.apikey | string | `""` | Opsgenie API Key, if not empty, Opsgenie output is *enabled* |
| config.opsgenie.region | `us` or `eu` | `""` | region of your domain |
| config.opsgenie.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.opsgenie.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.opsgenie.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.statsd.forwarder | string | `""` | The address for the StatsD forwarder, in the form <http://host:port>, if not empty StatsD is *enabled* |
| config.statsd.namespace | string | `"falcosidekick."` | A prefix for all metrics |
| config.dogstatsd.forwarder | string | `""` | The address for the DogStatsD forwarder, in the form <http://host:port>, if not empty DogStatsD is *enabled* |
| config.dogstatsd.namespace | string | `"falcosidekick."` | A prefix for all metrics |
| config.dogstatsd.tags | string | `""` | A comma-separated list of tags to add to all metrics |
| config.webhook.address | string | `""` | Webhook address, if not empty, Webhook output is *enabled* |
| config.webhook.method | string | `"POST"` | HTTP method: POST or PUT |
| config.webhook.customHeaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value\,key:value" |
| config.webhook.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.webhook.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.webhook.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.azure.subscriptionID | string | `""` | Azure Subscription ID |
| config.azure.resourceGroupName | string | `""` | Azure Resource Group name |
| config.azure.podIdentityClientID | string | `""` | Azure Identity Client ID |
| config.azure.podIdentityName | string | `""` | Azure Identity name |
| config.azure.workloadIdentityClientID | string | `""` | Azure Workload Identity Client ID |
| config.azure.eventHub.namespace | string | `""` | Name of the space the Hub is in |
| config.azure.eventHub.name | string | `""` | Name of the Hub, if not empty, EventHub is *enabled* |
| config.azure.eventHub.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.discord.webhookurl | string | `""` | Discord WebhookURL (ex: <https://discord.com/api/webhooks/xxxxxxxxxx>...), if not empty, Discord output is *enabled* |
| config.discord.icon | string | `""` | Discord icon (avatar) |
| config.discord.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.gcp.credentials | string | `""` | Base64 encoded JSON key file for the GCP service account |
| config.gcp.workloadIdentityServiceAccount | string | `""` | GCP ServiceAccount used by Workload Identity |
| config.gcp.pubsub.projectid | string | `""` | The GCP Project ID containing the Pub/Sub Topic |
| config.gcp.pubsub.topic | string | `""` | Name of the Pub/Sub topic |
| config.gcp.pubsub.customattributes | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.gcp.pubsub.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.gcp.storage.prefix | string | `""` | Name of prefix, keys will have format: gs://<bucket>/<prefix>/YYYY-MM-DD/YYYY-MM-DDTHH:mm:ss.s+01:00.json |
| config.gcp.storage.bucket | string | `""` | The name of the bucket |
| config.gcp.storage.minimumpriority | string | `"debug"` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.gcp.cloudfunctions.name | string | `""` | The name of the Cloud Function which is in form `projects/<project_id>/locations/<region>/functions/<function_name>` |
| config.gcp.cloudfunctions.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.gcp.cloudrun.endpoint | string | `""` | the URL of the Cloud Run function |
| config.gcp.cloudrun.jwt | string | `""` | JWT for the private access to Cloud Run function |
| config.gcp.cloudrun.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.googlechat.webhookurl | string | `""` | Google Chat Webhook URL (ex: <https://chat.googleapis.com/v1/spaces/XXXXXX/YYYYYY>), if not `empty`, Google Chat output is *enabled* |
| config.googlechat.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Google chat) |
| config.googlechat.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.googlechat.messageformat | string | `""` | a Go template to format Google Chat Text above Attachment, displayed in addition to the output from `config.googlechat.outputformat`. If empty, no Text is displayed before Attachment |
| config.kafka.hostport | string | `""` | comma separated list of Apache Kafka bootstrap nodes for establishing the initial connection to the cluster (ex: localhost:9092,localhost:9093). Defaults to port 9092 if no port is specified after the domain, if not empty, Kafka output is *enabled* |
| config.kafka.topic | string | `""` | Name of the topic, if not empty, Kafka output is enabled |
| config.kafka.sasl | string | `""` | SASL authentication mechanism, if empty, no authentication (PLAIN|SCRAM_SHA256|SCRAM_SHA512) |
| config.kafka.tls | bool | `false` | Use TLS for the connections |
| config.kafka.username | string | `""` | use this username to authenticate to Kafka via SASL |
| config.kafka.password | string | `""` | use this password to authenticate to Kafka via SASL |
| config.kafka.async | bool | `false` | produce messages without blocking |
| config.kafka.requiredacks | string | `"NONE"` | number of acknowledges from partition replicas required before receiving |
| config.kafka.compression | string | `"NONE"` | enable message compression using this algorithm, no compression (GZIP|SNAPPY|LZ4|ZSTD|NONE) |
| config.kafka.balancer | string | `"round_robin"` | partition balancing strategy when producing |
| config.kafka.topiccreation | bool | `false` | auto create the topic if it doesn't exist |
| config.kafka.clientid | string | `""` | specify a client.id when communicating with the broker for tracing |
| config.kafka.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.pagerduty.routingkey | string | `""` | Pagerduty Routing Key, if not empty, Pagerduty output is *enabled* |
| config.pagerduty.region | string | `"us"` | Pagerduty Region, can be 'us' or 'eu' |
| config.pagerduty.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.kubeless.function | string | `""` | Name of Kubeless function, if not empty, EventHub is *enabled* |
| config.kubeless.namespace | string | `""` | Namespace of Kubeless function (mandatory) |
| config.kubeless.port | int | `8080` | Port of service of Kubeless function. Default is `8080` |
| config.kubeless.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.kubeless.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.kubeless.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.openfaas.functionname | string | `""` | Name of OpenFaaS function, if not empty, OpenFaaS is *enabled* |
| config.openfaas.functionnamespace | string | `"openfaas-fn"` | Namespace of OpenFaaS function, "openfaas-fn" (default) |
| config.openfaas.gatewayservice | string | `"gateway"` | Service of OpenFaaS Gateway, "gateway" (default) |
| config.openfaas.gatewayport | int | `8080` | Port of service of OpenFaaS Gateway Default is `8080` |
| config.openfaas.gatewaynamespace | string | `"openfaas"` | Namespace of OpenFaaS Gateway, "openfaas" (default) |
| config.openfaas.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.openfaas.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.openfaas.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.cloudevents.address | string | `""` | CloudEvents consumer http address, if not empty, CloudEvents output is *enabled* |
| config.cloudevents.extension | string | `""` | Extensions to add in the outbound Event, useful for routing |
| config.cloudevents.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.rabbitmq.url | string | `""` | Rabbitmq URL, if not empty, Rabbitmq output is *enabled* |
| config.rabbitmq.queue | string | `""` | Rabbitmq Queue name |
| config.rabbitmq.minimumpriority | string | `"debug"` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.wavefront.endpointtype | string | `""` | Wavefront endpoint type, must be 'direct' or 'proxy'. If not empty, with endpointhost, Wavefront output is *enabled* |
| config.wavefront.endpointhost | string | `""` | Wavefront endpoint address (only the host). If not empty, with endpointhost, Wavefront output is *enabled* |
| config.wavefront.endpointtoken | string | `""` | Wavefront token. Must be used only when endpointtype is 'direct' |
| config.wavefront.endpointmetricport | int | `2878` | Port to send metrics. Only used when endpointtype is 'proxy' |
| config.wavefront.metricname | string | `"falco.alert"` | Metric to be created in Wavefront. Defaults to falco.alert |
| config.wavefront.batchsize | int | `10000` | Wavefront batch size. If empty uses the default 10000. Only used when endpointtype is 'direct' |
| config.wavefront.flushintervalseconds | int | `1` | Wavefront flush interval in seconds. Defaults to 1 |
| config.wavefront.minimumpriority | string | `"debug"` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.grafana.hostport | string | `""` | <http://{domain> or ip}:{port}, if not empty, Grafana output is *enabled* |
| config.grafana.apikey | string | `""` | API Key to authenticate to Grafana, if not empty, Grafana output is *enabled* |
| config.grafana.dashboardid | string | `""` | annotations are scoped to a specific dashboard. Optionnal. |
| config.grafana.panelid | string | `""` | annotations are scoped to a specific panel. Optionnal. |
| config.grafana.allfieldsastags | bool | `false` | if true, all custom fields are added as tags (default: false) |
| config.grafana.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.grafana.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.grafana.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.grafana.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.grafanaoncall.webhookurl | string | `""` | if not empty, Grafana OnCall output is enabled |
| config.grafanaoncall.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.grafanaoncall.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.grafanaoncall.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.grafanaoncall.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.fission.function | string | `""` | Name of Fission function, if not empty, Fission is enabled |
| config.fission.routernamespace | string | `"fission"` | Namespace of Fission Router, "fission" (default) |
| config.fission.routerservice | string | `"router"` | Service of Fission Router, "router" (default) |
| config.fission.routerport | int | `80` | Port of service of Fission Router |
| config.fission.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.fission.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.fission.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.yandex.accesskeyid | string | `""` | yandex access key |
| config.yandex.secretaccesskey | string | `""` | yandex secret access key |
| config.yandex.region | string | `""` | yandex storage region (default: ru-central-1) |
| config.yandex.s3.endpoint | string | `""` | yandex storage endpoint (default: https://storage.yandexcloud.net) |
| config.yandex.s3.bucket | string | `""` | Yandex storage, bucket name |
| config.yandex.s3.prefix | string | `""` | name of prefix, keys will have format: s3://<bucket>/<prefix>/YYYY-MM-DD/YYYY-MM-DDTHH:mm:ss.s+01:00.json |
| config.yandex.s3.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.yandex.datastreams.endpoint | string | `""` | yandex data streams endpoint (default: https://yds.serverless.yandexcloud.net) |
| config.yandex.datastreams.streamname | string | `""` | stream name in format /${region}/${folder_id}/${ydb_id}/${stream_name} |
| config.yandex.datastreams.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.kafkarest.address | string | `""` | The full URL to the topic (example "http://kafkarest:8082/topics/test") |
| config.kafkarest.version | int | `2` | Kafka Rest Proxy API version 2|1 (default: 2) |
| config.kafkarest.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.kafkarest.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.kafkarest.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.syslog.host | string | `""` | Syslog Host, if not empty, Syslog output is *enabled* |
| config.syslog.port | string | `""` | Syslog endpoint port number |
| config.syslog.protocol | string | `"tcp"` | Syslog transport protocol. It can be either "tcp" or "udp" |
| config.syslog.format | string | `"json"` | Syslog payload format. It can be either "json" or "cef" |
| config.syslog.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.cliq.webhookurl | string | `""` | Zoho Cliq Channel URL (ex: <https://cliq.zoho.eu/api/v2/channelsbyname/XXXX/message?zapikey=YYYY>), if not empty, Cliq Chat output is *enabled* |
| config.cliq.icon | string | `""` | Cliq icon (avatar) |
| config.cliq.useemoji | bool | `true` | Prefix message text with an emoji |
| config.cliq.outputformat | string | `"all"` | `all` (default), `text` (only text is displayed in Cliq), `fields` (only fields are displayed in Cliq) |
| config.cliq.messageformat | string | `""` | a Go template to format Google Chat Text above Attachment, displayed in addition to the output from `cliq.outputformat`. If empty, no Text is displayed before sections. |
| config.cliq.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.policyreport.enabled | bool | `false` | if true; policyreport output is *enabled* |
| config.policyreport.kubeconfig | string | `"~/.kube/config"` | Kubeconfig file to use (only if falcosidekick is running outside the cluster) |
| config.policyreport.maxevents | int | `1000` | the max number of events that can be in a policyreport |
| config.policyreport.prunebypriority | bool | `false` | if true; the events with lowest severity are pruned first, in FIFO order |
| config.policyreport.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.nodered.address | string | `""` | Node-RED address, if not empty, Node-RED output is enabled |
| config.nodered.user | string | `""` | User if Basic Auth is enabled for 'http in' node in Node-RED |
| config.nodered.password | string | `""` | Password if Basic Auth is enabled for 'http in' node in Node-RED |
| config.nodered.customheaders | string | `""` | Custom headers to add in POST, useful for Authentication, syntax is "key:value\,key:value" |
| config.nodered.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.nodered.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.mqtt.broker | string | `""` | Broker address, can start with tcp:// or ssl://, if not empty, MQTT output is enabled |
| config.mqtt.topic | string | `"falco/events"` | Topic for messages |
| config.mqtt.qos | int | `0` | QOS for messages |
| config.mqtt.retained | bool | `false` | If true, messages are retained |
| config.mqtt.user | string | `""` | User if the authentication is enabled in the broker |
| config.mqtt.password | string | `""` | Password if the authentication is enabled in the broker |
| config.mqtt.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.mqtt.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.zincsearch.hostport | string | `""` | http://{domain or ip}:{port}, if not empty, ZincSearch output is enabled |
| config.zincsearch.index | string | `"falco"` | index |
| config.zincsearch.username | string | `""` | use this username to authenticate to ZincSearch |
| config.zincsearch.password | string | `""` | use this password to authenticate to ZincSearch |
| config.zincsearch.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.zincsearch.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.gotify.hostport | string | `""` | http://{domain or ip}:{port}, if not empty, Gotify output is enabled |
| config.gotify.token | string | `""` | API Token |
| config.gotify.format | string | `"markdown"` | Format of the messages (plaintext, markdown, json) |
| config.gotify.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.gotify.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.tekton.eventlistener | string | `""` | EventListener address, if not empty, Tekton output is enabled |
| config.tekton.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.tekton.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.spyderbat.orguid | string | `""` | Organization to send output to, if not empty, Spyderbat output is enabled |
| config.spyderbat.apikey | string | `""` | Spyderbat API key with access to the organization |
| config.spyderbat.apiurl | string | `"https://api.spyderbat.com"` | Spyderbat API url |
| config.spyderbat.source | string | `"falcosidekick"` | Spyderbat source ID, max 32 characters |
| config.spyderbat.sourcedescription | string | `""` | Spyderbat source description and display name if not empty, max 256 characters |
| config.spyderbat.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.timescaledb.host | string | `""` | TimescaleDB host, if not empty, TImescaleDB output is enabled |
| config.timescaledb.port | int | `5432` | TimescaleDB port (default: 5432) |
| config.timescaledb.user | string | `"postgres"` | Username to authenticate with TimescaleDB |
| config.timescaledb.password | string | `"postgres"` | Password to authenticate with TimescaleDB |
| config.timescaledb.database | string | `""` | TimescaleDB database used |
| config.timescaledb.hypertablename | string | `"falco_events"` | Hypertable to store data events (default: falco_events) See TimescaleDB setup for more info |
| config.timescaledb.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.redis.address | string | `""` | Redis address, if not empty, Redis output is enabled |
| config.redis.password | string | `""` | Password to authenticate with Redis |
| config.redis.database | int | `0` | Redis database number |
| config.redis.storagetype | string | `"list"` | Redis storage type: hashmap or list |
| config.redis.key | string | `"falco"` | Redis storage key name for hashmap, list |
| config.redis.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.telegram.token | string | `""` | telegram bot authentication token |
| config.telegram.chatid | string | `""` | telegram Identifier of the shared chat |
| config.telegram.messagethreadid | string | `""` | Telegram individual chats within the group |
| config.telegram.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.telegram.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.n8n.address | string | `""` | N8N address, if not empty, N8N output is enabled |
| config.n8n.user | string | `""` | Username to authenticate with N8N in basic auth |
| config.n8n.password | string | `""` | Password to authenticate with N8N in basic auth |
| config.n8n.headerauthname | string | `""` | Header Auth Key to authenticate with N8N |
| config.n8n.headerauthvalue | string | `""` | Header Auth Value to authenticate with N8N |
| config.n8n.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.n8n.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.openobserve.hostport | string | `""` | http://{domain or ip}:{port}, if not empty, OpenObserve output is enabled |
| config.openobserve.organizationname | string | `"default"` | Organization name |
| config.openobserve.streamname | string | `"falco"` | Stream name |
| config.openobserve.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.openobserve.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.openobserve.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.openobserve.username | string | `""` | use this username to authenticate to OpenObserve if the username is not empty |
| config.openobserve.password | string | `""` | use this password to authenticate to OpenObserve if the password is not empty |
| config.openobserve.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.dynatrace.apitoken | string | `""` | Dynatrace API token with the "logs.ingest" scope, more info : https://dt-url.net/8543sda, if not empty, Dynatrace output is enabled |
| config.dynatrace.apiurl | string | `""` | Dynatrace API url, use https://ENVIRONMENTID.live.dynatrace.com/api for Dynatrace SaaS and https://YOURDOMAIN/e/ENVIRONMENTID/api for Dynatrace Managed, more info : https://dt-url.net/ej43qge |
| config.dynatrace.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.dynatrace.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.otlp.traces.endpoint | string | `""` | OTLP endpoint in the form of http://{domain or ip}:4318/v1/traces, if not empty, OTLP Traces output is enabled |
| config.otlp.traces.protocol | string | `""` | OTLP protocol http/json, http/protobuf, grpc (default: "" which uses SDK default: http/json) |
| config.otlp.traces.timeout | int | `1000` | OTLP timeout: timeout value in milliseconds (default: "" which uses SDK default: 10000) |
| config.otlp.traces.headers | string | `""` | OTLP headers: list of headers to apply to all outgoing traces in the form of "some-key=some-value,other-key=other-value" (default: "") |
| config.otlp.traces.synced | bool | `false` | Set to true if you want traces to be sent synchronously (default: false) |
| config.otlp.traces.duration | int | `1000` | Artificial span duration in milliseconds (default: 1000) |
| config.otlp.traces.extraenvvars | object | `{}` | Extra env vars (override the other settings) |
| config.otlp.traces.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.otlp.traces.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" |
| config.otlp.metrics.endpoint | string | `""` | OTLP endpoint, typically in the form http{s}://{domain or ip}:4318/v1/metrics |
| config.otlp.metrics.protocol | string | `"grpc"` | OTLP transport protocol to be used for metrics data; it can be "grpc" or "http/protobuf" (default: "grpc") |
| config.otlp.metrics.timeout | int | `1000` | OTLP timeout for outgoing metrics in milliseconds (default: "" which uses SDK default: 10000) |
| config.otlp.metrics.headers | string | `""` | List of headers to apply to all outgoing metrics in the form of "some-key=some-value,other-key=other-value" (default: "") |
| config.otlp.metrics.extraenvvars | list | `[]` | Extra env vars (override the other settings) (default: "") |
| config.otlp.metrics.extraattributes | string | `""` | Comma-separated list of fields to use as labels additionally to source, priority, rule, hostname, tags, k8s_ns_name, k8s_pod_name and custom_fields |
| config.otlp.metrics.checkcert | bool | `true` | Set to false if you want to skip TLS certificate validation (only with https) (default: true) |
| config.otlp.metrics.minimumpriority | string | `""` | Minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" (default: "") |
| config.sumologic.receiverURL | string | `""` | Sumologic HTTP Source URL, if not empty, Sumologic output is enabled |
| config.sumologic.sourceCategory | string | `""` | Override the default Sumologic Source Category |
| config.sumologic.sourceHost | string | `""` | Override the default Sumologic Source Host |
| config.sumologic.name | string | `""` | Override the default Sumologic Source Name |
| config.sumologic.minimumpriority | string | `""` | minimum priority of event for using this output, order is emergency|alert|critical|error|warning|notice|informational|debug or "" (default) |
| config.sumologic.checkcert | bool | `true` | check if ssl certificate of the output is valid (default: true) |
| config.quickwit.hostport | string | `""` | http://{domain or ip}:{port}, if not empty, Quickwit output is enabled |
| config.quickwit.apiendpoint | string | `"/api/v1"` | API endpoint (containing the API version, overideable in case of quickwit behind a reverse proxy with URL rewriting) |
| config.quickwit.index | string | `"falco"` | Index |
| config.quickwit.version | string | `"0.7"` | Version of quickwi |
| config.quickwit.autocreateindex | bool | `false` | Autocreate a falco index mapping if it doesn't exists |
| config.quickwit.customHeaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.quickwit.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.quickwit.mutualtls | bool | `false` | if true, checkcert flag will be ignored (server cert will always be checked) |
| config.quickwit.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.webex.webhookurl | string | `""` | Webex WebhookURL, if not empty, Webex output is enabled |
| config.webex.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.talon.address | string | `""` | Talon address, if not empty, Talon output is enabled |
| config.talon.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| config.talon.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.splunk.host | string | `""` | Hostname of the target Splunk service (ex: http://host:port/services/collector/event) |
| config.splunk.token | string | `""` | Specify the authentication token for the HTTP Event Collector interface. |
| config.splunk.checkcert | bool | `true` | check if ssl certificate of the output is valid |
| config.splunk.customheaders | string | `""` | a list of comma separated custom headers to add, syntax is "key:value,key:value" |
| config.splunk.minimumpriority | string | `""` | minimum priority of event to use this output, order is `emergency\|alert\|critical\|error\|warning\|notice\|informational\|debug or ""` |
| service.type | string | `"ClusterIP"` | Service type |
| service.port | int | `2801` | Service port |
| service.annotations | object | `{"prometheus.io/scrape":"true"}` | Service annotations |
| ingress.enabled | bool | `false` | Whether to create the ingress |
| ingress.ingressClassName | string | `""` | ingress class name |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.hosts | list | `[{"host":"falcosidekick.local","paths":[{"path":"/"}]}]` | Ingress hosts |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| resources | object | `{}` | The resources for falcosdekick pods |
| nodeSelector | object | `{}` | Sidekick nodeSelector field |
| tolerations | list | `[]` | Tolerations for pod assignment |
| affinity | object | `{}` | Affinity for the Sidekick pods |
| extraVolumes | list | `[]` | Extra volumes for sidekick deployment |
| extraVolumeMounts | list | `[]` | Extra volume mounts for sidekick deployment |
| testConnection.nodeSelector | object | `{}` | test connection nodeSelector field |
| testConnection.tolerations | list | `[]` | Tolerations for pod assignment |
| testConnection.affinity | object | `{}` | Affinity for the test connection pod |
| webui.enabled | bool | `false` | enable Falcosidekick-UI |
| webui.replicaCount | int | `2` | number of running pods |
| webui.loglevel | string | `"info"` | Log level ("debug", "info", "warning", "error") |
| webui.ttl | int | `0` | TTL for keys, the syntax in X<unit>, with <unit>: s, m, d, w (0 for no ttl) |
| webui.user | string | `"admin:admin"` | User in format <login>:<password> |
| webui.disableauth | bool | `false` | Disable the basic auth |
| webui.existingSecret | string | `""` | Existing secret with configuration |
| webui.allowcors | bool | `false` | Allow CORS |
| webui.image.registry | string | `"docker.io"` | The web UI image registry to pull from |
| webui.image.repository | string | `"falcosecurity/falcosidekick-ui"` | The web UI image repository to pull from |
| webui.image.tag | string | `"2.2.0"` | The web UI image tag to pull |
| webui.image.pullPolicy | string | `"IfNotPresent"` | The web UI image pull policy |
| webui.initContainer | object | `{"image":{"registry":"docker.io","repository":"redis/redis-stack","tag":"7.2.0-v11"},"resources":{},"securityContext":{}}` | Web UI wait-redis initContainer |
| webui.initContainer.image.registry | string | `"docker.io"` | wait-redis initContainer image registry to pull from |
| webui.initContainer.image.repository | string | `"redis/redis-stack"` | wait-redis initContainer image repository to pull from |
| webui.initContainer.image.tag | string | `"7.2.0-v11"` | wait-redis initContainer image tag to pull |
| webui.initContainer.securityContext | object | `{}` | wait-redis initContainer securityContext |
| webui.initContainer.resources | object | `{}` | wait-redis initContainer resources |
| webui.podSecurityContext | object | `{"fsGroup":1234,"runAsUser":1234}` | Web UI pod securityContext |
| webui.securityContext | object | `{}` | Web UI container securityContext |
| webui.priorityClassName | string | `""` | Name of the priority class to be used by the Web UI pods, priority class needs to be created beforehand |
| webui.podLabels | object | `{}` | additions labels on the pods web UI |
| webui.podAnnotations | object | `{}` | additions annotations on the pods web UI |
| webui.service.type | string | `"ClusterIP"` | The web UI service type |
| webui.service.port | int | `2802` | The web UI service port dor the falcosidekick-ui |
| webui.service.nodePort | int | `30282` | The web UI service nodePort |
| webui.service.targetPort | int | `2802` | The web UI service targetPort |
| webui.service.annotations | object | `{}` | The web UI service annotations (use this to set a internal LB, for example.) |
| webui.ingress.enabled | bool | `false` | Whether to create the Web UI ingress |
| webui.ingress.ingressClassName | string | `""` | ingress class name |
| webui.ingress.annotations | object | `{}` | Web UI ingress annotations |
| webui.ingress.hosts | list | `[{"host":"falcosidekick-ui.local","paths":[{"path":"/"}]}]` | Web UI ingress hosts configuration |
| webui.ingress.tls | list | `[]` | Web UI ingress TLS configuration |
| webui.resources | object | `{}` | The resources for the web UI pods |
| webui.nodeSelector | object | `{}` | Web UI nodeSelector field |
| webui.tolerations | list | `[]` | Tolerations for pod assignment |
| webui.affinity | object | `{}` | Affinity for the Web UI pods |
| webui.externalRedis.enabled | bool | `false` | Enable or disable the usage of an external Redis. Is mutually exclusive with webui.redis.enabled. |
| webui.externalRedis.url | string | `""` | The URL of the external Redis database with RediSearch > v2 |
| webui.externalRedis.password | string | `""` | Set the password of the external Redis |
| webui.externalRedis.port | int | `6379` | The port of the external Redis database with RediSearch > v2 |
| webui.redis.enabled | bool | `true` | Is mutually exclusive with webui.externalRedis.enabled |
| webui.redis.image.registry | string | `"docker.io"` | The web UI Redis image registry to pull from |
| webui.redis.image.repository | string | `"redis/redis-stack"` | The web UI Redis image repository to pull from |
| webui.redis.image.tag | string | `"7.2.0-v11"` | The web UI Redis image tag to pull from |
| webui.redis.image.pullPolicy | string | `"IfNotPresent"` | The web UI image pull policy |
| webui.redis.customConfig | list | `[]` | List of Custom config overrides for Redis |
| webui.redis.existingSecret | string | `""` | Existing secret with configuration |
| webui.redis.password | string | `""` | Set a password for Redis |
| webui.redis.priorityClassName | string | `""` | Name of the priority class to be used by the Web UI Redis pods, priority class needs to be created beforehand |
| webui.redis.customLabels | object | `{}` | custom labels to add to all resources |
| webui.redis.customAnnotations | object | `{}` | custom annotations to add to all resources |
| webui.redis.podLabels | object | `{}` | additions labels on the pods |
| webui.redis.podAnnotations | object | `{}` | additions annotations on the pods |
| webui.redis.storageEnabled | bool | `true` | Enable the PVC for the redis pod |
| webui.redis.storageSize | string | `"1Gi"` | Size of the PVC for the redis pod |
| webui.redis.storageClass | string | `""` | Storage class of the PVC for the redis pod |
| webui.redis.service.type | string | `"ClusterIP"` | The web UI Redis service type (i. e: LoadBalancer) |
| webui.redis.service.port | int | `6379` | The web UI Redis service port dor the falcosidekick-ui |
| webui.redis.service.targetPort | int | `6379` | The web UI Redis service targetPort |
| webui.redis.service.annotations | object | `{}` | The web UI Redis service annotations (use this to set a internal LB, for example.) |
| webui.redis.podSecurityContext | object | `{}` | Web UI Redis pod securityContext |
| webui.redis.securityContext | object | `{}` | Web UI Redis container securityContext |
| webui.redis.resources | object | `{}` | The resources for the redis pod |
| webui.redis.nodeSelector | object | `{}` | Web UI Redis nodeSelector field |
| webui.redis.tolerations | list | `[]` | Tolerations for pod assignment |
| webui.redis.affinity | object | `{}` | Affinity for the Web UI Redis pods |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
