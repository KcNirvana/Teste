.class public abstract Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;
.super Ljava/lang/Object;
.source "JsonConfigLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;,
        Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;,
        Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonConfigLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonConfigLoader.kt\ncom/miui/video/biz/player/online/plugin/config/JsonConfigLoader\n*L\n1#1,171:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0003567B\u001f\u0008\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001d\u001a\u00020\u001eH$J\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0016j\u0008\u0012\u0004\u0012\u00028\u0000`\u0017J\u0016\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001aJ+\u0010$\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'\u00a2\u0006\u0002\u0010(J#\u0010)\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010*\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020\nH\u0002J\u0018\u0010.\u001a\u00020\u001e2\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u000100H\u0004J\u0018\u00101\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001002\u0006\u00102\u001a\u00020\u0006H$J\u0018\u00103\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001002\u0006\u00102\u001a\u00020\u0006H$J\u0008\u00104\u001a\u00020\u001eH\u0002R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u000e\u0010\u0011\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0016j\u0008\u0012\u0004\u0012\u00028\u0000`\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0018\u00010\u001cR\u0008\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;",
        "T",
        "",
        "context",
        "Landroid/content/Context;",
        "cachedFile",
        "",
        "assetsFile",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "FROM_SOURCE_DEFAULT",
        "",
        "getFROM_SOURCE_DEFAULT",
        "()I",
        "FROM_SOURCE_LOCAL",
        "getFROM_SOURCE_LOCAL",
        "FROM_SOURCE_SERVER",
        "getFROM_SOURCE_SERVER",
        "TAG",
        "mAssetsConfFile",
        "mCachedConfFile",
        "mContext",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mListeners",
        "Lcom/miui/video/biz/player/online/common/ListenerHolder;",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;",
        "mTask",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;",
        "fetchServerConfig",
        "",
        "getDataList",
        "loadAsync",
        "force2UpdateServer",
        "",
        "callback",
        "loadJsonObjectAssets",
        "assetsCnfFile",
        "typeOfT",
        "Ljava/lang/reflect/Type;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "loadJsonObjectFile",
        "cachedCnfFile",
        "(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "notifyLoaded",
        "from",
        "onFetchedServerConfig",
        "body",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;",
        "parseAssets",
        "aFile",
        "parseFile",
        "save2DataCacheFile",
        "LoadTask",
        "OnLoadListener",
        "Type",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final FROM_SOURCE_DEFAULT:I

.field private final FROM_SOURCE_LOCAL:I

.field private final FROM_SOURCE_SERVER:I

.field private final TAG:Ljava/lang/String;

.field private mAssetsConfFile:Ljava/lang/String;

.field private mCachedConfFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/player/online/common/ListenerHolder<",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader<",
            "TT;>.",
            "LoadTask;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JsonConfigLoader"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->TAG:Ljava/lang/String;

    const/16 v0, 0x65

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_LOCAL:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_SERVER:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_DEFAULT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/video/biz/player/online/common/ListenerHolder;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/common/ListenerHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mCachedConfFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mAssetsConfFile:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMAssetsConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mAssetsConfFile:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMCachedConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mCachedConfFile:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMDataList$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$notifyLoaded(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->notifyLoaded(I)V

    return-void
.end method

.method public static final synthetic access$setMAssetsConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mAssetsConfFile:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMCachedConfFile$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mCachedConfFile:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMDataList$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private final notifyLoaded(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;

    invoke-direct {v1, p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;-><init>(I)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->notifyListener(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    return-void
.end method

.method private final save2DataCacheFile()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;->setData(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/video/base/common/internal/GlobalGson;->get()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mCachedConfFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FileUtils;->saveFile([BLjava/lang/String;)Z

    return-void

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract fetchServerConfig()V
.end method

.method public final getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFROM_SOURCE_DEFAULT()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_DEFAULT:I

    return v0
.end method

.method public final getFROM_SOURCE_LOCAL()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_LOCAL:I

    return v0
.end method

.method public final getFROM_SOURCE_SERVER()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_SERVER:I

    return v0
.end method

.method public final loadAsync(ZLcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V
    .locals 1
    .param p2    # Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->addListener(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->TAG:Ljava/lang/String;

    const-string v0, "The existent task!"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->cancel()V

    :cond_1
    new-instance p2, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;-><init>(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Z)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mTask:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->start()V

    return-void
.end method

.method public final loadJsonObjectAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsCnfFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    check-cast p1, Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/miui/video/base/common/internal/GlobalGson;->get()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :cond_0
    return-object v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :cond_1
    throw p2
.end method

.method public final loadJsonObjectFile(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cachedCnfFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->loadFile(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"utf-8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {}, Lcom/miui/video/base/common/internal/GlobalGson;->get()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onFetchedServerConfig(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;->getData()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;->getData()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->mDataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->save2DataCacheFile()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->TAG:Ljava/lang/String;

    const-string v0, "failed to query server!"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->FROM_SOURCE_SERVER:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->notifyLoaded(I)V

    return-void
.end method

.method protected abstract parseAssets(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected abstract parseFile(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$Type<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
