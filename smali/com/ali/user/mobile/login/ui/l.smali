.class Lcom/ali/user/mobile/login/ui/l;
.super Lcom/ali/user/mobile/login/a;
.source "BaseLoginActivity.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/l;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/l;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;)V
    .locals 2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "biz notifyPacelable to do onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/l;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/l;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginPostFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    return-void
.end method
