.class public Lcom/miui/weather2/structures/AqiQualityTablePoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAqiDesc:Ljava/lang/String;

.field private mAqiLevel:I

.field private mAqiValue:Ljava/lang/String;

.field private mColor:I

.field private mIsInvalid:Z

.field private mPositionX:I

.field private mPositionY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqiDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiDesc:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAqiLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiLevel:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mColor:I

    return v0
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mPositionY:I

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mIsInvalid:Z

    return v0
.end method

.method public setAqiDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiDesc:Ljava/lang/String;

    return-void
.end method

.method public setAqiLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiLevel:I

    return-void
.end method

.method public setAqiValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mAqiValue:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mColor:I

    return-void
.end method

.method public setIsInvalid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mIsInvalid:Z

    return-void
.end method

.method public setPositionX(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mPositionX:I

    return-void
.end method

.method public setPositionY(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/AqiQualityTablePoint;->mPositionY:I

    return-void
.end method
