.class public Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;
.super Ljava/lang/Object;
.source "PreviewFrameUtils.java"


# static fields
.field public static final FROM_GALLERY:Ljava/lang/String; = "from_gallery"

.field public static final FROM_VIDEO:Ljava/lang/String; = "from_video"

.field private static final TAG:Ljava/lang/String; = "PreviewFrameUtils"

.field private static sIsCodecDecodingBitmap:Z = true

.field private static sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

.field private static sSurfaceToken:I

.field private static sUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureRetriever(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->releaseRetriever()V

    :cond_1
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-nez v0, :cond_2

    sput-object p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setFrameParam(ILandroid/graphics/Bitmap$Config;)I

    sput-boolean v2, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z

    const/4 v0, -0x1

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "PreviewFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRetriever: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static pauseDecoder(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "PreviewFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDecoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->pauseDecoder()I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public static releaseRetriever()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "PreviewFrameUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseRetriever: start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sput-object v3, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    :cond_0
    sput-object v3, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    const/4 v2, -0x1

    sput v2, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I

    const-string v2, "PreviewFrameUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseRetriever: real cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSurface(Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->ensureRetriever(Ljava/lang/String;)V

    sget p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I

    if-eq p0, p2, :cond_1

    sput p2, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I

    sget-object p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setSurface(Landroid/view/Surface;)I

    :cond_1
    return-void
.end method

.method public static showPreviewFrameAtTime(Ljava/lang/String;Landroid/view/Surface;IJLjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-wide/from16 v2, p3

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->checkAsyncThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "PreviewFrameUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showPreviewFrameAtTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->ensureRetriever(Ljava/lang/String;)V

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    mul-long v2, v2, v6

    const-wide/16 v8, 0x0

    :try_start_0
    sget v10, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I

    if-eq v10, v0, :cond_1

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sSurfaceToken:I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setSurface(Landroid/view/Surface;)I

    :cond_1
    sget-boolean v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z

    if-nez v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    :cond_2
    const-string v0, "from_video"

    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v10, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/16 v11, 0x19

    invoke-virtual {v10, v11}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/16 v12, 0x1a

    invoke-virtual {v11, v12}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "960"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getVideoTrack()I

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0, v6}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setVideoTrack(I)I

    :cond_3
    long-to-double v6, v2

    const-wide v10, 0x3ffd70a3d70a3d71L    # 1.84

    mul-double v6, v6, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v10

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v10

    double-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/videolan/libvlc/MediaMetadataRetriever;->showPreviewFrameAtTime(J)J

    move-result-wide v6

    move-wide v8, v6

    goto/16 :goto_1

    :cond_4
    const-string v0, "960"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    if-eqz v11, :cond_5

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getVideoTrack()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0, v10}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setVideoTrack(I)I

    :cond_5
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const-wide/16 v11, 0x3e8

    mul-long v13, v2, v11

    invoke-virtual {v0, v13, v14}, Lorg/videolan/libvlc/MediaMetadataRetriever;->showPreviewFrameAtTime(J)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v0, v13, v8

    if-gez v0, :cond_8

    :try_start_1
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/16 v15, 0x9

    invoke-virtual {v0, v15}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "XXXXXX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " duration: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " time: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " result: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sub-long v17, v6, v2

    cmp-long v0, v17, v11

    if-lez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_0
    const/16 v10, 0xa

    if-ge v0, v10, :cond_8

    cmp-long v10, v13, v8

    if-gez v10, :cond_8

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v15, 0x64

    sub-long/2addr v2, v15

    const-string v10, "XXXXXX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    mul-long v9, v2, v11

    invoke-virtual {v8, v9, v10}, Lorg/videolan/libvlc/MediaMetadataRetriever;->showPreviewFrameAtTime(J)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v13, v8

    const-wide/16 v8, 0x0

    goto :goto_0

    :catch_0
    :cond_8
    move-wide v8, v13

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v8, 0x0

    :goto_1
    const-string v0, "PreviewFrameUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showPreviewFrameAtTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " real cost "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static startDecoder(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "PreviewFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDecoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->startDecoder()I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->sIsCodecDecodingBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method
