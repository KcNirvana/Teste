.class final Lcom/miui/googlebase/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/i;->bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/googlebase/i;->bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAB(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": send download apk request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/i;->bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAz(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/googlebase/i;->bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    iget-object v0, p0, Lcom/miui/googlebase/i;->bdC:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-virtual {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V

    goto :goto_0
.end method
