.class Lcom/ali/user/mobile/login/ui/z;
.super Ljava/lang/Object;
.source "LoginQuerypwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/z;->b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/z;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/z;->b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/z;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->access$200(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V

    return-void
.end method
