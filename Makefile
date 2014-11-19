
LESS=less/style.less
LESS_DEPS=$(LESS) less/variables.less less/mixins.less
CSS=css/style.css

all: install $(CSS)

install:
	bower install

$(CSS): $(LESS_DEPS)
	mkdir -p css
	lessc --compress $(LESS) > $(CSS)

clean:
	rm -r css bower_components
