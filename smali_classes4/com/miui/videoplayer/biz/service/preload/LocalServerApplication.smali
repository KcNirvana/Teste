.class public final Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;
.super Lcom/miui/video/common/component/arch/BaseModuleApplication;
.source "LocalServerApplication.kt"


# annotations
.annotation build Lio/github/prototypez/appjoint/core/ModuleSpec;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;",
        "Lcom/miui/video/common/component/arch/BaseModuleApplication;",
        "()V",
        "onCreate",
        "",
        "shouldInit",
        "",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/component/arch/BaseModuleApplication;-><init>()V

    return-void
.end method

.method private final shouldInit()Z
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/component/arch/BaseModuleApplication;->onCreate()V

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;->shouldInit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    :cond_0
    return-void
.end method
