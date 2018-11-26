.class final Lcom/miui/antispam/service/b/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aan:Lcom/miui/antispam/service/b/b;

.field final synthetic aao:[Z

.field final synthetic aap:[J

.field final synthetic aaq:[Z

.field final synthetic aar:Landroid/app/DownloadManager;

.field final synthetic aas:Ljava/lang/Runnable;

.field final synthetic aat:Lcom/miui/antispam/service/b/c;


# direct methods
.method constructor <init>(Lcom/miui/antispam/service/b/b;[Z[J[ZLandroid/app/DownloadManager;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/b/f;->aan:Lcom/miui/antispam/service/b/b;

    iput-object p2, p0, Lcom/miui/antispam/service/b/f;->aao:[Z

    iput-object p3, p0, Lcom/miui/antispam/service/b/f;->aap:[J

    iput-object p4, p0, Lcom/miui/antispam/service/b/f;->aaq:[Z

    iput-object p5, p0, Lcom/miui/antispam/service/b/f;->aar:Landroid/app/DownloadManager;

    iput-object p6, p0, Lcom/miui/antispam/service/b/f;->aas:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/miui/antispam/service/b/f;->aat:Lcom/miui/antispam/service/b/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    const-string/jumbo v1, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v4, p0, Lcom/miui/antispam/service/b/f;->aao:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/antispam/service/b/f;->aap:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/miui/antispam/service/b/f;->aao:[Z

    aput-boolean v0, v2, v1

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_4

    iget-object v3, p0, Lcom/miui/antispam/service/b/f;->aao:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    :goto_2
    if-eqz v0, :cond_1

    const-string/jumbo v0, "SmsEngineUpdateManager"

    const-string/jumbo v1, " download finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/service/b/f;->aan:Lcom/miui/antispam/service/b/b;

    iget-object v1, p0, Lcom/miui/antispam/service/b/f;->aaq:[Z

    iget-object v2, p0, Lcom/miui/antispam/service/b/f;->aap:[J

    iget-object v3, p0, Lcom/miui/antispam/service/b/f;->aar:Landroid/app/DownloadManager;

    iget-object v5, p0, Lcom/miui/antispam/service/b/f;->aas:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/miui/antispam/service/b/f;->aat:Lcom/miui/antispam/service/b/c;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/antispam/service/b/b;->adl(Lcom/miui/antispam/service/b/b;[Z[JLandroid/app/DownloadManager;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
