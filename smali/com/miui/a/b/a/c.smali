.class public Lcom/miui/a/b/a/c;
.super Lcom/miui/a/b/a/d;
.source ""


# static fields
.field private static aYw:Lcom/miui/a/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/a/b/a/c;->aYw:Lcom/miui/a/b/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/a/b/a/d;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/a/b/a/c;
    .locals 2

    const-class v1, Lcom/miui/a/b/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/a/b/a/c;->aYw:Lcom/miui/a/b/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/a/b/a/c;

    invoke-direct {v0}, Lcom/miui/a/b/a/c;-><init>()V

    sput-object v0, Lcom/miui/a/b/a/c;->aYw:Lcom/miui/a/b/a/c;

    :cond_0
    sget-object v0, Lcom/miui/a/b/a/c;->aYw:Lcom/miui/a/b/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public btr(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "finishActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btT()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IActivityManager_lte24"

    const-string/jumbo v2, " finishActivity error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method
