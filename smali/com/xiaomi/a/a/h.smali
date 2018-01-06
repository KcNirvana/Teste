.class Lcom/xiaomi/a/a/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;J)J

    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/d;->c(Lcom/xiaomi/a/a/d;Z)Z

    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->l(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    iget-object v1, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->m(Lcom/xiaomi/a/a/d;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;J)V

    :cond_1
    :goto_1
    const-string v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v2}, Lcom/xiaomi/a/a/d;->o(Lcom/xiaomi/a/a/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    const-string v2, "mScreenReceiver onReceive e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->n(Lcom/xiaomi/a/a/d;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "SdkManager"

    const-string v1, "pending dex is null, unregister"

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/a/h;->a:Lcom/xiaomi/a/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/d;->c(Lcom/xiaomi/a/a/d;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
