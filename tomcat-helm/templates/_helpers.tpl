{{/*
Expand the name of the chart.
*/}}
{{- define "tomcat-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "tomcat-app.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" $name .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Get the current profile values
*/}}
{{- define "tomcat-app.profile" -}}
{{- $profile := .Values.profile }}
{{- index .Values $profile }}
{{- end }}