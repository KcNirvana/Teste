.class Lcom/ali/user/mobile/accountbiz/receiver/a;
.super Ljava/lang/Object;
.source "SecurityInitMsgReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/ali/user/mobile/accountbiz/receiver/SecurityInitMsgReceiver;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/accountbiz/receiver/SecurityInitMsgReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/receiver/a;->c:Lcom/ali/user/mobile/accountbiz/receiver/SecurityInitMsgReceiver;

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/receiver/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ali/user/mobile/accountbiz/receiver/a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/receiver/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getSecurityInitService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/receiver/a;->b:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;->securityInit(Landroid/content/Intent;)V

    goto :goto_0
.end method
