.class public Lcom/miui/zeus/columbus/util/gaid/a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "AdvertisingIdHelper"

.field private static f:Lcom/miui/zeus/columbus/util/gaid/a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->b:Z

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->c:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->e:Z

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/zeus/columbus/util/gaid/AdvertisingIdInterface;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/zeus/columbus/util/gaid/d;

    invoke-direct {v0, p0}, Lcom/miui/zeus/columbus/util/gaid/d;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static a()Lcom/miui/zeus/columbus/util/gaid/a;
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/util/gaid/a;->f:Lcom/miui/zeus/columbus/util/gaid/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/util/gaid/a;-><init>()V

    sput-object v0, Lcom/miui/zeus/columbus/util/gaid/a;->f:Lcom/miui/zeus/columbus/util/gaid/a;

    :cond_0
    sget-object v0, Lcom/miui/zeus/columbus/util/gaid/a;->f:Lcom/miui/zeus/columbus/util/gaid/a;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/miui/zeus/columbus/util/gaid/f;
    .locals 0

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/gaid/a;->c(Landroid/content/Context;)Lcom/miui/zeus/columbus/util/gaid/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/miui/zeus/columbus/util/gaid/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/zeus/columbus/util/gaid/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/util/gaid/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/miui/zeus/columbus/util/gaid/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->e:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "stacktrace_tag"

    const-string v2, "stackerror:"

    invoke-static {v1, v2, p0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/miui/zeus/columbus/util/gaid/f;
    .locals 4

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/gaid/a;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/miui/zeus/columbus/util/gaid/f;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/util/gaid/f;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "stacktrace_tag"

    const-string v2, "stackerror:"

    invoke-static {v0, v2, p0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/zeus/columbus/util/gaid/b;

    const-string v2, "AdvertisingIdHelper"

    const-string v3, "startTimer"

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/zeus/columbus/util/gaid/b;-><init>(Lcom/miui/zeus/columbus/util/gaid/a;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    const-string v0, "AdvertisingIdHelper"

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->b:Z

    const-string v1, "AdvertisingIdHelper"

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "stacktrace_tag"

    const-string v2, "stackerror:"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/zeus/columbus/util/gaid/c;

    invoke-direct {v1, p0}, Lcom/miui/zeus/columbus/util/gaid/c;-><init>(Lcom/miui/zeus/columbus/util/gaid/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->b:Z

    if-nez v0, :cond_2

    const-string v0, "AdvertisingIdHelper"

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/zeus/columbus/util/gaid/a;->c:Z

    invoke-direct {p0}, Lcom/miui/zeus/columbus/util/gaid/a;->f()V

    invoke-direct {p0}, Lcom/miui/zeus/columbus/util/gaid/a;->d()V

    :cond_0
    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "AdvertisingIdHelper"

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "stacktrace_tag"

    const-string v3, "stack error:"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/zeus/columbus/util/gaid/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->d:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/util/gaid/a;->e:Z

    return v0
.end method
