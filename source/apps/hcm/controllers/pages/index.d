module apps.myname.controllers.pages.index;

import apps.myname;
@safe:

class DMYNAMEIndexPageController : DAPPPageController {
  mixin(ControllerThis!("MYNAMEIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(MYNAMEIndexView(this));
  }
}
mixin(ControllerCalls!("MYNAMEIndexPageController"));
