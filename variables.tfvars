{{.name}}_name                   = "{{.name}}"
{{.name}}_location               = "{{.location}}"
{{.name}}_dns_prefix             = "{{.dns_prefix}}"
{{.name}}_vm_size                = "{{.vm_size}}"
{{.name}}_os_disk_size_gb        = {{.os_disk_size_gb}}
{{.name}}_primary_min_count      = {{.primary_min_count}}
{{.name}}_primary_max_count      = {{.primary_max_count}}
{{.name}}_secondary_min_count    = {{.secondary_min_count}}
{{.name}}_secondary_max_count    = {{.secondary_max_count}}
{{ .name }}_subnet_id                       =
{{- if eq .environment "dev" -}}
"/subscriptions/d7362f78-3fd1-413c-8adc-149b8f3446c8/resourceGroups/rsg-dev-network-ci-001/providers/Microsoft.Network/virtualNetworks/vnt-dev-ci-001/subnets/snt-dev-web-ci-001"
{{- else if eq .environment "uat" -}}
"/subscriptions/d7362f78-3fd1-413c-8adc-149b8f3446c8/resourceGroups/rsg-uat-network-ci-001/providers/Microsoft.Network/virtualNetworks/vnt-uat-ci-001/subnets/snt-uat-web-ci-001"
{{- else if eq .environment "prod" -}}
"/subscriptions/d7362f78-3fd1-413c-8adc-149b8f3446c8/resourceGroups/rsg-prd-network-ci-001/providers/Microsoft.Network/virtualNetworks/vnt-prd-ci-001/subnets/snt-prd-web-ci-001"
{{- end }}
