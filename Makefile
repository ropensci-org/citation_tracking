RSCRIPT = Rscript --no-init-file

lookat:
	${RSCRIPT} -e 'source("check_pkg_list.R")'

# No real targets!
.PHONY: lookat
