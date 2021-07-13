%:
	@sed -i "s/template/$@/" README.md setup.py
	@sed -i "s/2021-02-27/$(shell date '+%F')/" README.md
	@mv pyscf/template pyscf/$@
	@rm -fr .git Makefile
	@echo "Check whether README.md and setup.py are correctly updated. Update fields like NAME, AUTHOR etc. in setup.py"
	@echo "If all set, initialize the project with"
	@echo "    git init"
	@echo "    git add ."
	@echo "    git commit -m 'Initial commit for extension pyscf-$@'"
