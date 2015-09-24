######################################################################
# DOCUMENTATION CREATION
######################################################################

UNAME := $(shell uname)

BROWSER=firefox
ifeq ($(UNAME), Darwin)
BROWSER=open
endif

doc:
	cd docs; make html

publish:
	ghp-import -n -p docs/build/html

view:
	$(BROWSER) docs/build/html/index.html

man: 
	vcluster --help > docs/source/man/man.rst

#
# TODO: include real location of the egs and things
#

clean:
	cd docs; make clean
	rm -rf build dist docs/build .eggs *.egg-info
	rm -rf *.egg-info
	find . -name "*~" -exec rm {} \;
	find . -name "*.pyc" -exec rm {} \;
	echo "clean done"

tag: log
	cm-authors > AUTHORS
	git tag
	@echo "New Tag?"; read TAG; git tag $$TAG; python setup.py install; git commit -m $$TAG --allow-empty; git push origin --tags

rmtag:
	git tag
	@echo "rm Tag?"; read TAG; git tag -d $$TAG; git push origin :refs/tags/$$TAG

######################################################################
# SERVICES
######################################################################

service:
	cd ../nucleus-service; make start

rest:
	cd ../nucleus-service; make view
