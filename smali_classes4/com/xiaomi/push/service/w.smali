.class final Lcom/xiaomi/push/service/w;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/push/ff;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/ic;

    invoke-direct {v0}, Lcom/xiaomi/push/ic;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/push/iq;->a(Lcom/xiaomi/push/ir;[B)V

    invoke-static {p0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/push/ic;)Lcom/xiaomi/push/ff;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/push/iw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/push/ic;)Lcom/xiaomi/push/ff;
    .locals 4

    :try_start_0
    new-instance p1, Lcom/xiaomi/push/ff;

    invoke-direct {p1}, Lcom/xiaomi/push/ff;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ff;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ff;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ff;->b(Ljava/lang/String;)V

    const-string v0, "SECMSG"

    const-string v1, "message"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/ff;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/hv;

    const/4 v2, 0x0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/push/hv;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/hv;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/hv;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/iq;->a(Lcom/xiaomi/push/ir;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/push/service/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/push/ff;->a([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/xiaomi/push/ff;->a(S)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "try send mi push message. packagename:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/xiaomi/push/ic;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/hg;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ic;
    .locals 2

    new-instance v0, Lcom/xiaomi/push/if;

    invoke-direct {v0}, Lcom/xiaomi/push/if;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/if;->b(Ljava/lang/String;)Lcom/xiaomi/push/if;

    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/if;->c(Ljava/lang/String;)Lcom/xiaomi/push/if;

    invoke-static {}, Lcom/xiaomi/push/gd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/if;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/if;->a(Z)Lcom/xiaomi/push/if;

    sget-object v1, Lcom/xiaomi/push/hg;->i:Lcom/xiaomi/push/hg;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/hg;)Lcom/xiaomi/push/ic;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/hg;)Lcom/xiaomi/push/ic;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/ir<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/push/hg;",
            ")",
            "Lcom/xiaomi/push/ic;"
        }
    .end annotation

    invoke-static {p2}, Lcom/xiaomi/push/iq;->a(Lcom/xiaomi/push/ir;)[B

    move-result-object p2

    new-instance v0, Lcom/xiaomi/push/ic;

    invoke-direct {v0}, Lcom/xiaomi/push/ic;-><init>()V

    new-instance v1, Lcom/xiaomi/push/hv;

    invoke-direct {v1}, Lcom/xiaomi/push/hv;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, v1, Lcom/xiaomi/push/hv;->a:J

    const-string v2, "fakeid"

    iput-object v2, v1, Lcom/xiaomi/push/hv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ic;->a(Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ic;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/ic;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/push/ic;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/ic;->a(Lcom/xiaomi/push/hg;)Lcom/xiaomi/push/ic;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/ic;->b(Z)Lcom/xiaomi/push/ic;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/ic;->b(Ljava/lang/String;)Lcom/xiaomi/push/ic;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/ic;->a(Z)Lcom/xiaomi/push/ic;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ic;->a(Ljava/lang/String;)Lcom/xiaomi/push/ic;

    return-object v0
.end method

.method private static a(Lcom/xiaomi/push/ic;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ht;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ht;

    iget-object v0, v0, Lcom/xiaomi/push/ht;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ht;

    iget-object v0, v0, Lcom/xiaomi/push/ht;->b:Ljava/util/Map;

    const-string v1, "ext_traffic_source_pkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/push/ic;->b:Ljava/lang/String;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 8

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/al$b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/al$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/al;->a()Lcom/xiaomi/push/service/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/al;->a(Lcom/xiaomi/push/service/al$b;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/bc;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/bc;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/push/service/x;

    const-string v2, "GAID"

    const-wide/32 v3, 0x2a300

    move-object v1, v7

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/x;-><init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k;)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/push/service/bc;->a(Lcom/xiaomi/push/service/bc$a;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ic;)V
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/push/ic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/ic;I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/fm;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/push/fm;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/push/ic;)Lcom/xiaomi/push/ff;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fm;->b(Lcom/xiaomi/push/ff;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/xiaomi/push/fx;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/fx;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/xiaomi/push/fx;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/fx;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/al$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/al$b;->a(Landroid/os/Messenger;)V

    new-instance v0, Lcom/xiaomi/push/service/y;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/al$b;->a(Lcom/xiaomi/push/service/al$b$a;)V

    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;[B)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/fm;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/push/fm;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/push/ff;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fm;->b(Lcom/xiaomi/push/ff;)V

    return-void

    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Lcom/xiaomi/push/fx;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/fx;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/xiaomi/push/fx;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lcom/xiaomi/push/fx;-><init>(Ljava/lang/String;)V

    throw p0
.end method
