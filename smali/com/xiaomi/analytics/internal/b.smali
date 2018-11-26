.class final Lcom/xiaomi/analytics/internal/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bnM:Lcom/xiaomi/analytics/internal/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/analytics/internal/o;->bMj(Lcom/xiaomi/analytics/internal/o;J)J

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/o;->bMk(Lcom/xiaomi/analytics/internal/o;Z)Z

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMa(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bLW(Lcom/xiaomi/analytics/internal/o;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/analytics/internal/o;->bMD(Lcom/xiaomi/analytics/internal/o;J)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/o;->bMB(Lcom/xiaomi/analytics/internal/o;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMi(Lcom/xiaomi/analytics/internal/o;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "pending dex is null, unregister"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v2, "mScreenReceiver onReceive e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/b;->bnM:Lcom/xiaomi/analytics/internal/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/o;->bMk(Lcom/xiaomi/analytics/internal/o;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
