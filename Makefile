UPLOAD_PATH = /var/www/html/kobaryo222.com/blog

test:
	bundle exec jekyll serve

upload:
	jekyll build JEKYLL_ENV=production
	rsync -avr --delete _site/ mikunyan@192.168.10.106:$(UPLOAD_PATH)

upload_remote:
	jekyll build JEKYLL_ENV=production
	rsync -avr --delete _site/ mikunyan@kobaryo222.com:$(UPLOAD_PATH)
