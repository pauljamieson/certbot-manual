# certbot-manual

To run install certbot on your server: 

    apt-get install certbot
    
After installed run command to manually create certificate

    certbot certonly --manual

Enter your domain name when prompted and press enter.  Do not press enter when you see 
the "Create a file..." dialogue.  

You will need the data and url to run the container.
 * filename = http://your.domain.name/.well-known/acme-challenge/<this random string>
 * filedata = String of characters refered to as just this data
 * Port 80 needs to be open to work.

    docker run -it -p 80:80 certbot-manual <filename> <filedata>
    
Press Enter to continue on the certbot console after docker outputs "Server listening on port 80.".
Certificate should be created in /etc/letsencrypt/live/<domain name>
    
