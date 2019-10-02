.class public final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;
.super Ljava/lang/Object;
.source "LocalServerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalServerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalServerHelper.kt\ncom/miui/videoplayer/biz/service/preload/core/LocalServerHelper\n*L\n1#1,123:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0012\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0014\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u0004R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;",
        "",
        "()V",
        "localServerUrl",
        "",
        "getLocalServerUrl",
        "()Ljava/lang/String;",
        "localServerUrl$delegate",
        "Lkotlin/Lazy;",
        "myIServerInterface",
        "Lcom/miui/videoplayer/biz/service/preload/IServerInterface;",
        "bindSer",
        "",
        "downloadVideo",
        "list",
        "",
        "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
        "getCacheVideoPreloadId",
        "id",
        "getCacheVideoUrl",
        "Companion",
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

.field public static final Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "LocalServerHelper"

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;

.field private static final mPreloadHandler$delegate:Lkotlin/Lazy;

.field public static final openPreload:Z


# instance fields
.field private final localServerUrl$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "localServerUrl"

    const-string v4, "getLocalServerUrl()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->lock:Ljava/lang/Object;

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion$mPreloadHandler$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion$mPreloadHandler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->mPreloadHandler$delegate:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion$instance$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$localServerUrl$2;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$localServerUrl$2;-><init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->localServerUrl$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-static {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->access$getMPreloadHandler$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$1;-><init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$bindSer(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->bindSer()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getMPreloadHandler$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->mPreloadHandler$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMyIServerInterface$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)Lcom/miui/videoplayer/biz/service/preload/IServerInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    return-object p0
.end method

.method public static final synthetic access$setMyIServerInterface$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;Lcom/miui/videoplayer/biz/service/preload/IServerInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    return-void
.end method

.method private final bindSer()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final downloadVideo(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/IServerInterface;->getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LocalServerHelper"

    const-string v1, "hasCacheVideo"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->myIServerInterface:Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/IServerInterface;->getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getLocalServerUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->localServerUrl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
