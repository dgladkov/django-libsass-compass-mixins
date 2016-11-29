.PHONY = all
all: npm_install clean create_project dist 

npm_install:
	npm install compass-mixins@latest --loglevel=error

clean:
	rm -rf ./*.egg-info ./build ./clean ./dist ./django_libsass_compass_mixins 

create_project:
	mkdir ./django_libsass_compass_mixins
	ln -s ../node_modules/compass-mixins/lib ./django_libsass_compass_mixins/static
	echo "__version__ = '`npm info compass-mixins version`'"  >> ./django_libsass_compass_mixins/__init__.py

dist:
	python setup.py sdist bdist_wheel

upload:
	python setup.py upload
