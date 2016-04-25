install:
			sudo pip install mako
build:
	python setup.py sdist
	pip uninstall Chameleon -y
	pip install  dist/Chameleon*.*
