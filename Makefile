.PHONY = all
all: clean npm_install create_project 

npm_install:
	npm install compass-mixins@latest --loglevel=error

clean:
	rm -rf `cat .gitignore`

create_project:
	mkdir ./django_libsass_compass_mixins
	ln -s ../node_modules/compass-mixins/lib ./django_libsass_compass_mixins/static
	echo "__version__ = '`npm info compass-mixins version`'"  >> ./django_libsass_compass_mixins/__init__.py

dist:
	python setup.py sdist bdist_wheel

dist_upload:
	python setup.py sdist bdist_wheel upload
