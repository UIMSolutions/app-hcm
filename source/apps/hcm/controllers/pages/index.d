module apps.hcm.controllers.pages.index;

import apps.hcm;
@safe:

class DHCMIndexPageController : DAPPPageController {
  mixin(ControllerThis!("HCMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(HCMIndexView(this));
  }
}
mixin(ControllerCalls!("HCMIndexPageController"));
