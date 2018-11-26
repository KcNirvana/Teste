.class public Lcom/xiaomi/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bOi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v3, Lcom/xiaomi/a/j;

    invoke-direct {v3, p2, p3}, Lcom/xiaomi/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/a/a/g;

    invoke-direct {v0}, Lcom/xiaomi/a/a/g;-><init>()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/a/a/g;->bNs(Lcom/xiaomi/a/j;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/a/a;->bOj()Lcom/xiaomi/a/b;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/a/b;->bOn(Lcom/xiaomi/a/j;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    return v2

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/xiaomi/a/j;->bOT()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f;->bNo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/a/j;->bOU()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/a/h;->bOJ(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/xiaomi/a/j;->bOY()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bOj()Lcom/xiaomi/a/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/a/b;

    invoke-direct {v0}, Lcom/xiaomi/a/b;-><init>()V

    return-object v0
.end method
