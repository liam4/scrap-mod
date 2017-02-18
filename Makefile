.PHONY: build 11.6 10.2

build:
	rm -rf build/** && make 11.6 && make 10.2

11.6:
	rm -rf build/Scrap.swf; ./gradlew build -Ptarget=11.6 && ln -s build/11.6/Scrap.swf build/Scrap.swf

10.2:
	rm -rf build/ScrapFor10.2.swf; ./gradlew build -Ptarget=10.2 && ln -s build/10.2/Scrap.swf build/ScrapFor10.2.swf
