all: sensor_community_airrohr_workshop.html sensor_community_airrohr_workshop.pdf

sensor_community_airrohr_workshop.html: sensor_community_airrohr_workshop.md
	marp  $<

sensor_community_airrohr_workshop.pdf: sensor_community_airrohr_workshop.md
	marp --pdf --allow-local-files $<
