module apps.myname;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.myname.controllers;
  import apps.myname.helpers;
  import apps.myname.routers;
  import apps.myname.tests;
  import apps.myname.views;
}

DApp mynameApp;
static this() {
  mynameApp = App
    .name("mynameApp")
    .rootPath("/apps/myname")
    .addRoute(Route("", HTTPMethod.GET, MYNAMEIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, MYNAMEIndexPageController));
}