.class public Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;
.super Ljava/lang/Object;
.source "MapUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;
    }
.end annotation


# static fields
.field public static volatile mQueryStamp:J

.field private static mViewUpdateListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mQueryStamp:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getQueryTime()J
    .locals 4

    const-class v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mQueryStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized resetQueryTime(J)V
    .locals 2

    const-class v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;

    monitor-enter v0

    :try_start_0
    sput-wide p0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mQueryStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mViewUpdateListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static update(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/ColorLine;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mViewUpdateListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mViewUpdateListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->mViewUpdateListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;->update(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
