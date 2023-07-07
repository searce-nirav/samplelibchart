{{ define "helmlibchart.serviceaccount" }}
{{- if .Values.serviceAccount.create -}}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "helmlibchart.serviceAccountName" . }}
  labels:
{{ include "helmlibchart.labels" . | nindent 4 }}
{{- end }}
{{- end }}