docker build -t mouse_brains code/ 
docker run -it --rm --name mouse_brains -p 8080:8888 -v "${PWD}":/home/jovyan/work mouse_brains
