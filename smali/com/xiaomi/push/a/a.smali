.class public Lcom/xiaomi/push/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/push/service/a/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/a;Z)Lb/a/a/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/a/b;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/j/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/j/a/al;

    invoke-direct {v0}, Lcom/xiaomi/j/a/al;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/j/a/as;

    invoke-direct {v0}, Lcom/xiaomi/j/a/as;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/j/a/aq;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aq;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/j/a/au;

    invoke-direct {v0}, Lcom/xiaomi/j/a/au;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/j/a/ao;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ao;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/j/a/aa;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aa;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/j/a/af;

    invoke-direct {v0}, Lcom/xiaomi/j/a/af;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/xiaomi/j/a/an;

    invoke-direct {v0}, Lcom/xiaomi/j/a/an;-><init>()V

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_0

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aj;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/j/a/ab;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ab;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/ab;->a(Z)V

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_1

    new-instance v0, Lcom/xiaomi/j/a/ae;

    invoke-direct {v0}, Lcom/xiaomi/j/a/ae;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/j/a/af;

    invoke-direct {v0}, Lcom/xiaomi/j/a/af;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/push/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/push/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/b/a/h/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->f()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    array-length v3, v1

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->f()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/b/a/a/c;->a([B[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v1

    iget-boolean v2, p2, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/push/a/a;->a(Lcom/xiaomi/j/a/a;Z)Lb/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->f()[B

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "second layer byte arrays cannot translate to container!"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)I
    .locals 5

    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v1, Lcom/xiaomi/push/a/b;->a:[I

    invoke-virtual {v0}, Lcom/xiaomi/j/a/a;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move v1, v2

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/xiaomi/j/a/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->b(I)I

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/xiaomi/j/a/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->b(I)I

    move-result v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/a/a;->b(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    if-ne v3, v4, :cond_1

    instance-of v3, v0, Lcom/xiaomi/j/a/ab;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/xiaomi/j/a/ab;

    iget-object v0, v0, Lcom/xiaomi/j/a/ab;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Lcom/xiaomi/j/a/s;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/s;

    move-result-object v3

    iget v3, v3, Lcom/xiaomi/j/a/s;->Y:I

    if-eq v3, v2, :cond_5

    invoke-static {v0}, Lcom/xiaomi/j/a/s;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/s;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/j/a/s;->Y:I

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lcom/xiaomi/j/a/aj;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/xiaomi/j/a/aj;

    iget-object v0, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/xiaomi/j/a/s;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/s;

    move-result-object v3

    iget v3, v3, Lcom/xiaomi/j/a/s;->Y:I

    if-eq v3, v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/j/a/s;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/s;

    move-result-object v0

    iget v1, v0, Lcom/xiaomi/j/a/s;->Y:I
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/xiaomi/j/a/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->b(I)I

    move-result v1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/a/a;->b(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/xiaomi/j/a/af;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/xiaomi/j/a/af;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/af;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/xiaomi/j/a/g;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-static {v0}, Lcom/xiaomi/j/a/g;->a(Ljava/lang/String;)I

    move-result v0

    :goto_3
    move v1, v0

    goto/16 :goto_1

    :cond_3
    instance-of v3, v0, Lcom/xiaomi/j/a/ae;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/xiaomi/j/a/ae;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ae;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/xiaomi/j/a/g;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/j/a/g;->a(Ljava/lang/String;)I
    :try_end_1
    .catch Lb/a/a/f; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
