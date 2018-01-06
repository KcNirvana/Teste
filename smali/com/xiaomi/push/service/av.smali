.class public Lcom/xiaomi/push/service/av;
.super Lcom/xiaomi/push/service/bb$a;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/e/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/av$b;,
        Lcom/xiaomi/push/service/av$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/bb$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/av;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 7

    new-instance v0, Lcom/xiaomi/push/service/av;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/av;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/bb;->a(Lcom/xiaomi/push/service/bb$a;)V

    const-class v6, Lcom/xiaomi/e/f;

    monitor-enter v6

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/e/f;->a(Lcom/xiaomi/e/f$a;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/av$a;

    invoke-direct {v2}, Lcom/xiaomi/push/service/av$a;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/e/f;->a(Landroid/content/Context;Lcom/xiaomi/e/e;Lcom/xiaomi/e/f$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/e/e;Lcom/xiaomi/e/f$b;Ljava/lang/String;)Lcom/xiaomi/e/f;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/av$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/av$b;-><init>(Landroid/content/Context;Lcom/xiaomi/e/e;Lcom/xiaomi/e/f$b;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/d/a$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaomi/push/d/b$b;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/push/d/b$b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/d/b$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/av;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch bucket :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/d/b$b;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/push/service/av;->b:J

    invoke-static {}, Lcom/xiaomi/e/f;->a()Lcom/xiaomi/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/e/f;->d()V

    invoke-virtual {v0}, Lcom/xiaomi/e/f;->f()V

    iget-object v2, p0, Lcom/xiaomi/push/service/av;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->g()Lcom/xiaomi/g/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/g/a;->d()Lcom/xiaomi/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/g/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/e/f;->b(Ljava/lang/String;)Lcom/xiaomi/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/e/b;->d()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaomi/g/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bucket changed, force reconnect"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
