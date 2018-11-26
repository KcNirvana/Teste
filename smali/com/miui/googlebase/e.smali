.class final Lcom/miui/googlebase/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bdy:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/e;->bdy:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/googlebase/e;->bdy:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAx(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/googlebase/a;->bAa(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/googlebase/e;->bdy:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAx(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/googlebase/a;->bAd(J)V

    :cond_0
    return-void
.end method
