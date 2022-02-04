# cfwheels-template-hellopages

This app extends the ubiquitous Hello World application by adding a few more framework elements and ultimately diaplays a default page with links to other pages. 

## As an Application

As applications go, this is a very basic appliation. We basically take the Hello World app and add two more static pages and sets up links between the pages. It consists of three view pages, and some route definitions to load up the default page as well as define named routes that are used to build the links between the pages. That's all there is to it.

```
\config
  routes.cfm
\controllers
  Main.cfc
\views
  \main
    index.cfm
```

The routes.cfm file tells the framework what controller action to load as the default root route. If we look inside the routes.cfm page we'll see a line that identifies the root route and where to send the requst. In this app that is identified as `main##one`. Which basically reads as when the root route is called, send the request to the one action of the main controller. In a typical CFWheels request process the controller's action method could run some arbitrary code, make calculation, interact with the database, or whatever else we may need to do, but ultimately it calls the corresponding view for the controller action. If a controller does not exist or the action method of the called controller action does not exist, then the framework is smart enough to skip the controller setup and smiply load up the view file. The one.cfm is that page for our simple app and is located in the `main/` folder inside the `views/` folder. The names one, which is the action method, and main, which is the controller name, are arbitrary and could be anything you like as long as the root route setting is updated to reflect the new names the app will continue to function. The routes.cfm file also defines three named routes which are used to build links at the buttom of the static pages.

## As a Forgbox Package

As a Forgebox package there is some interesting things going on here. The package contains the minimum files needed for this app to work which is basically two folders the `config/` folder and the `views/` folder. Note that in our finall running application both of these folders contain more items and there are a handfull of other folders the framework needs to funciton properly. These folders are pulled in via the two dependencies:

```
"Dependencies":{
  "cfwheels-core":"^2.2",
  "cfwheels-base":"^2.2"
}
```

The core and base files are put into the `wheels/` and `base/` folders respectively acording to these settings.

```
"installPaths":{
  "cfwheels-core":"wheels/",
  "cfwheels-base":"base/"
}
```

The next part of the package that is interesting is that your application files are merged into the base files, and finally the contents of the `base/` folder is copied into the root of your application and the `base/` folder is deleted. This is all acomplished via a script setting in the package:

```
"scripts":{
  "postInstallAll":"rm base/box.json --force && cp config/ base/config/ --recurse && cp views/ base/views/ --recurse && cp base/ ./ --recurse && rm base/ --recurse --force"
}
```

This lets us keep our package limited to just the files needed for our application and allows us to use the package management system provided by Forgebox and Commandbox to pull in the necessary core and base files need to complete the framework.

## To install

To install this package you'll need to have a running CommandBox installation. Then you can install this package with the following:

```
box
mkdir cfwheels-hellodynamic --cd
install cfwheels-template-hellodynamic
```

This could be shortened to a single command run in an empty directory:

```
box install cfwheels-template-hellodynamic
```
