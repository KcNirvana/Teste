.class public Lcom/miui/extravideo/interpolation/VideoInterpolator;
.super Ljava/lang/Object;
.source "VideoInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoInterpolator"

.field private static mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

.field private static mInstance:Lcom/miui/extravideo/interpolation/VideoInterpolator;

.field private static mProgress:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelSave()V
    .locals 1

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->cancelSave()V

    :cond_0
    return-void
.end method

.method public static doDecodeAndEncodeAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/extravideo/interpolation/EncodeListener;JJJ)V
    .locals 12

    const-string v0, "VideoInterpolator"

    const-string v1, "start doDecodeAndEncode async mode sdk version : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    :cond_0
    new-instance v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    sput-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    return-void
.end method

.method public static doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z

    move-result v0

    return v0
.end method

.method public static doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z
    .locals 17

    const-string v0, "VideoInterpolator"

    const-string v1, "start doDecodeAndEncode sync mode sdk version : %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v2, [Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sget-object v3, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    sput-object v3, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    :cond_0
    new-instance v3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    move-object v6, v3

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-direct/range {v6 .. v16}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    sput-object v3, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    sget-object v3, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->configure()V

    new-instance v3, Lcom/miui/extravideo/interpolation/VideoInterpolator$1;

    move-object/from16 v4, p10

    invoke-direct {v3, v2, v1, v4, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolator$1;-><init>(Ljava/util/concurrent/locks/Lock;[ZLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;Ljava/util/concurrent/locks/Condition;)V

    sget-object v4, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v4, v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v3, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    aput-boolean v5, v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    aget-boolean v0, v1, v5

    return v0

    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/extravideo/interpolation/VideoInterpolator;
    .locals 2

    const-class v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mInstance:Lcom/miui/extravideo/interpolation/VideoInterpolator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolator;

    invoke-direct {v1}, Lcom/miui/extravideo/interpolation/VideoInterpolator;-><init>()V

    sput-object v1, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mInstance:Lcom/miui/extravideo/interpolation/VideoInterpolator;

    :cond_0
    sget-object v1, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mInstance:Lcom/miui/extravideo/interpolation/VideoInterpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProgress()I
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mProgress:I

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mImp:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->getProgress()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mProgress:I

    :cond_0
    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolator;->mProgress:I

    return v0
.end method
