module apps.hcm.controllers.pages.error;

import apps.hcm;
@safe:

class DHCMErrorPageController : DPageController {
  mixin(ControllerThis!("HCMErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(HCMErrorView(this));
  }
}
mixin(ControllerCalls!("HCMErrorPageController"));
