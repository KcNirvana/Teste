.class public Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"


# static fields
.field private static final MAX_EDIT_FRAME_COUNT:I = 0xc

.field private static final MAX_FRAME_COUNT:I = 0x1e

.field private static final MIN_EDIT_FRAME_COUNT:I = 0x6

.field private static final MIN_FRAME_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SeekBarFrameUtils"

.field private static final sLock:Ljava/lang/Object;

.field private static sSeekBarBitmapListCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sSeekBarBitmapListCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditFrameCount(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getFrameCount(J)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x6

    const/16 v0, 0xc

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getEditSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xc

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge p0, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFrameCount(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string p0, "SeekBarFrameUtils"

    const-string p1, "the duration must more than 0"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    const/4 p1, 0x7

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, -0x7

    int-to-double p0, p0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    add-double/2addr p0, v0

    double-to-int p0, p0

    :goto_0
    const/4 p1, 0x5

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v1, "SeekBarFrameUtils"

    const-string v2, "getSeekBarBitmapList: useCache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "SeekBarFrameUtils"

    const-string v5, "getSeekBarBitmapList: wait lock"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v0, "SeekBarFrameUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSeekBarBitmapList: get lock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    const-string v0, "SeekBarFrameUtils"

    const-string v1, "getSeekBarBitmapList: useCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-object v3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setFrameParam(ILandroid/graphics/Bitmap$Config;)I

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v0, v8, v9}, Lcom/miui/video/framework/utils/FormatUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getFrameCount(J)I

    move-result v0

    invoke-static {v8, v9, v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getTimeList(JI)[J

    move-result-object v0

    array-length v14, v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v4}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->is8KVideo(Lorg/videolan/libvlc/MediaMetadataRetriever;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "SeekBarFrameUtils"

    const-string v2, " getSeekBarBitmapList is 8k video return"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v15

    :cond_3
    :try_start_5
    array-length v3, v0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v3, :cond_5

    aget-wide v8, v0, v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v10, 0x3e8

    mul-long v9, v8, v10

    move-object v8, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v16, v13

    move v13, v14

    :try_start_6
    invoke-virtual/range {v8 .. v13}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getSeekBarFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_4

    :try_start_7
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v13, v16, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v15, v2

    :cond_5
    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v0, v14, :cond_6

    move-object v15, v2

    :cond_6
    :try_start_8
    invoke-virtual {v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v15, v3

    :goto_1
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v15, v3

    :goto_2
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1, v15}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "SeekBarFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeekBarBitmapList: real cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-object v15

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_9
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method private static getTimeList(JI)[J
    .locals 6

    new-array v0, p2, [J

    int-to-long v1, p2

    div-long/2addr p0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    int-to-long v2, v1

    mul-long v2, v2, p0

    const-wide/16 v4, 0x0

    add-long/2addr v4, v2

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static is8KVideo(Lorg/videolan/libvlc/MediaMetadataRetriever;)Z
    .locals 4

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x10e0

    const/16 v3, 0x1e00

    if-lt v0, v3, :cond_1

    if-ge p0, v1, :cond_3

    :cond_1
    if-lt v0, v1, :cond_2

    if-lt p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v2
.end method

.method public static releaseCache()V
    .locals 2

    const-string v0, "SeekBarFrameUtils"

    const-string v1, "releaseCache: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->sSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method
