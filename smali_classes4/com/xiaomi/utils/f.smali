.class public final Lcom/xiaomi/utils/f;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static a(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
