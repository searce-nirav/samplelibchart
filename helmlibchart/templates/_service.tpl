{{ define "helmlibchart.service" }}
apiVersion: v1
kind: Service
metadata:
  name: {{ include "helmlibchart.fullname" . }}
  labels:
    {{- include "helmlibchart.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "helmlibchart.selectorLabels" . | nindent 4 }}
{{- end }}