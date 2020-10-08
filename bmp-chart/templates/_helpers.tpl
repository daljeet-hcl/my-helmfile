
{{- define "bmp-chart.APP_API_NAME" -}}
{{- printf "%s-%s" .Values.APP_API_NAME .Values.env }}
{{- end -}}