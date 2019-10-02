.class public Lcom/miui/video/framework/base/entity/OperatorUtils;
.super Ljava/lang/Object;
.source "OperatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAndValue(II)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static addOrValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowValue(I)V

    return-void
.end method

.method public static checkAndValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowValue()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getMoveLeft(II)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method public static getMoveRight(II)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method public static removeOrValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowValue()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowValue(I)V

    return-void
.end method
