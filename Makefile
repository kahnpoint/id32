# Read VERSION and DESCRIPTION from root files
VERSION := $(shell cat VERSION)
DESCRIPTION := $(shell cat DESCRIPTION)

# GENERATE
gen:
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' py/setup.template.py > py/setup.py
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' js/package.template.json > js/package.json
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' rs/Cargo.template.toml > rs/Cargo.toml
	
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' tests/py/requirements.template.txt > tests/py/requirements.txt
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' tests/js/package.template.json > tests/js/package.json
	sed 's/VERSION/$(VERSION)/g; s/DESCRIPTION/$(DESCRIPTION)/g' tests/rs/Cargo.template.toml > tests/rs/Cargo.toml

	# Create READMEs with section headers
	cat README.template.md > README.md
	(echo "\n## Javascript\n"; cat js/js.template.md) >> README.md
	(echo "\n## Python\n"; cat py/py.template.md) >> README.md
	(echo "\n## Rust\n"; cat rs/rs.template.md) >> README.md
	
	cp LICENSE py/LICENSE
	cp LICENSE js/LICENSE
	cp LICENSE rs/LICENSE

# PUBLISH

pub-py:
	cd py && python -m build --sdist && twine upload dist/*
	
pub-rs:
	cd rs && cargo publish

pub-js:
	cd js && npm publish

pub: gen pub-py pub-rs pub-js

# TESTS

test-rs:
	cd tests/rs && cargo run
	
test-py:
	cd tests/py && pip install -r requirements.txt && python test.py

test-js:
	cd tests/js && npm install && npm test

test: test-rs test-py test-js
