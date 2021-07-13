# Covid-19 Dashboard
![GitHub](https://camo.githubusercontent.com/ee2de4be68db65d60cde7c99761d493c1d2b35dab5d8675a3dcbd0f776022de1/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6564756172646f7a6f2f77686174736170702d6d65726e3f7374796c653d666c6174)

This build presents the number of Covid-19 cases, recoveries and deaths for each country on an interactive map, along with a table and a chart to illustrate the ongoing trend of new cases.

**Technologies used:**
* React
* Fetch API
* Material UI
* Open Disease Data API (disease.sh)
* React Leaflet (Interactive Map)
* Chartjs (Chart)
* Docker
* Kubernetes

**Features**
* Number of new Covid-19 cases, recoveries and deaths daily for each country 
* Interactive map displaying the above information for each country in by its circle size and a box when clicked on
* Number of live cases by country represented on a table
* Daily worldwide new cases plotted on a chart 
* Progressive WebApp (App can be installed on Home screen) 

### Steps to run the code on your computer (3 different ways)

*** 

* Go to https://covid-19-dashboard-feb61.web.app/

OR

**Docker**

* docker pull tflee/covid-dashboard:latest

  Docker Hub link: https://hub.docker.com/r/tflee/covid-dashboard

* docker run -p 8080:80/tcp -d tflee/covid-dashboard:latest

  Deployed link from Docker: http://localhost:8080

* To stop Docker container, get the container ID first by running: 

  1)	docker ps

  Stop the Docker container with:

  1)	docker stop CONTAINER ID

OR

**Kubernetes**

* kubectl apply -f deployment.yaml

  Check that everything is running with:  
  
  1)	kubectl get pods
  2)	kubectl get service


  * Deployed link from Kubernetes cluster: http://localhost:31000

  * To remove app from Kubernetes cluster, run

    1)	kubectl delete service,deployment covid-dashboard

### Project Directory (excluding node modules)

*** 

```bash
.Covid-19 Dashboard
|   .dockerignore
|   .eslintcache
|   .gitignore
|   Covid-19 Dashboard Sample.png
|   deployment.yaml
|   Dockerfile
|   firebase.json
|   LICENSE
|   package-lock.json
|   package.json
|   README.md
|
+---public
|       Covid-19 Dashboard.png
|       favicon.ico
|       index.html
|       manifest.json
|       robots.txt
|
\---src
        App.css
        App.js
        index.css
        index.js
        InfoBox.css
        InfoBox.js
        LineGraph.js
        Map.css
        Map.js
        reportWebVitals.js
        service-worker.js
        serviceWorkerRegistration.js
        Table.css
        Table.js
        util.js

```
### Screenshots

***

* Home Page

  ![Home Page](https://i.ibb.co/wy75qvG/Home-Page.png)

* Responsive Home Page

  ![Responsive Home Page](https://i.ibb.co/2hnjsmM/Responsive-Home-Page.png)


This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

