.class public Lcom/alipay/edge/impl/d;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# direct methods
.method public static a(I)I
    .locals 2

    if-gez p0, :cond_0

    const/high16 v0, -0x80000000

    or-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p0, 0x1ff

    shl-int/lit8 v0, v0, 0xc

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    shr-int/lit8 v1, p0, 0xc

    and-int/lit16 v1, v1, 0x1ff

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p0, 0xfff

    shr-int/lit8 v1, p0, 0xc

    and-int/lit16 v1, v1, 0x1ff

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
