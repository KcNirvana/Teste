.class public final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;
.super Ljava/lang/Object;
.source "LocalServerManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalServerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalServerManager.kt\ncom/miui/videoplayer/biz/service/preload/core/LocalServerManager\n*L\n1#1,215:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0011H\u0002J\u0014\u0010\u0015\u001a\u00020\u00112\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0006J\u0014\u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;",
        "",
        "()V",
        "TAG",
        "",
        "downloadList",
        "",
        "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
        "getDownloadList",
        "()Ljava/util/List;",
        "mPreloadHandler",
        "Landroid/os/Handler;",
        "getMPreloadHandler",
        "()Landroid/os/Handler;",
        "mPreloadHandler$delegate",
        "Lkotlin/Lazy;",
        "addDownloadVideo",
        "",
        "entity",
        "Lcom/miui/video/base/model/PreloadOriginVideoEntity;",
        "downloadVideo",
        "preDownload",
        "entitys",
        "preDownloadForItemId",
        "Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

.field public static final TAG:Ljava/lang/String; = "LocalServerManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mPreloadHandler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mPreloadHandler"

    const-string v4, "getMPreloadHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-direct {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$mPreloadHandler$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$mPreloadHandler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->mPreloadHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addDownloadVideo(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->addDownloadVideo(Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V

    return-void
.end method

.method public static final synthetic access$downloadVideo(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadVideo()V

    return-void
.end method

.method private final addDownloadVideo(Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->getMPreloadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    invoke-direct {v1, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;-><init>(Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final downloadVideo()V
    .locals 3

    const-string v0, "LocalServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "video, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->downloadVideo(Ljava/util/List;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->getMPreloadHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDownloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method public final getMPreloadHandler()Landroid/os/Handler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->mPreloadHandler$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final preDownload(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/model/PreloadOriginVideoEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final preDownloadForItemId(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
