.class public Lcom/xiaomi/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/xiaomi/c/d/i;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xiaomi/c/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/b/c;->a:Lcom/xiaomi/c/d/i;

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/c/b/c;->a:Lcom/xiaomi/c/d/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/b/c;->a:Lcom/xiaomi/c/d/i;

    invoke-interface {v0}, Lcom/xiaomi/c/d/i;->a()V

    :cond_0
    const-string v0, "begin read and send perf / event"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/c/b/c;->a:Lcom/xiaomi/c/d/i;

    instance-of v0, v0, Lcom/xiaomi/c/d/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/c/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "event_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/c/b/c;->a:Lcom/xiaomi/c/d/i;

    instance-of v0, v0, Lcom/xiaomi/c/d/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/c/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "perf_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
