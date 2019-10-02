.class public final Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceHolder.kt\ncom/miui/videoplayer/biz/service/preload/router/ServiceHolder\n*L\n1#1,21:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;",
        "",
        "()V",
        "mOnlinePlayerService",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;",
        "getMOnlinePlayerService",
        "()Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;",
        "mOnlinePlayerService$delegate",
        "Lkotlin/Lazy;",
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

.field public static final INSTANCE:Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;

.field private static final mOnlinePlayerService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mOnlinePlayerService"

    const-string v4, "getMOnlinePlayerService()Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;

    invoke-direct {v0}, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder$mOnlinePlayerService$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder$mOnlinePlayerService$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->mOnlinePlayerService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMOnlinePlayerService()Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->mOnlinePlayerService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    return-object v0
.end method
