.class public Lcom/miui/weather2/tools/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/ba$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/tools/ba$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Object;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/weather2/tools/ba;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/weather2/tools/ba;->b:Ljava/lang/Object;

    new-instance v0, Lcom/miui/weather2/tools/bb;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/weather2/tools/bb;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/weather2/tools/ba;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/miui/weather2/tools/ba;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/weather2/tools/ba$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/weather2/tools/ba$a;-><init>(Lcom/miui/weather2/tools/bb;)V

    invoke-static {v0, p1}, Lcom/miui/weather2/tools/ba$a;->a(Lcom/miui/weather2/tools/ba$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/miui/weather2/tools/ba$a;->a(Lcom/miui/weather2/tools/ba$a;Ljava/util/Map;)Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/ba$a;->a(Lcom/miui/weather2/tools/ba$a;J)J

    sget-object v1, Lcom/miui/weather2/tools/ba;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/miui/weather2/tools/ba;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/miui/weather2/tools/ba;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/miui/weather2/tools/ba;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/miui/weather2/tools/ba;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/weather2/tools/ba;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static d()V
    .locals 3

    new-instance v0, Lcom/miui/weather2/tools/bc;

    invoke-direct {v0}, Lcom/miui/weather2/tools/bc;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/tools/bc;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
