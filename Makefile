S3BUCKET = na.modelica-users.org
CPFLAGS = --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers

dev:
	jekyll serve -w

site:
	jekyll build
