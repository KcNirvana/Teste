.class public abstract Lcom/miui/video/base/common/entity/BaseEntity;
.super Ljava/lang/Object;
.source "BaseEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final _R_N:Ljava/lang/String; = "\r\n"

.field protected static final _T:Ljava/lang/String; = "\t"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private baseId:J

.field private baseLabel:Ljava/lang/String;

.field private isFirst:Z

.field private isLast:Z

.field private layoutType:I

.field private showPercent:I

.field private showType:I

.field private showValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->baseId:J

    return-wide v0
.end method

.method public getBaseLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->baseLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->layoutType:I

    return v0
.end method

.method public getShowPercent()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showPercent:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showType:I

    return v0
.end method

.method public getShowValue()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showValue:I

    return v0
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->isFirst:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/common/entity/BaseEntity;->isLast:Z

    return v0
.end method

.method public setBaseId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->baseId:J

    return-void
.end method

.method public setBaseLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->baseLabel:Ljava/lang/String;

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->isFirst:Z

    return-void
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->isLast:Z

    return-void
.end method

.method public setLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->layoutType:I

    return-void
.end method

.method public setShowPercent(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showPercent:I

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showType:I

    return-void
.end method

.method public setShowValue(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->showValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[baseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/video/base/common/entity/BaseEntity;->baseId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
