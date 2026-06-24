all: check tests

.PHONY: \
	all \
	check \
	clean \
	green \
	init \
	red \
	refactor \
	tests

check:
	lake build

clean:
	rm --force --recursive .lake/build

green: check
	.lake/build/bin/test_kata \
	&& (git add Kata/*.lean tests/*.lean && git commit -m "✅ Pass tests") \
	|| git restore .
	chmod g+w -R .

init: tests
	git config --global --add safe.directory /workdir
	git config --global user.name "Evaristo Rojas"
	git config --global user.email "evaristo.rojas@islas.org.mx"

red: check
	.lake/build/bin/test_kata \
	&& git restore . \
	|| (git add tests/*.lean && git commit -m "🛑🧪 Fail tests")
	chmod g+w -R .

refactor: check
	.lake/build/bin/test_kata \
	&& (git add Kata/*.lean tests/*.lean && git commit -m "♻️  Refactor") \
	|| git restore .
	chmod g+w -R .

tests:
	lake build && .lake/build/bin/test_kata
