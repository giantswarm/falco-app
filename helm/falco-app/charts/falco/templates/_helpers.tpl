{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "falco.name" -}}
{{- default .Chart.Name .Values.falco.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "falco.fullname" -}}
{{- if .Values.falco.fullnameOverride -}}
{{- .Values.falco.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.falco.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "falco.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "falco.serviceAccountName" -}}
{{- if .Values.falco.serviceAccount.create -}}
    {{ default (include "falco.fullname" .) .Values.falco.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.falco.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Falco image name
*/}}
{{- define "falco.image" -}}
{{- $registryName := .Values.falco.image.registry -}}
{{- $repositoryName := .Values.falco.image.repository -}}
{{- $tag := .Values.falco.image.tag | toString -}}
{{/*
Helm 2.11 supports the assignment of a value to a variable defined in a different scope,
but Helm 2.9 and 2.10 doesn't support it, so we need to implement this if-else logic.
Also, we can't use a single if because lazy evaluation is not an option
*/}}
{{- if .Values.falco.global }}
    {{- if .Values.falco.global.imageRegistry }}
        {{- printf "%s/%s:%s" .Values.falco.global.imageRegistry $repositoryName $tag -}}
    {{- else -}}
        {{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
    {{- end -}}
{{- else -}}
    {{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}
{{- end -}}

{{/*
Extract the unixSocket's directory path
*/}}
{{- define "falco.unixSocketDir" -}}
{{- if .Values.falco.falco.grpc.unixSocketPath -}}
{{- .Values.falco.falco.grpc.unixSocketPath | trimPrefix "unix://" | dir -}}
{{- end -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for rbac.
*/}}
{{- define "rbac.apiVersion" -}}
{{- if .Capabilities.APIVersions.Has "rbac.authorization.k8s.io/v1" }}
{{- print "rbac.authorization.k8s.io/v1" -}}
{{- else -}}
{{- print "rbac.authorization.k8s.io/v1beta1" -}}
{{- end -}}
{{- end -}}