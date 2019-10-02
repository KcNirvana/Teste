.class Lcom/mixpanel/android/viewcrawler/FlipGesture;
.super Ljava/lang/Object;
.source "FlipGesture.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_SMOOTHING:F = 0.7f

.field private static final FLIP_STATE_DOWN:I = 0x1

.field private static final FLIP_STATE_NONE:I = 0x0

.field private static final FLIP_STATE_UP:I = -0x1

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.FlipGesture"

.field private static final MAXIMUM_GRAVITY_FOR_FLIP:F = 11.8f

.field private static final MINIMUM_CANCEL_DURATION:J = 0x3b9aca00L

.field private static final MINIMUM_GRAVITY_FOR_FLIP:F = 7.8f

.field private static final MINIMUM_UP_DOWN_DURATION:J = 0xee6b280L

.field private static final TRIGGER_STATE_BEGIN:I = 0x1

.field private static final TRIGGER_STATE_NONE:I


# instance fields
.field private mFlipState:I

.field private mLastFlipTime:J

.field private final mListener:Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;

.field private final mSmoothed:[F

.field private mTriggerState:I


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mLastFlipTime:J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mSmoothed:[F

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mListener:Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;

    return-void
.end method

.method private smoothXYZ([F)[F
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mSmoothed:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mSmoothed:[F

    aget v1, v1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mSmoothed:[F

    const v3, 0x3f333333    # 0.7f

    aget v4, p1, v0

    sub-float/2addr v4, v1

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mSmoothed:[F

    return-object p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/mixpanel/android/viewcrawler/FlipGesture;->smoothXYZ([F)[F

    move-result-object v0

    iget v1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v0, v2

    mul-float v3, v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, v0, v4

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget v7, v0, v5

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    iput v2, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    aget v6, v0, v5

    const v7, 0x40f9999a    # 7.8f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    aget v6, v0, v5

    const v7, 0x413ccccd    # 11.8f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v6, -0x1

    iput v6, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    :cond_0
    aget v6, v0, v5

    const v7, -0x3f066666    # -7.8f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    aget v0, v0, v5

    const v5, -0x3ec33333    # -11.8f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iput v4, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    :cond_1
    const v0, 0x42735c2a    # 60.840004f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_2

    const v0, 0x430b3d71    # 139.24f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    :cond_2
    iput v2, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    :cond_3
    iget v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    if-eq v1, v0, :cond_4

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mLastFlipTime:J

    :cond_4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mLastFlipTime:J

    sub-long/2addr v0, v5

    iget p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mFlipState:I

    const-wide/32 v5, 0xee6b280

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmp-long p1, v0, v5

    if-lez p1, :cond_5

    iget p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    if-nez p1, :cond_5

    const-string p1, "MixpanelAPI.FlipGesture"

    const-string v0, "Flip gesture begun"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    goto :goto_0

    :pswitch_1
    const-wide/32 v3, 0x3b9aca00

    cmp-long p1, v0, v3

    if-lez p1, :cond_5

    iget p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    if-eqz p1, :cond_5

    const-string p1, "MixpanelAPI.FlipGesture"

    const-string v0, "Flip gesture abandoned"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    goto :goto_0

    :pswitch_2
    cmp-long p1, v0, v5

    if-lez p1, :cond_5

    iget p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    if-ne p1, v4, :cond_5

    const-string p1, "MixpanelAPI.FlipGesture"

    const-string v0, "Flip gesture completed"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mTriggerState:I

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/FlipGesture;->mListener:Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;

    invoke-interface {p1}, Lcom/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener;->onFlipGesture()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
