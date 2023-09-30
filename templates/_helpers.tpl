{{ define "ingressHosts" -}}
hosts:
  - host: chart-example.local
    paths:
      - path: /
        pathType: ImplementationSpecific
{{- end }}