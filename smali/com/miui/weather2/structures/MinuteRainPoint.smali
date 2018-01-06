.class public Lcom/miui/weather2/structures/MinuteRainPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isRain:Z

.field private mPoxX:I

.field private mPoxY:I

.field private mPrecipitationProbability:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    iput p2, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/weather2/structures/MinuteRainPoint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->isRain:Z

    iput-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->isRain:Z

    iget v0, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    iput v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    iget v0, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    iput v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    iget-wide v0, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    iput-wide v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/miui/weather2/structures/MinuteRainPoint;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/miui/weather2/structures/MinuteRainPoint;

    iget v2, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    iget v3, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    iget v3, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    iget-wide v4, p1, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getPoxX()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    return v0
.end method

.method public getPoxY()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    return v0
.end method

.method public getPrecipitationProbability()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    return-wide v0
.end method

.method public isRain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->isRain:Z

    return v0
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    iput p2, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    return-void
.end method

.method public setPoxX(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxX:I

    return-void
.end method

.method public setPoxY(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPoxY:I

    return-void
.end method

.method public setPrecipitationProbability(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->mPrecipitationProbability:D

    return-void
.end method

.method public setRain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/MinuteRainPoint;->isRain:Z

    return-void
.end method
