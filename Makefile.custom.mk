SHELL:=/usr/bin/env bash

.PHONY: update-charts
update-charts:
	./hack/update-falco-upstream.sh
