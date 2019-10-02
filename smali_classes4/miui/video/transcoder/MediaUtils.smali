.class public Lmiui/video/transcoder/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertYuv420spToYvu420sp([B[BLmiui/video/transcoder/VideoParams;)V
    .locals 4

    iget v0, p2, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iget p2, p2, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    mul-int v0, v0, p2

    div-int/lit8 p2, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    add-int v2, v0, p2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p0, v2

    aput-byte v3, p1, v1

    aget-byte v3, p0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static convertYuv420spToYvu420sp1([B[BLmiui/video/transcoder/VideoParams;)V
    .locals 9

    iget v0, p2, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iget v1, p2, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    iget v4, p2, Lmiui/video/transcoder/VideoParams;->intervalPaddingSize:I

    iget v5, p2, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    iget v6, p2, Lmiui/video/transcoder/VideoParams;->leftPaddingSize:I

    iget v7, p2, Lmiui/video/transcoder/VideoParams;->stride:I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lmiui/video/transcoder/ColorConverterJNI;->convertYuv420spToYvu420sp(II[B[BIIIIZ)V

    return-void
.end method
