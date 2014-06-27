dev:
	jekyll serve -w

site:
	jekyll build

push: site
	(cd _site; git commit -a -m "Updating site contents"; git push)
