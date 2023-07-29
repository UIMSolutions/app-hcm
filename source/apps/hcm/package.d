module apps.hcm;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.hcm.controllers;
  import apps.hcm.helpers;
  import apps.hcm.routers;
  import apps.hcm.tests;
  import apps.hcm.views;
}

static this() {
  // Create app
  auto myApp = App("hcmApp", "apps/hcm");

  // Customize app
  with(myApp) {
    importTranslations;
    addControllers([
      "hcm.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("hcm.index")),
      Route("/", HTTPMethod.GET, controller("hcm.index"))
    );
  }

  // register app
  AppRegistry.register("apps.hcm", myApp);
}