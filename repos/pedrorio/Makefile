COMMON_PATH=$(HOME)/Code/{username}
EXECS = research backend frontend tecnico

.PHONY: $(EXECS)
all: $(EXECS)

research:
	git clone git@github.com:{username}/media_networks_polarisation.git $(COMMON_PATH)/research/MediaNetworksPolarisation

backend:
	git clone git@github.com:{username}/ideas_app.git $(COMMON_PATH)/backend/IdeasApp
	git clone git@github.com:{username}/movies.git $(COMMON_PATH)/backend/Movies
	git clone git@github.com:{username}/ArtApi.git $(COMMON_PATH)/backend/ArtApi

frontend:
	git clone git@github.com:{username}/kickstarter.git $(COMMON_PATH)/frontend/Kickstarter
	git clone git@github.com:{username}/dashboard.git $(COMMON_PATH)/frontend/Dashboard

tecnico:
	git clone git@github.com:{username}/parallel_and_distributed_computing.git $(COMMON_PATH)/tecnico/ParallelAndDistributedComputing
	git clone git@github.com:{username}/statistical_learning.git $(COMMON_PATH)/tecnico/StatisticalLearning
