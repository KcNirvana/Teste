.class public Lcom/miui/voicesdk/util/InstrumentationRunner;
.super Ljava/lang/Object;
.source "InstrumentationRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;
    }
.end annotation


# static fields
.field public static final EVENT_CLICK:I = 0x0

.field public static final EVENT_ENTER:I = 0x1

.field public static final EVENT_SCROLL_DOWN:I = 0x3

.field public static final EVENT_SCROLL_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InstrumentationRunner"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEventType:I

.field private final mInst:Landroid/app/Instrumentation;

.field private mListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

.field private mPoint:Landroid/graphics/Point;

.field private mWaitTimeAfterSend:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/Point;Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/miui/voicesdk/util/InstrumentationRunner;-><init>(Landroid/content/Context;ILcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V

    iput-object p3, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mWaitTimeAfterSend:J

    iput-object p1, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mEventType:I

    iput-object p3, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    return-void
.end method

.method public static dispatchEventToThread(Lcom/miui/voicesdk/util/InstrumentationRunner;)V
    .locals 4

    invoke-static {}, Lcom/miui/voicesdk/util/VoiceThreadPool;->getInstance()Lcom/miui/voicesdk/util/VoiceThreadPool;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/voicesdk/util/VoiceThreadPool;->runInBackground(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static dispatchEventToThreadDelay(Lcom/miui/voicesdk/util/InstrumentationRunner;I)V
    .locals 4

    invoke-static {}, Lcom/miui/voicesdk/util/VoiceThreadPool;->getInstance()Lcom/miui/voicesdk/util/VoiceThreadPool;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/voicesdk/util/VoiceThreadPool;->runInBackground(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private obtainMotionEvent(FFI)Landroid/view/MotionEvent;
    .locals 20

    const/4 v2, 0x2

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v19, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v2, 0x0

    aput-object v19, v8, v2

    const/4 v2, 0x2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v18, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v18 .. v18}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v0, p1

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v2, 0x0

    aput-object v18, v9, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    move/from16 v6, p3

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendKey(I)Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "InstrumentationRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendKey -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v2, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    iget-object v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->setInTouchMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "InstrumentationRunner"

    const-string/jumbo v3, "sendKey -> "

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private simulateClick(FF)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "InstrumentationRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simulateClick -> x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v11

    :goto_0
    return v2

    :catch_0
    move-exception v9

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "InstrumentationRunner"

    const-string/jumbo v4, "simulateClick "

    invoke-virtual {v2, v3, v4, v9}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v12

    goto :goto_0
.end method

.method private simulateScroll(Z)Z
    .locals 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenWidth()I

    move-result v6

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenHeight()I

    move-result v4

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v7, v8

    :goto_0
    return v7

    :cond_1
    div-int/lit8 v0, v6, 0x2

    div-int/lit8 v1, v4, 0x2

    move v2, v1

    if-eqz p1, :cond_2

    neg-int v2, v2

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v9

    const-string/jumbo v10, "InstrumentationRunner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "simulateScroll delta: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    int-to-float v10, v0

    int-to-float v11, v1

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/miui/voicesdk/util/InstrumentationRunner;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    if-lez v2, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    iget-object v9, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    int-to-float v10, v0

    add-int v11, v1, v5

    int-to-float v11, v11

    const/4 v12, 0x2

    invoke-direct {p0, v10, v11, v12}, Lcom/miui/voicesdk/util/InstrumentationRunner;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, 0x32

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-le v5, v2, :cond_4

    iget-object v9, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    int-to-float v10, v0

    add-int v11, v1, v5

    int-to-float v11, v11

    const/4 v12, 0x2

    invoke-direct {p0, v10, v11, v12}, Lcom/miui/voicesdk/util/InstrumentationRunner;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, -0x32

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mInst:Landroid/app/Instrumentation;

    int-to-float v10, v0

    add-int v11, v1, v1

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, v12}, Lcom/miui/voicesdk/util/InstrumentationRunner;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v7

    const-string/jumbo v9, "InstrumentationRunner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simulateScroll "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v3}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mEventType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mWaitTimeAfterSend:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mWaitTimeAfterSend:J

    invoke-static {v2, v3}, Lcom/miui/voicesdk/util/Utils;->sleepQuietly(J)V

    iget-wide v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mWaitTimeAfterSend:J

    invoke-static {v2, v3}, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statIncreaseSleepTime(J)V

    :cond_0
    iget-object v1, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    iget v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mEventType:I

    invoke-interface {v1, v2, v0}, Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;->onInstEnd(IZ)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/voicesdk/util/InstrumentationRunner;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/miui/voicesdk/util/InstrumentationRunner;->simulateClick(FF)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x42

    invoke-direct {p0, v1}, Lcom/miui/voicesdk/util/InstrumentationRunner;->sendKey(I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/voicesdk/util/InstrumentationRunner;->simulateScroll(Z)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/voicesdk/util/InstrumentationRunner;->simulateScroll(Z)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
