.class final Lcom/miui/antivirus/u;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic awQ:Lcom/miui/antivirus/j;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/u;->awQ:Lcom/miui/antivirus/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/u;->awQ:Lcom/miui/antivirus/j;

    invoke-static {v1}, Lcom/miui/antivirus/j;->aEd(Lcom/miui/antivirus/j;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/antivirus/u;->awQ:Lcom/miui/antivirus/j;

    invoke-static {v2}, Lcom/miui/antivirus/j;->aEe(Lcom/miui/antivirus/j;)Lmiui/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/DangerousInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/antivirus/u;->awQ:Lcom/miui/antivirus/j;

    invoke-static {v2, v0}, Lcom/miui/antivirus/j;->aEg(Lcom/miui/antivirus/j;Lcom/miui/antivirus/model/DangerousInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
