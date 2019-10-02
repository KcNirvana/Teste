.class public Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mCurrentAspectRatio:I

    return-void
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 6

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoHeight:I

    if-lez v0, :cond_3

    int-to-float v0, p1

    int-to-float v2, p2

    div-float v3, v0, v2

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    div-float/2addr v0, v4

    float-to-int p2, v0

    goto :goto_1

    :cond_2
    mul-float v2, v2, v4

    float-to-int p1, v2

    :cond_3
    :goto_1
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mMeasuredWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mMeasuredHeight:I

    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public setAspectRatio(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mCurrentAspectRatio:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->mVideoHeight:I

    return-void
.end method
