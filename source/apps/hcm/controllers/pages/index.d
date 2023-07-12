module apps.hcm.controllers.pages.index;

import apps.hcm;
@safe:

class DIndexPageController : DPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(HCMIndexView(this));
  }
}
mixin(ControllerCalls!("IndexPageController"));
