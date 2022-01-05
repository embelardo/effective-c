COMPILER := cc -g

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

run: ## Run ./a.out
	./a.out

# Chapter 1: Getting Started with C ###########################################

hello: ## Compile Listing 1-1
	$(COMPILER) hello.c

# Chapter 2: Objects, Functions, and Types ####################################

swap: ## Compile Listing 2-1
	$(COMPILER) swap.c

count: ## Compile Listing 2-6
	$(COMPILER) count.c

.PHONY: help run hello swap count
