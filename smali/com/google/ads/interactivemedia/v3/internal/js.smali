.class public Lcom/google/ads/interactivemedia/v3/internal/js;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
