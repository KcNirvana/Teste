.class public Lcom/xiaomi/passport/utils/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/utils/SensorHelper$SensorData;,
        Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;
    }
.end annotation


# static fields
.field private static final UPLAOD_URL:Ljava/lang/String; = "https://account.xiaomi.com/pass/auth/security/pensieve/biosignature"

.field private static sensorThread:Landroid/os/HandlerThread;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mJsonData:Lorg/json/JSONArray;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private samplingPeriodUs:I

.field private startFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/utils/SensorHelper;->sensorThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/xiaomi/passport/utils/SensorHelper;->sensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SensorHelper"

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->TAG:Ljava/lang/String;

    const v0, 0xc350

    iput v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->samplingPeriodUs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->startFlag:Z

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mJsonData:Lorg/json/JSONArray;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/xiaomi/passport/utils/SensorHelper;->sensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/utils/SensorHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/passport/utils/SensorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/SensorHelper;->stop()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/utils/SensorHelper;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mJsonData:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$SensorData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/SensorHelper;->recoredData(Lcom/xiaomi/passport/utils/SensorHelper$SensorData;)V

    return-void
.end method

.method private collectSensorData(Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;I)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/SensorHelper;->start()V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/passport/utils/SensorHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/utils/SensorHelper$2;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recoredData(Lcom/xiaomi/passport/utils/SensorHelper$SensorData;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mJsonData:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/xiaomi/passport/utils/SensorHelper$SensorData;->getJson()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/xiaomi/passport/utils/SensorHelper;->samplingPeriodUs:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->startFlag:Z

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/utils/SensorHelper;->registerListener(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/utils/SensorHelper;->registerListener(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/utils/SensorHelper;->registerListener(I)V

    return-void
.end method

.method private stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->startFlag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/SensorHelper;->unregisterListener()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SensorHelper have not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterListener()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public collectAndUpload()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/utils/SensorHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/SensorHelper$1;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;)V

    const/16 v1, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/utils/SensorHelper;->collectSensorData(Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;I)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/passport/utils/SensorHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/utils/SensorHelper$3;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
