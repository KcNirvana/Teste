.class Lse/dirac/acs/api/AsyncHelper;
.super Ljava/lang/Object;
.source "AsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/AsyncHelper$Task;,
        Lse/dirac/acs/api/AsyncHelper$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        "Argument:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "se.dirac.acs-api"


# instance fields
.field private currentArg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TArgument;"
        }
    .end annotation
.end field

.field private final onWork:Lse/dirac/acs/api/AsyncHelper$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper$Function<",
            "TArgument;TResult;>;"
        }
    .end annotation
.end field

.field private requests:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AsyncHelper$Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/AsyncHelper$Function<",
            "TArgument;TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper;->onWork:Lse/dirac/acs/api/AsyncHelper$Function;

    return-void
.end method

.method static synthetic access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lse/dirac/acs/api/AsyncHelper;->getWork()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AsyncHelper;->onWork:Lse/dirac/acs/api/AsyncHelper$Function;

    return-object p0
.end method

.method private getWork()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TArgument;"
        }
    .end annotation

    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    const-string v1, "se.dirac.acs-api"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service push settings overload, ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requests, keeping the newest."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method execute(Ljava/lang/Object;Lse/dirac/acs/api/AsyncHelper$Function;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TArgument;",
            "Lse/dirac/acs/api/AsyncHelper$Function<",
            "TResult;",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;

    iget-object p1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lse/dirac/acs/api/AsyncHelper$1;

    invoke-direct {p1, p0, p2}, Lse/dirac/acs/api/AsyncHelper$1;-><init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V

    if-eqz p3, :cond_1

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
