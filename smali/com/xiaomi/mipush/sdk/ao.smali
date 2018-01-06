.class public Lcom/xiaomi/mipush/sdk/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;,
            Lcom/xiaomi/mipush/sdk/k;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/h/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/b/a/a/c;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v1

    iget-boolean v2, p1, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/j/a/a;Z)Lb/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/k;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/mipush/sdk/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->f()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/j/a/a;Z)Lb/a/a/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/ap;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/j/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/j/a/al;

    invoke-direct {v0}, Lcom/xiaomi/j/a/al;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/j/a/as;

    invoke-direct {v0}, Lcom/xiaomi/j/a/as;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/j/a/aq;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aq;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/j/a/au;

    invoke-direct {v0}, Lcom/xiaomi/j/a/au;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/j/a/ao;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ao;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/j/a/aa;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aa;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/j/a/af;

    invoke-direct {v0}, Lcom/xiaomi/j/a/af;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/j/a/an;

    invoke-direct {v0}, Lcom/xiaomi/j/a/an;-><init>()V

    goto :goto_0

    :pswitch_8
    if-eqz p1, :cond_0

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aj;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/j/a/ab;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ab;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/ab;->a(Z)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/xiaomi/j/a/af;

    invoke-direct {v0}, Lcom/xiaomi/j/a/af;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/j/a/a;",
            ")",
            "Lcom/xiaomi/j/a/ag;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/j/a/a;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/j/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/j/a/ag;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/j/a/a;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/j/a/ag;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/xiaomi/j/a/ag;

    invoke-direct {v2}, Lcom/xiaomi/j/a/ag;-><init>()V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "regSecret is empty, return null"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/xiaomi/b/a/h/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    :try_start_0
    invoke-static {v1, v0}, Lcom/xiaomi/b/a/a/c;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v1, Lcom/xiaomi/j/a/y;

    invoke-direct {v1}, Lcom/xiaomi/j/a/y;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v1, Lcom/xiaomi/j/a/y;->a:J

    const-string v3, "fakeid"

    iput-object v3, v1, Lcom/xiaomi/j/a/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/y;)Lcom/xiaomi/j/a/ag;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/j/a/ag;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v2, p2}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/j/a/ag;->c(Z)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v2, p4}, Lcom/xiaomi/j/a/ag;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v2, p3}, Lcom/xiaomi/j/a/ag;->a(Z)Lcom/xiaomi/j/a/ag;

    invoke-virtual {v2, p5}, Lcom/xiaomi/j/a/ag;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "encryption error. "

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
