.class public Lcom/sdu/didi/openapi/location/LocationHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;,
        Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/sdu/didi/openapi/location/LocationHelper;

.field private static thread:Landroid/os/HandlerThread;


# instance fields
.field private activity:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private lastLocation:Lcom/sdu/didi/openapi/location/Location;

.field private volatile locationCount:I

.field private locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

.field private final lock:[B

.field private manage:Lcom/sdu/didi/openapi/location/LocationManage;

.field private shouldFire:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    iput-boolean v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    new-instance v0, Lcom/sdu/didi/openapi/location/Location;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/location/Location;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->activity:Landroid/content/Context;

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationManage;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/location/LocationManage;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    return-void
.end method

.method static synthetic access$000(Lcom/sdu/didi/openapi/location/LocationHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->activity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/LocationManage;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/LocationHelper;->location()V

    return-void
.end method

.method static synthetic access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I
    .locals 1

    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/sdu/didi/openapi/location/LocationHelper;)I
    .locals 2

    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sdu/didi/openapi/location/LocationHelper;Lcom/sdu/didi/openapi/location/Location;)Lcom/sdu/didi/openapi/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sdu/didi/openapi/location/LocationHelper;
    .locals 2

    const-class v1, Lcom/sdu/didi/openapi/location/LocationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/location/LocationHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;

    :cond_0
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private location()V
    .locals 3

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    sget-object v1, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    invoke-direct {v2, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/sdu/didi/openapi/location/LocationManage;->registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/sdu/didi/openapi/location/Location;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sdu/didi/openapi/location/LocationHelper$1;

    invoke-direct {v2, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$1;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/LocationManage;->unRegistListener()V

    :cond_0
    iput-object v2, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->reset()V

    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_1
    :goto_0
    sput-object v2, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return-void

    :cond_2
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
