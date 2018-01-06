.class public Lcom/xiaomi/mistatistic/sdk/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/a/ap$a;
    }
.end annotation


# static fields
.field private static d:Lcom/xiaomi/mistatistic/sdk/a/ap;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->a:J

    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->f:Z

    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->b:Z

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/a/ap$a;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ap;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/aq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aq;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ap;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ap;)Lcom/xiaomi/mistatistic/sdk/a/ap$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/a/ap;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/ap;->d:Lcom/xiaomi/mistatistic/sdk/a/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/ap;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/ap;->d:Lcom/xiaomi/mistatistic/sdk/a/ap;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/ap;->d:Lcom/xiaomi/mistatistic/sdk/a/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ap;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/ap;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/a/ap;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->b()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ar;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/ar;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ap;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a/ap$a;->a(Landroid/app/Activity;)V

    iput-boolean v4, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->f:Z

    const-string v0, "enable AcceleroMeterSensor..."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)Ljava/io/File;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "snapshot.jpg"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-object v2
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->b:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->b:Z

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->f()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->f:Z

    return v0
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->f:Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->c:Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap$a;->b()V

    const-string v0, "disable AcceleroMeterSensor..."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->a:J

    return-void
.end method

.method public h()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ap;->a:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
