build: clean
	mkdir _build;
	berks package;
	mv $$(ls cookbooks-*.tar.gz) _build/cookbooks.tar.gz;
	cp example-node.json ./_build/node.json;
	cp provision_chef.sh ./_build/;
	cd _build && tar zxvf cookbooks.tar.gz;
	rm _build/cookbooks.tar.gz;
	cd _build && tar cvfz ../bundle.tar.gz .;
	tar tzf bundle.tar.gz;
	rm -Rf _build;
clean:
	rm -Rf Berksfile.lock cookbooks-*.tar.gz _build bundle.tar.gz || true;
