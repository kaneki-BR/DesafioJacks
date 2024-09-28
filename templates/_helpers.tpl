{{/*
gerar um fullname pro chart
*/}}
{{- define "desafio-jacks.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Define um name para o chart
*/}}
{{- define "desafio-jacks.name" -}}
{{- .Chart.Name -}}
{{- end -}}
