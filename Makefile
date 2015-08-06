REBAR?=./rebar3

.PHONY: \
	all \
	clean \
	nuke \
	test

all:
	@$(REBAR) compile

clean:
	@$(REBAR) clean

nuke: clean
	@rm -rf _build

test:
	@$(REBAR) ct
