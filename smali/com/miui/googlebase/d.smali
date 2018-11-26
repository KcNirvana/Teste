.class final Lcom/miui/googlebase/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "receive request download apk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    iget-object v1, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAw(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAD(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAE(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAx(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/googlebase/a;->bzW()V

    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAw(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "stop due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "stop due to timeout as network disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/d;->bdx:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
