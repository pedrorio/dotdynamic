COMMON_PATH=$(HOME)/Code/homeit
EXECS = backend support firmware frontend infrastructure system

.PHONY: $(EXECS)
all: $(EXECS)

backend:
	mkdir -p $(COMMON_PATH)/backend

	git clone git@gitlab.com:homeit2/backend/documentation.git $(COMMON_PATH)/backend/docs

	git clone git@gitlab.com:homeit2/backend/api-auth.git $(COMMON_PATH)/backend/auth
	git clone git@gitlab.com:homeit2/backend/api-core.git $(COMMON_PATH)/backend/core
	git clone git@gitlab.com:homeit2/backend/billing.git $(COMMON_PATH)/backend/billing

	mkdir -p $(COMMON_PATH)/backend/box
	git clone git@gitlab.com:homeit2/backend/box-configuration.git $(COMMON_PATH)/backend/box/config
	# integrate with config
	git clone git@gitlab.com:homeit2/backend/box-configuration-ws-proxy.git $(COMMON_PATH)/backend/box/config_ws_proxy

	git clone git@gitlab.com:homeit2/backend/box-management.git $(COMMON_PATH)/backend/box/status
	git clone git@gitlab.com:homeit2/backend/box-remote-logger.git $(COMMON_PATH)/backend/box/logger

	# integrate the image servers
	git clone git@gitlab.com:homeit2/backend/boxv0-image-server.git $(COMMON_PATH)/backend/box/image_v0
	git clone git@gitlab.com:homeit2/backend/boxv1-image-server.git $(COMMON_PATH)/backend/box/image_v1

	# move the logic to separate services
	git clone git@gitlab.com:homeit2/backend/broker-management.git $(COMMON_PATH)/backend/adapter

	git clone git@gitlab.com:homeit2/backend/key-management.git $(COMMON_PATH)/backend/keychain
	git clone git@gitlab.com:homeit2/backend/doorkeeper.git $(COMMON_PATH)/backend/doorkeeper

	# integrate with auth
	git clone git@gitlab.com:homeit2/backend/invitations.git $(COMMON_PATH)/backend/invitations
		
	git clone git@gitlab.com:homeit2/backend/integrations.git $(COMMON_PATH)/backend/integrations

	git clone git@gitlab.com:homeit2/backend/nodejs-packages.git $(COMMON_PATH)/backend/common
# 	git clone git@gitlab.com:homeit2/backend/webhooks.git $(COMMON_PATH)/backend/webhooks

frontend:
	mkdir -p $(COMMON_PATH)/frontend
	git clone git@gitlab.com:homeit2/frontend/backoffice.git $(COMMON_PATH)/frontend/backoffice
	git clone git@gitlab.com:homeit2/frontend/boxv1-dashboard.git $(COMMON_PATH)/frontend/box_config
	git clone git@gitlab.com:homeit2/frontend/client-dashboard.git $(COMMON_PATH)/frontend/web_app

firmware:
	mkdir -p $(COMMON_PATH)/firmware/v1
	git clone git@gitlab.com:homeit2/hardware/fw-esp-wroom32.git $(COMMON_PATH)/firmware/v1/esp-wroom32
	git clone git@gitlab.com:homeit2/hardware/fw-keypad-nrf51822.git $(COMMON_PATH)/firmware/v1/keypad-nrf51822l

support:
	mkdir -p $(COMMON_PATH)/support
	git clone git@gitlab.com:homeit2/backend/scripts.git $(COMMON_PATH)/support/scripts

infrastructure:
	mkdir -p $(COMMON_PATH)/infrastructure
	git clone git@gitlab.com:homeit2/backend/api-gateway.git $(COMMON_PATH)/infrastructure/gateway
	git clone git@gitlab.com:homeit2/backend/gke-k8s-config-files.git $(COMMON_PATH)/infrastructure/gke-k8s-config-files
	git clone git@gitlab.com:homeit2/backend/google-cloud-functions.git $(COMMON_PATH)/infrastructure/google-cloud-functions
	git clone git@gitlab.com:homeit2/backend/helm-charts.git $(COMMON_PATH)/infrastructure/helm-charts
	git clone git@gitlab.com:homeit2/backend/cert-manager-resources.git $(COMMON_PATH)/infrastructure/cert-manager-resources

system:
	mkdir -p $(COMMON_PATH)/system