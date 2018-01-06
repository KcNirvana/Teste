.class public Lcom/xiaomi/c/b/a;
.super Lcom/xiaomi/b/a/d/h$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/b/a/d/h$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x18a16

    return v0
.end method

.method public b()Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v1

    const-string v2, "sp_client_report_status"

    const-string v3, "sp_client_report_event_switch_key"

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v1

    const-string v2, "sp_client_report_status"

    const-string v3, "sp_client_report_event_frequency_key"

    const-wide/32 v4, 0x15180

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v2

    const-string v3, "sp_client_report_status"

    const-string v4, "event_last_upload_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, -0x5

    if-lt v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event upload result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/c/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " begin upload event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/c/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/c/b;->a(Landroid/content/Context;)Lcom/xiaomi/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/c/c/b;->b()V

    :cond_0
    return-void
.end method
