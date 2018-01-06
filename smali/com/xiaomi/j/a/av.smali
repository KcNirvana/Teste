.class public Lcom/xiaomi/j/a/av;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)S
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/b/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/b/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/b/a/a/a$a;->a()I

    move-result v0

    add-int v2, v1, v0

    invoke-static {p0}, Lcom/xiaomi/b/a/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v2, v0

    invoke-static {p0}, Lcom/xiaomi/b/a/d/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    add-int/2addr v0, v2

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/bg;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(ZZZ)S
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    :goto_0
    add-int v2, v0, v1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :goto_1
    add-int/2addr v1, v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static a(Lb/a/a/a;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lb/a/a/f;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lb/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/a/a/e;

    new-instance v1, Lb/a/a/b/k$a;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lb/a/a/b/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lb/a/a/e;-><init>(Lb/a/a/b/g;)V

    invoke-virtual {v0, p0, p1}, Lb/a/a/e;->a(Lb/a/a/a;[B)V

    return-void
.end method

.method public static a(Lb/a/a/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lb/a/a/g;

    new-instance v2, Lb/a/a/b/a$a;

    invoke-direct {v2}, Lb/a/a/b/a$a;-><init>()V

    invoke-direct {v1, v2}, Lb/a/a/g;-><init>(Lb/a/a/b/g;)V

    invoke-virtual {v1, p0}, Lb/a/a/g;->a(Lb/a/a/a;)[B
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
