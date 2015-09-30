dev:
	jekyll serve -w

site:
	jekyll build

push: site
	(cd _site; git add .; git commit -m "Updating site contents"; git push)
