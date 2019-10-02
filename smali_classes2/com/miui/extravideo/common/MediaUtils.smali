.class public Lcom/miui/extravideo/common/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computePresentationTime(II)J
    .locals 1

    const v0, 0xf4240

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x84

    int-to-long p0, p0

    return-wide p0
.end method
