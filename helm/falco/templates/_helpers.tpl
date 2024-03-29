{{/* vim: set filetype=mustache: */}}
{{/* Expand the name of the chart. */}}
{{- define "falco-helpers.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 50 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
The components in this chart create additional resources that expand the longest created name strings.
The longest name that gets created adds and extra 37 characters, so truncation should be 63-35=26.
*/}}
{{- define "falco-helpers.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 26 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 26 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 26 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Allow the release namespace to be overridden for multi-namespace deployments in combined charts
*/}}
{{- define "falco-helpers.namespace" -}}
  {{- if .Values.namespaceOverride -}}
    {{- .Values.namespaceOverride -}}
  {{- else -}}
    {{- .Release.Namespace -}}
  {{- end -}}
{{- end -}}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "falco-helpers.chartref" -}}
{{- (replace "+" "_" .Chart.Version | printf "%s-%s" .Chart.Name) | trunc 63 -}}
{{- end }}

{{/* Generate basic labels */}}
{{- define "falco-helpers.labels" }}
app: {{ template "falco-helpers.fullname" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.Version }}"
app.kubernetes.io/part-of: {{ template "falco-helpers.name" . }}
chart: {{ template "falco-helpers.chartref" . }}
release: {{ $.Release.Name | quote }}
heritage: {{ $.Release.Service | quote }}
{{- if .Values.commonLabels}}
{{ toYaml .Values.commonLabels }}
{{- end }}
{{- end }}

{{/*
CRD installation / update helpers used by Giant Swarm. These may or may not be used depending on whether any custom logic is needed to  support upgrades.
*/}}
{{- define "falco-helpers.updateLogic" -}}
{{- printf "%s-%s" ( default .Chart.Name .Values.nameOverride | trunc 63 ) "update-logic" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{/*
The team label here only applies to CRD install resources and is to keep the linter happy until we can set this on upstream charts.
*/}}
{{- define "falco-helpers.UpdateLogicAnnotations" -}}
"helm.sh/hook": "pre-install,pre-upgrade"
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded"
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
{{- end -}}

{{/* Create a label which can be used to select any orphaned crd-install hook resources */}}
{{- define "falco-helpers.UpdateLogicSelector" -}}
{{- printf "%s" "crd-install-hook" -}}
{{- end -}}
