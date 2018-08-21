.class Lcom/ali/user/mobile/login/ui/w;
.super Ljava/lang/Object;
.source "LoginManualSmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/w;->b:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/w;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/w;->b:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/w;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->access$200(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V

    return-void
.end method
