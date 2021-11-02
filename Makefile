-include /opt/basics/common/common.mk

compose-setup: compose-build compose-install

compose:
	docker-compose up

compose-build:
	docker-compose build

compose-install:
	docker-compose run exercises npm install

code-lint:
	# java -jar /opt/checkstyle.jar -c checkstyle.xml modules src

# compile:
	# @(for i in $$(find . -type f -name Main.java); do javac $$(dirname $$i)/*.java ; done)

# clean:
#   @$$(find . -type f -name *.class -delete)

compose-bash:
	docker-compose run exercises bash

compose-test:
	docker-compose run exercises make test
