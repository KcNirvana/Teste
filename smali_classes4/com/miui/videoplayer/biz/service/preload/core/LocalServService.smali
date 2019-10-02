.class public Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;
.super Landroid/app/Service;
.source "LocalServService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalServService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalServService.kt\ncom/miui/videoplayer/biz/service/preload/core/LocalServService\n*L\n1#1,63:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000=\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0004\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;",
        "Landroid/app/Service;",
        "()V",
        "binder",
        "com/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1",
        "Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;",
        "mServerPort",
        "",
        "getMServerPort",
        "()I",
        "mServerPort$delegate",
        "Lkotlin/Lazy;",
        "mServerUrl",
        "",
        "getMServerUrl",
        "()Ljava/lang/String;",
        "mServerUrl$delegate",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onDestroy",
        "",
        "onUnbind",
        "",
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

.field public static final Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$Companion;

.field public static final TAG:Ljava/lang/String; = "LocalServService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binder:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;

.field private final mServerPort$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mServerUrl$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mServerPort"

    const-string v4, "getMServerPort()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mServerUrl"

    const-string v4, "getMServerUrl()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->mServerPort$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerUrl$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerUrl$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->mServerUrl$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;-><init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;)V

    iput-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->binder:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;

    return-void
.end method


# virtual methods
.method public final getMServerPort()I
    .locals 3

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->mServerPort$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMServerUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->mServerUrl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "LocalServService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->initServer()V

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->binder:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LocalServService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->destroyServer()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LocalServService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
