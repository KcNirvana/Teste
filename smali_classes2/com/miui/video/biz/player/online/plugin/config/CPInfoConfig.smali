.class public final Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;
.super Ljava/lang/Object;
.source "CPInfoConfig.kt"

# interfaces
.implements Lcom/miui/video/base/common/internal/SingletonClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Data;,
        Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;,
        Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;,
        Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCPInfoConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CPInfoConfig.kt\ncom/miui/video/biz/player/online/plugin/config/CPInfoConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n238#2,2:103\n*E\n*S KotlinDebug\n*F\n+ 1 CPInfoConfig.kt\ncom/miui/video/biz/player/online/plugin/config/CPInfoConfig\n*L\n57#1,2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000  2\u00020\u0001:\u0004\u001e\u001f !B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00060\u0006R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;",
        "Lcom/miui/video/base/common/internal/SingletonClass;",
        "()V",
        "TAG",
        "",
        "mConfig",
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;",
        "mContext",
        "Landroid/content/Context;",
        "buildDataFile",
        "folder",
        "file",
        "findCP",
        "Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;",
        "id",
        "getApkUrl",
        "getCPLink",
        "getCopyRightIcon",
        "getCpName",
        "getDesc",
        "getIcon",
        "init",
        "",
        "context",
        "isLoaded",
        "",
        "load",
        "force",
        "l",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;",
        "CPConfig",
        "CPInfo",
        "Companion",
        "Data",
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
# The value of this static final field might be set in the static constructor
.field private static final ASSETS_CNF_FILE:Ljava/lang/String; = "default_cp.json"

# The value of this static final field might be set in the static constructor
.field private static final CACHED_CNF_FILE:Ljava/lang/String; = "cp.json"

.field public static final Companion:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;

# The value of this static final field might be set in the static constructor
.field private static final PLUGIN_ROOT:Ljava/lang/String; = "external_package"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->Companion:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$Companion;

    const-string v0, "cp.json"

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->CACHED_CNF_FILE:Ljava/lang/String;

    const-string v0, "default_cp.json"

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->ASSETS_CNF_FILE:Ljava/lang/String;

    const-string v0, "external_package"

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->PLUGIN_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CPInfoConfig"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$buildDataFile(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->buildDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getASSETS_CNF_FILE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->ASSETS_CNF_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCACHED_CNF_FILE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->CACHED_CNF_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMConfig$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    if-nez p0, :cond_0

    const-string v0, "mConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;)Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getPLUGIN_ROOT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->PLUGIN_ROOT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMConfig$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    return-void
.end method

.method public static final synthetic access$setMContext$p(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final buildDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->createDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "File(dir, file).absolutePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;
    .locals 3

    move-object v0, p0

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->Companion:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo$Companion;->getNONE$biz_player_online_release()Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    if-nez v0, :cond_1

    const-string v1, "mConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->Companion:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo$Companion;->getNONE$biz_player_online_release()Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object v1

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final getApkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getApk_url()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCPLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getCp_link()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCopyRightIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getTop_right_logo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCpName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getDesc()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->findCP(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPInfo;->getApp_icon()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->TAG:Ljava/lang/String;

    const-string v1, "init CPInfoConfig"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;-><init>(Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    return-void
.end method

.method public final isLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    if-nez v0, :cond_0

    const-string v1, "mConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final load(Z)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$load$1;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$load$1;-><init>()V

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->load(ZLcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V

    return-void
.end method

.method public final load(ZLcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V
    .locals 2
    .param p2    # Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig;->mConfig:Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;

    if-nez v0, :cond_0

    const-string v1, "mConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/config/CPInfoConfig$CPConfig;->loadAsync(ZLcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V

    return-void
.end method
