install:
	sudo pip install mako
build:
	python setup.py sdist
	sudo pip uninstall Chameleon -y
	sudo pip install  dist/Chameleon*.*
