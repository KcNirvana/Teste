.class final Lcom/xiaomi/analytics/Analytics$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic boN:Lcom/xiaomi/analytics/Analytics;

.field final synthetic boO:I

.field final synthetic boP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/Analytics$1;->boN:Lcom/xiaomi/analytics/Analytics;

    iput p2, p0, Lcom/xiaomi/analytics/Analytics$1;->boO:I

    iput-object p3, p0, Lcom/xiaomi/analytics/Analytics$1;->boP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/analytics/Analytics$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget v4, p0, Lcom/xiaomi/analytics/Analytics$1;->boO:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/analytics/Analytics$1;->boN:Lcom/xiaomi/analytics/Analytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/Analytics;->bMT(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/analytics/Analytics$1;->boP:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaomi/analytics/internal/a/a;->bKp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/analytics/Analytics$1;->boP:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/xiaomi/analytics/internal/a/a;->bKn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    return-object v6
.end method
