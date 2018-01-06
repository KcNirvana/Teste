.class final Lcom/xiaomi/push/service/af;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/f/b;
    .locals 2

    new-instance v0, Lcom/xiaomi/j/a/ag;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ag;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    invoke-static {p0}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/s;Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lcom/xiaomi/f/b;
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/xiaomi/push/service/s;Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lcom/xiaomi/f/b;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/xiaomi/f/b;

    invoke-direct {v0}, Lcom/xiaomi/f/b;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/f/b;->a(I)V

    iget-object v1, p0, Lcom/xiaomi/push/service/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/f/b;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/j/a/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/f/b;->b(Ljava/lang/String;)V

    const-string v1, "SECMSG"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/f/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/s;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    const/4 v3, 0x0

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/j/a/y;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/j/a/y;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/f/b;->a([BLjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/f/b;->a(S)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try send mi push message. packagename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/j/a/ag;
    .locals 2

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aj;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/g/c/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->a(Z)Lcom/xiaomi/j/a/aj;

    sget-object v1, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/af;->a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a;Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a;Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/j/a/a;",
            ")",
            "Lcom/xiaomi/j/a/ag;"
        }
    .end annotation

    invoke-static {p2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/j/a/ag;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ag;-><init>()V

    new-instance v2, Lcom/xiaomi/j/a/y;

    invoke-direct {v2}, Lcom/xiaomi/j/a/y;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/j/a/y;->a:J

    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/j/a/y;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/y;)Lcom/xiaomi/j/a/ag;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/ag;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v1, p3}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/ag;->c(Z)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v1, p0}, Lcom/xiaomi/j/a/ag;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/ag;->a(Z)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v1, p1}, Lcom/xiaomi/j/a/ag;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    return-object v1
.end method

.method private static a(Lcom/xiaomi/j/a/ag;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v0, v0, Lcom/xiaomi/j/a/v;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v0, v0, Lcom/xiaomi/j/a/v;->k:Ljava/util/Map;

    const-string v1, "ext_traffic_source_pkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/s;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/ar$b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/ar$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/ar;->a()Lcom/xiaomi/push/service/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/ar;->a(Lcom/xiaomi/push/service/ar$b;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/j/a/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Lcom/xiaomi/g/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/g/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/push/service/t;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/s;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/s;Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lcom/xiaomi/f/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/g/a;->b(Lcom/xiaomi/f/b;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/ar$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/ar$b;->a(Landroid/os/Messenger;)V

    new-instance v0, Lcom/xiaomi/push/service/ag;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ag;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/ar$b;->a(Lcom/xiaomi/push/service/ar$b$a;)V

    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Lcom/xiaomi/g/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/g/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/f/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/xiaomi/g/a;->b(Lcom/xiaomi/f/b;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/w;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
