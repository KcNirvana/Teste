.class public Lcom/google/ads/interactivemedia/v3/internal/ke;
.super Lcom/google/ads/interactivemedia/v3/internal/kd;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/ke$b;,
        Lcom/google/ads/interactivemedia/v3/internal/ke$a;
    }
.end annotation


# static fields
.field private static e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private static f:Ljava/util/concurrent/CountDownLatch;

.field private static volatile g:Z


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ke;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;Lcom/google/ads/interactivemedia/v3/internal/ki;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/kd;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;Lcom/google/ads/interactivemedia/v3/internal/ki;)V

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ke;->h:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/ke;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/ke;
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jz;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)V

    if-eqz p2, :cond_1

    const-class p0, Lcom/google/ads/interactivemedia/v3/internal/ke;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ke;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ke$b;

    invoke-direct {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ke$b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/ke;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kk;

    const/16 v2, 0xef

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kk;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ke;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;Lcom/google/ads/interactivemedia/v3/internal/ki;Z)V

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/ke;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/ads/interactivemedia/v3/internal/ke;->g:Z

    return p0
.end method

.method static synthetic f()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ke;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ke;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b(Landroid/content/Context;)V

    :try_start_0
    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/ke;->g:Z

    const/16 v1, 0x18

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ke;->h:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ke;->e()Lcom/google/ads/interactivemedia/v3/internal/ke$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, 0x1c

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(IJ)V

    const/16 p1, 0x1a

    const-wide/16 v2, 0x5

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(IJ)V

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ke;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    return-void

    :catch_1
    return-void
.end method

.method e()Lcom/google/ads/interactivemedia/v3/internal/ke$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ke$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ke;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/ke;

    monitor-enter v2

    :try_start_1
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/ke;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ke$a;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ke;Ljava/lang/String;Z)V

    monitor-exit v2

    return-object v3

    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ke;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ke$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-direct {v2, p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ke;Ljava/lang/String;Z)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ke$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ke$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ke;Ljava/lang/String;Z)V

    return-object v2
.end method
