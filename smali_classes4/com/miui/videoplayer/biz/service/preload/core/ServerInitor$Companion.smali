.class public final Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;
.super Ljava/lang/Object;
.source "ServerInitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServerInitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerInitor.kt\ncom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;",
        "",
        "()V",
        "DEFAULT_PORT",
        "",
        "TAG",
        "",
        "fileServer",
        "Lcom/miui/videoplayer/biz/service/preload/server/FileServer;",
        "getFileServer",
        "()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;",
        "setFileServer",
        "(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V",
        "<set-?>",
        "port",
        "getPort",
        "()I",
        "setPort",
        "(I)V",
        "serverUrl",
        "getServerUrl",
        "()Ljava/lang/String;",
        "setServerUrl",
        "(Ljava/lang/String;)V",
        "destroyServer",
        "",
        "initServer",
        "startServer",
        "p",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;-><init>()V

    return-void
.end method

.method private final setPort(I)V
    .locals 0

    invoke-static {p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$setPort$cp(I)V

    return-void
.end method

.method private final startServer(I)V
    .locals 5

    move-object v0, p0

    check-cast v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    invoke-direct {v1, p1}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->setFileServer(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;->start(IZ)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-direct {v1, p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->setPort(I)V

    move-object v1, p0

    check-cast v1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p0

    check-cast v3, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v3}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->setServerUrl(Ljava/lang/String;)V

    const-string v1, "ServerInitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Server success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p0

    check-cast v3, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v3}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ServerInitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start Server error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->startServer(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final destroyServer()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;->stop()V

    :cond_1
    const/4 v1, 0x0

    check-cast v1, Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->setFileServer(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V

    return-void
.end method

.method public final getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$getFileServer$cp()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$getPort$cp()I

    move-result v0

    return v0
.end method

.method public final getServerUrl()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$getServerUrl$cp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "serverUrl"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final initServer()V
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getFileServer()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x7530

    invoke-direct {v2, v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->setPort(I)V

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    sget-object v2, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v2}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getPort()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->startServer(I)V

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFileServer(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V
    .locals 0
    .param p1    # Lcom/miui/videoplayer/biz/service/preload/server/FileServer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$setFileServer$cp(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V

    return-void
.end method

.method public final setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->access$setServerUrl$cp(Ljava/lang/String;)V

    return-void
.end method
