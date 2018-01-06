.class public Lcom/miui/weather2/tools/be;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/be;->b:Landroid/location/Location;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/weather2/tools/be;->a:Landroid/location/LocationManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/weather2/tools/bf;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/bf;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/be;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/be;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/weather2/tools/be;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/be;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "SystemLocation"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/miui/weather2/tools/be;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/tools/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    invoke-direct {v2}, Lcom/miui/weather2/tools/be;->b()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/weather2/tools/be;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {v2}, Lcom/miui/weather2/tools/be;->c()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->x(Landroid/content/Context;)V

    return-void

    :cond_1
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/be;->b:Landroid/location/Location;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/be;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/tools/be;->b:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
