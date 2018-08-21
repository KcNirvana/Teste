.class public Lcom/ali/user/mobile/a;
.super Ljava/lang/Object;
.source "AliUserInit.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/user/mobile/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/ali/user/mobile/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a;->d()V

    sget-object v0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/security/b/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/ali/user/mobile/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/ali/user/mobile/b/a;)V
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/info/AppInfo;->setDataProvider(Lcom/ali/user/mobile/b/a;)V

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/ali/user/mobile/a;->b:Z

    return v0
.end method

.method private static d()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ali/user/mobile/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/ali/user/mobile/a;->b:Z

    goto :goto_1
.end method
