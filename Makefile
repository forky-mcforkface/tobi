
SRC = $(shell find lib -type f)

test:
	@./node_modules/.bin/mocha \
		--timeout 4s \
		--slow 1s \
		--growl \
		--reporter spec \
		--ui exports

docs: index.html

index.html: $(SRC)
	dox \
		--title "Tobi" \
		--desc "Expressive server-side functional testing with jQuery and jsdom." \
		--ribbon "http://github.com/learnboost/tobi" \
		--private \
		$^ > $@

.PHONY: test docs