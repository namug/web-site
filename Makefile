S3BUCKET = na.modelica-users.org
CPFLAGS = --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers

dev:
	jekyll serve -w

site:
	jekyll build

push: site
	(cd _site; git add .; git commit -m "Updating site contents"; git push)

s3: site
	(cd _site; aws s3 cp . s3://$(S3BUCKET)/ --recursive $(CPFLAGS))
