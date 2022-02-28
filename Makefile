@helm:
	helm repo add datadog https://helm.datadoghq.com
	helm repo update
	helm template -f values.yaml --output-dir . datadog/datadog
	mkdir -p manifests
	cp -r datadog/templates/* manifests/
	rm -rf datadog
