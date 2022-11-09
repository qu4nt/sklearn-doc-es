# Makefile for build spanish scikit-leanr docs (qu4nt version)
#

# You can set these variables from the command line.
SOURCE_DIR   = /home/lino/PersonalProjects/qu4nt/sklearn/sklearn-doc-es/doc/es/
TARGET_DIR   = /home/lino/PersonalProjects/qu4nt/sklearn/scikit-learn-0.24.X/doc/

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html      to make standalone HTML files"
	@echo "  dirhtml   to make HTML files named index.html in directories"
	@echo "  ziphtml   to make a ZIP of the HTML"
	@echo "  pickle    to make pickle files"
	@echo "  json      to make JSON files"


build_doc:
	cp -r $(SOURCE_DIR)* $(TARGET_DIR)locale/es/LC_MESSAGES/
	cd $(TARGET_DIR) && make -e SPHINXOPTS="-D language='es' -a"
	cd $(TARGET_DIR)_build/html/stable && find . -type f -name "*.html" -exec sed -i -- 's/<p class="topic-title">References/<p class="topic-title">Referencias/g' {} + && find . -type f -name "*.html" -exec sed -i -- 's/<p class="topic-title">Examples/<p class="topic-title">Ejemplos/g' {} +