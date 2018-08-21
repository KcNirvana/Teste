.class Lcom/ali/user/mobile/login/ui/h;
.super Ljava/lang/Object;
.source "AliUserLoginSixPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/h;->b:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/h;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/h;->b:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/h;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->afterSupplyment(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;)V

    return-void
.end method
