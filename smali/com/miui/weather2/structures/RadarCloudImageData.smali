.class public Lcom/miui/weather2/structures/RadarCloudImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCloudImageBitmap:Landroid/graphics/Bitmap;

.field private mImageUrl:Ljava/lang/String;

.field private mLeftBottomLatitude:D

.field private mLeftBottomLongitude:D

.field private mPointOfTime:J

.field private mRightTopLatitude:D

.field private mRightTopLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloudImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mCloudImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftBottomLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mLeftBottomLatitude:D

    return-wide v0
.end method

.method public getLeftBottomLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mLeftBottomLongitude:D

    return-wide v0
.end method

.method public getPointOfTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mPointOfTime:J

    return-wide v0
.end method

.method public getRightTopLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mRightTopLatitude:D

    return-wide v0
.end method

.method public getRightTopLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mRightTopLongitude:D

    return-wide v0
.end method

.method public setCloudImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mCloudImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLeftBottomLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mLeftBottomLatitude:D

    return-void
.end method

.method public setLeftBottomLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mLeftBottomLongitude:D

    return-void
.end method

.method public setPointOfTime(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mPointOfTime:J

    return-void
.end method

.method public setRightTopLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mRightTopLatitude:D

    return-void
.end method

.method public setRightTopLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/RadarCloudImageData;->mRightTopLongitude:D

    return-void
.end method
