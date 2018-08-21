.class Lcom/ali/user/mobile/login/ui/t;
.super Ljava/lang/Object;
.source "LoginManualSmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/LoginParam;

.field final synthetic b:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

.field final synthetic c:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/t;->c:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/t;->a:Lcom/ali/user/mobile/login/LoginParam;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/t;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/t;->c:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/t;->a:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/t;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->afterBackgroundLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    return-void
.end method
