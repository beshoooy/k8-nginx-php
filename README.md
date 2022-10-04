# Kubernetes Nginx PHP-FPM App

For learning purpose only don't use on production

### PHP-FPM
PHP-FPM is an implementation of Fast-CGI for PHP with improved capabilities around process management, logging, and high traffic situations.

### Nginx
Nginx is a web server and reverse proxy that’s widely used for high traffic applications. When run in combination with PHP-FPM, Nginx is configured to send requests for .php routes to PHP-FPM to serve the page.

We should upload the application files first, to all worker nodes to the directory /www.

#### Run it all

~~~
bash run.sh
~~~

#### Start Nginx service
~~~
minikube service nginx
~~~

## Results: 

You should see something like that after running the bash files

![Alt Text](https://i.ibb.co/HKW0yp1/k8-nginx.png)


## Author
Created by [@Beshoy Dawood](https://www.linkedin.com/in/beshoy-dawood/) - feel free to contact me and advise as necessary!

© All Right Reserved to [Dimofinf](https://dimofinf.net/) 