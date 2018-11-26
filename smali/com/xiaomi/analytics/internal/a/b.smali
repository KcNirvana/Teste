.class public Lcom/xiaomi/analytics/internal/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/analytics/internal/a/a;


# instance fields
.field private bnh:Landroid/content/ServiceConnection;

.field private final bni:Ljava/lang/Object;

.field private final bnj:Ljava/util/Set;

.field private bnk:Z

.field private final bnl:Ljava/lang/Object;

.field private bnm:Lcom/miui/analytics/ICore;

.field private bnn:Z

.field private bno:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnn:Z

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnk:Z

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bno:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnl:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bni:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    new-instance v0, Lcom/xiaomi/analytics/internal/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/a/c;-><init>(Lcom/xiaomi/analytics/internal/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnh:Landroid/content/ServiceConnection;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/a/b;->bKt(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnn:Z

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKq()V

    return-void
.end method

.method static synthetic bKA(Lcom/xiaomi/analytics/internal/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnl:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bKB(Lcom/xiaomi/analytics/internal/a/b;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    return-object p1
.end method

.method private bKC()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/analytics/internal/a/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/a/d;-><init>(Lcom/xiaomi/analytics/internal/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private bKq()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnn:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.analytics"

    const-string/jumbo v2, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/a/b;->bnh:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bno:Z

    const-string/jumbo v0, "SysAnalytics"

    const-string/jumbo v1, "try bind sys service"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKK(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bind service exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic bKs(Lcom/xiaomi/analytics/internal/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/a/b;->bno:Z

    return p1
.end method

.method public static bKt(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.analytics"

    const-string/jumbo v2, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isServiceBuiltIn exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v3
.end method

.method static synthetic bKu(Lcom/xiaomi/analytics/internal/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnk:Z

    return p1
.end method

.method static synthetic bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic bKx(Lcom/xiaomi/analytics/internal/a/b;)Lcom/miui/analytics/ICore;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    return-object v0
.end method

.method static synthetic bKy(Lcom/xiaomi/analytics/internal/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKC()V

    return-void
.end method

.method private bKz()V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/a/b;->bni:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/xiaomi/analytics/internal/a/b;->bno:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/xiaomi/analytics/internal/a/b;->bnk:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-nez v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnh:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v3, "SysAnalytics"

    const-string/jumbo v4, "ensureService mConnecting:%s, mConnected:%s, mAnalytics:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/xiaomi/analytics/internal/a/b;->bno:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-boolean v6, p0, Lcom/xiaomi/analytics/internal/a/b;->bnk:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKK(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getVersionName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getVersionName exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v0, "0.0.0"

    return-object v0
.end method


# virtual methods
.method public bKn(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "isPolicyReady"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isPolicyReady exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v5
.end method

.method public bKo()V
    .locals 0

    return-void
.end method

.method public bKp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getClientExtra"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getClientExtra exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public bKr()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnk:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnl:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnl:Ljava/lang/Object;

    sget v2, Lcom/xiaomi/analytics/internal/util/a;->bnx:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "waitForConnected mSyncGuard.wait exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bKw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnn:Z

    return v0
.end method

.method public deleteAllEvents(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "SysAnalytics"

    const-string/jumbo v1, "deleteAllEvents"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "deleteAllEvents"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "deleteAllEvents exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/m;
    .locals 2

    new-instance v0, Lcom/xiaomi/analytics/internal/m;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugOn(Z)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDebugOn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setDebugOn exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDefaultPolicy"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setDefaultPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    const-string/jumbo v0, "SysAnalytics"

    const-string/jumbo v1, "add 1 event into pending event list"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKK(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trackEvent exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_3
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "trackEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKz()V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    array-length v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/a/b;->bnj:Ljava/util/Set;

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v1

    const-string/jumbo v1, "SysAnalytics"

    const-string/jumbo v2, "add %d events into pending event list"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKK(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trackEvents exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :try_start_3
    array-length v0, p1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "trackEvents"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/a/b;->bnm:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
