.class public Lcom/xiaomi/push/service/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/push/service/a/g;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/a/g;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/a/g;->a:Lcom/xiaomi/push/service/a/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/service/a/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/a/g;->a:Lcom/xiaomi/push/service/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/a/g;->a:Lcom/xiaomi/push/service/a/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/a/g;->a:Lcom/xiaomi/push/service/a/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/xiaomi/c/a/a;)V
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/c/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/a/g;->b:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/c/a/e;

    invoke-static {v0, p1}, Lcom/xiaomi/c/c/a;->a(Landroid/content/Context;Lcom/xiaomi/c/a/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/c/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/a/g;->b:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/c/a/d;

    invoke-static {v0, p1}, Lcom/xiaomi/c/c/a;->a(Landroid/content/Context;Lcom/xiaomi/c/a/d;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IJJ)V
    .locals 6

    const-wide/16 v2, 0x0

    if-ltz p1, :cond_0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/a/g;->b:Landroid/content/Context;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;IJJ)Lcom/xiaomi/c/a/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/a/g;->a(Lcom/xiaomi/c/a/a;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "eventMessageType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "eventMessageType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "eventMessageType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/a/g;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/c/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/a/g;->a(Lcom/xiaomi/c/a/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0x138a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/16 v3, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0xfa2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
