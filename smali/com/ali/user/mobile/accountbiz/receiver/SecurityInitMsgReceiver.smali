.class public Lcom/ali/user/mobile/accountbiz/receiver/SecurityInitMsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityInitMsgReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityInitMsgReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.init"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ali/user/mobile/accountbiz/receiver/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/accountbiz/receiver/a;-><init>(Lcom/ali/user/mobile/accountbiz/receiver/SecurityInitMsgReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "SecurityInitMsgReceiver"

    const-string/jumbo v1, "SecurityInitMsgReceiver.securityInit(intent=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getSecurityInitService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;->updateWalletLoginAuth(Ljava/util/List;)V

    goto :goto_0
.end method
