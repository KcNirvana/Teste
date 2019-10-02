.class public final Lcom/miui/video/biz/player/online/router/ServiceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceHolder.kt\ncom/miui/video/biz/player/online/router/ServiceHolder\n*L\n1#1,26:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/router/ServiceHolder;",
        "",
        "()V",
        "sHistoryService",
        "Lcom/miui/video/base/routers/personal/history/HistoryService;",
        "getSHistoryService",
        "()Lcom/miui/video/base/routers/personal/history/HistoryService;",
        "sHistoryService$delegate",
        "Lkotlin/Lazy;",
        "sLocalServerService",
        "Lcom/miui/video/base/routers/localserver/LocalServerService;",
        "getSLocalServerService",
        "()Lcom/miui/video/base/routers/localserver/LocalServerService;",
        "sLocalServerService$delegate",
        "biz_player_online_release"
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

.field public static final INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

.field private static final sHistoryService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sLocalServerService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sHistoryService"

    const-string v4, "getSHistoryService()Lcom/miui/video/base/routers/personal/history/HistoryService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sLocalServerService"

    const-string v4, "getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/router/ServiceHolder;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    sget-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder$sHistoryService$2;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder$sHistoryService$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->sHistoryService$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->sLocalServerService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSHistoryService()Lcom/miui/video/base/routers/personal/history/HistoryService;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->sHistoryService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/personal/history/HistoryService;

    return-object v0
.end method

.method public final getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder;->sLocalServerService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/localserver/LocalServerService;

    return-object v0
.end method
