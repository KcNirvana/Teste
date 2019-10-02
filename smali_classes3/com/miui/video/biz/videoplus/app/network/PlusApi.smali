.class public Lcom/miui/video/biz/videoplus/app/network/PlusApi;
.super Ljava/lang/Object;
.source "PlusApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/network/PlusApi$API;
    }
.end annotation


# static fields
.field private static mUseMockData:Z

.field private static volatile sNetInterface:Lcom/miui/video/biz/videoplus/app/network/PlusApi$API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/video/biz/videoplus/app/network/PlusApi$API;
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/network/PlusApi;->sNetInterface:Lcom/miui/video/biz/videoplus/app/network/PlusApi$API;

    if-nez v0, :cond_0

    const-class v0, Lcom/miui/video/biz/videoplus/app/network/PlusApi;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/network/PlusApi;->sNetInterface:Lcom/miui/video/biz/videoplus/app/network/PlusApi$API;

    return-object v0
.end method
