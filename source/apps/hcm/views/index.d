module apps.hcm.views.index;

import apps.hcm;
@safe:

class DHCMIndexView : DView {
  mixin(ViewThis!("HCMIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DHCMIndexView~":DHCMIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP hcm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("HCMIndexView"));
