
all: clean local

local test:
	hugo server --noTimes --cleanDestinationDir

build:
	hugo --noTimes

publish: build
	rsync -avzhe ssh --progress public/ u67664449-nacho@home401307985.1and1-data.host:/

clean:
	find . -name "*~" -delete
