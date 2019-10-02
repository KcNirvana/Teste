.class public Lcom/xiaomi/utils/a/a;
.super Ljava/lang/Object;
.source "AndroidBase64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/utils/a/a$b;,
        Lcom/xiaomi/utils/a/a$a;
    }
.end annotation


# direct methods
.method public static a([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/xiaomi/utils/a/a;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .locals 2

    new-instance v0, Lcom/xiaomi/utils/a/a$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/xiaomi/utils/a/a$b;-><init>(I[B)V

    const/4 p3, 0x1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/utils/a/a$b;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/xiaomi/utils/a/a$b;->b:I

    iget-object p1, v0, Lcom/xiaomi/utils/a/a$b;->a:[B

    array-length p1, p1

    if-ne p0, p1, :cond_0

    iget-object p0, v0, Lcom/xiaomi/utils/a/a$b;->a:[B

    return-object p0

    :cond_0
    iget p0, v0, Lcom/xiaomi/utils/a/a$b;->b:I

    new-array p0, p0, [B

    iget-object p1, v0, Lcom/xiaomi/utils/a/a$b;->a:[B

    iget p2, v0, Lcom/xiaomi/utils/a/a$b;->b:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
