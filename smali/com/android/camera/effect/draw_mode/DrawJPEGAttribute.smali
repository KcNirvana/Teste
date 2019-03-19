.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field private mApplyWaterMark:Z

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mData:[B

.field public mDate:J

.field private mDepthData:[B

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHeight:I

.field public mInfo:Lcom/android/camera/PictureInfo;

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field private mRawData:[B

.field public mShootRotation:F

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return-void
.end method


# virtual methods
.method public composeDynamicSpotData()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v7, Lcom/android/camera/ArcsoftDepthMap;

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    invoke-direct {v7, v0}, Lcom/android/camera/ArcsoftDepthMap;-><init>([B)V

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/effect/renders/TextWaterMark;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Util;->getBytesFromFile(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_0
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getTimeWaterMarkData(II)[B

    move-result-object v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->initExif()V

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v7}, Lcom/android/camera/ArcsoftDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/camera/ArcsoftDepthMap;->getBlurLevel()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/exif/ExifInterface;->writeDepthExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Point;I[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v7}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapData()[B

    move-result-object v6

    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "composeDepthMapPicture: process in portrait depth map picture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v6

    add-int/2addr v0, v1

    new-array v9, v0, [B

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v1, v1

    invoke-static {v0, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    array-length v2, v2

    invoke-static {v0, v12, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v6

    invoke-static {v6, v12, v9, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "composeDepthMapPicture: compose portrait picture cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iput-object v13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    iput-object v13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    return-void

    :catch_0
    move-exception v8

    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "composeDynamicSpotData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public decomposeDynamicSpotData()[B
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v7}, Lcom/android/gallery3d/exif/ExifParser;->seekDynamicSpotDataIndex([B)[I

    move-result-object v2

    if-nez v2, :cond_0

    return-object v10

    :cond_0
    aget v7, v2, v11

    add-int/lit8 v4, v7, 0x2

    const/4 v7, 0x2

    aget v7, v2, v7

    aget v10, v2, v12

    sub-int/2addr v7, v10

    add-int/lit8 v6, v7, 0x2

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v7, v7

    aget v10, v2, v13

    sub-int v1, v7, v10

    new-array v3, v4, [B

    new-array v5, v6, [B

    new-array v0, v1, [B

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v7, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    aget v10, v2, v12

    invoke-static {v7, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    aget v10, v2, v13

    invoke-static {v7, v10, v0, v11, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "split data done, time spend: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iput-object v5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    iget-object v7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object v7
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->finalize()V

    return-void
.end method

.method public getDepthData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    return-object v0
.end method

.method public initExif()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    invoke-virtual {v2}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initExif:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isApplyWaterMark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return v0
.end method

.method public setApplyWaterMark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return-void
.end method

.method public setRawData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    return-void
.end method
