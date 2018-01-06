.class public Lcom/miui/weather2/structures/AqiQualityStation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/weather2/structures/AqiQualityStation;",
        ">;"
    }
.end annotation


# instance fields
.field private mAqiQuality:Ljava/lang/String;

.field private mAqiValue:Ljava/lang/String;

.field private mArea:Ljava/lang/String;

.field private mIsShowStationName:Z

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mPositionName:Ljava/lang/String;

.field private mStationCode:Ljava/lang/String;

.field private mStationDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDistanceFromLatLng(Lcom/amap/api/maps2d/a/h;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AqiQualityStation;->getLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amap/api/maps2d/e;->a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)F

    move-result v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeState()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mIsShowStationName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mIsShowStationName:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/miui/weather2/structures/AqiQualityStation;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AqiQualityStation;->getAqiValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getAqiValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v3

    if-gt v2, v3, :cond_0

    if-ge v2, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/structures/AqiQualityStation;->compareTo(Lcom/miui/weather2/structures/AqiQualityStation;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/miui/weather2/structures/AqiQualityStation;

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getStationCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getStationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAqiDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiQuality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAqiDescBackground(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f020027

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const v0, 0x7f02002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    const v0, 0x7f02002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    const v0, 0x7f02003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    const v0, 0x7f02002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v1, v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAqiQuality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getAqiValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mArea:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mIsShowStationName:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mPositionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatLng()Lcom/amap/api/maps2d/a/h;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLatitude:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLongitude:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mPositionName:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStationDesc(Lcom/amap/api/maps2d/a/h;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getDistanceFromLatLng(Lcom/amap/api/maps2d/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAqiExcellentStation()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setAqiQuality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiQuality:Ljava/lang/String;

    return-void
.end method

.method public setAqiValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mAqiValue:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mArea:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLatitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method public setPositionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mPositionName:Ljava/lang/String;

    return-void
.end method

.method public setState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mIsShowStationName:Z

    return-void
.end method

.method public setStationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationCode:Ljava/lang/String;

    return-void
.end method

.method public setStationDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStation;->mStationDesc:Ljava/lang/String;

    return-void
.end method
