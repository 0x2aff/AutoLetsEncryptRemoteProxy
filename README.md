# Example http container to use with

    version: '3'
    services:
	    httpd-site:
	    image: httpd
	    container_name: httpd-site
	    restart: always
	    volumes:
		    - "./data/html:/usr/local/apache2/htdocs/"
	    environment:
		    VIRTUAL_HOST: "<YOURURL.TLD>"
		    LETSENCRYPT_HOST: "<YOURURL.TLD>"
		    LETSENCRYPT_EMAIL: "<MAIL@YOURURL.TLD>"
    networks:
	    default:
		    external:
			    name: webservices
