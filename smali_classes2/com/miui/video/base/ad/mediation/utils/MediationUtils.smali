.class public Lcom/miui/video/base/ad/mediation/utils/MediationUtils;
.super Ljava/lang/Object;
.source "MediationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static range(III)I
    .locals 0

    if-gt p0, p1, :cond_0

    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method
