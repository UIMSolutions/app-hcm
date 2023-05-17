module apps.hcm;

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
  import apps.hcm.controllers;
  import apps.hcm.helpers;
  import apps.hcm.tests;
  import apps.hcm.views;
}

DApp hcmApp;
static this() {
  hcmApp = App
    .name("hcmApp")
    .rootPath("/apps/hcm")
    .addRoute(Route("", HTTPMethod.GET, HCMIndexPageController));
    .addRoute(Route("/", HTTPMethod.GET, HCMIndexPageController));
}