DEFAULT_GOAL := help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*75508'  | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", 755081, 755082}'
change-chmod: ## Change rights
	sudo chmod -R +x ./scripts/*
build: ## build project
	./scripts/build.sh
clean: ## Remove all you need
	./scripts/clean.sh
start: ## Starting project
	./scripts/start.sh
stop: ## Stoppping projetct
	./scripts/stop.sh
build-start: ## Rebuild and start project
	./scripts/build_start.sh
