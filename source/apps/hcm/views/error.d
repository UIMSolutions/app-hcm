module apps.hcm.views.error;

import apps.hcm;
@safe:

class DHCMErrorView : DView {
  mixin(ViewThis!("HCMErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DHCMErrorView~":DHCMErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Hcm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("HCMErrorView"));
