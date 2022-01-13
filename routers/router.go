package routers

import (
	"github.com/astaxie/beego"
	"k8-web-terminal/controllers"
)

//api/nodes/containers?node=172.16.0.143
func init() {
	beego.Include(&controllers.MainController{})
	beego.Router("/container/terminal/shell/ws", &controllers.TSockjs{}, "get:ServeHTTP")

	//------------------------------------------------------------------------------------------------------------------
	//beego.Handler("/container/terminal/shell/ws",&controllers.TSockjs{},true)
	//ns := beego.NewNamespace("/api",
	//		beego.NSNamespace("/v1", beego.NSInclude(&controllers.MainController{} ),
	//	),
	//
	//	)
	////注册 namespace
	//beego.AddNamespace(ns)
}
