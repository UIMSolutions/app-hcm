module apps.myname.views.index;

import apps.myname;
@safe:

class DMYNAMEIndexView : DView {
  mixin(ViewThis!("MYNAMEIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DMYNAMEIndexView~":DMYNAMEIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP myname -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("MYNAMEIndexView"));
