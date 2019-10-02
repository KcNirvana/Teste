.class public Lcom/kaltura/playkit/LocalAssetsManager;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/LocalAssetsManager$DefaultLocalDataStore;,
        Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;,
        Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;,
        Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;,
        Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;
    }
.end annotation


# static fields
.field private static final ASSET_ID_PREFIX:Ljava/lang/String; = "assetId:"

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private final context:Landroid/content/Context;

.field private localDataStore:Lcom/kaltura/playkit/LocalDataStore;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LocalAssetsManager"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/LocalAssetsManager;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/LocalAssetsManager$DefaultLocalDataStore;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/LocalAssetsManager$DefaultLocalDataStore;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/LocalAssetsManager;-><init>(Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->mainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kaltura/playkit/player/MediaSupport;->initializeDrm(Landroid/content/Context;Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/LocalAssetsManager;)Lcom/kaltura/playkit/LocalDataStore;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kaltura/playkit/LocalAssetsManager;->buildAssetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams$Scheme;)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/LocalAssetsManager;->buildMediaFormatValueAsByteArray(Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams$Scheme;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/LocalAssetsManager;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/LocalAssetsManager;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->removeAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;
    .locals 0

    invoke-static {p0, p1}, Lcom/kaltura/playkit/LocalAssetsManager;->getLocalAssetScheme(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object p0

    return-object p0
.end method

.method private static buildAssetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildMediaFormatValueAsByteArray(Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams$Scheme;)[B
    .locals 1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private checkArg(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkClearAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V
    .locals 17

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static/range {p2 .. p2}, Lcom/kaltura/playkit/LocalAssetsManager;->buildAssetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kaltura/playkit/LocalDataStore;->load(Ljava/lang/String;)[B

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v16}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :goto_0
    return-void
.end method

.method private checkDrmAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKDrmParams$Scheme;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V
    .locals 8

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p3, v0, v1}, Lcom/kaltura/playkit/drm/DrmAdapter;->getDrmAdapter(Lcom/kaltura/playkit/PKDrmParams$Scheme;Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/drm/DrmAdapter;

    move-result-object v4

    new-instance p3, Lcom/kaltura/playkit/LocalAssetsManager$3;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$3;-><init>(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/drm/DrmAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V

    invoke-direct {p0, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfParamsAreValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaSource.url"

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/LocalAssetsManager;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "localAssetPath"

    invoke-direct {p0, p2, p1}, Lcom/kaltura/playkit/LocalAssetsManager;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "assetId"

    invoke-direct {p0, p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must not be empty"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/LocalAssetsManager;->checkArg(ZLjava/lang/String;)V

    return-void
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static findSupportedDrmParams(Lcom/kaltura/playkit/PKMediaSource;)Lcom/kaltura/playkit/PKDrmParams;
    .locals 4
    .param p0    # Lcom/kaltura/playkit/PKMediaSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/kaltura/playkit/PKMediaSource;->getDrmData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/PKMediaSource;->getDrmData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/PKDrmParams;

    sget-object v2, Lcom/kaltura/playkit/LocalAssetsManager$4;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKDrmParams;->getScheme()Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/kaltura/playkit/LocalAssetsManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "Skipping unsupported PlayReady params"

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :pswitch_2
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLocalAssetScheme(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/kaltura/playkit/LocalAssetsManager;->buildAssetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/kaltura/playkit/LocalDataStore;->load(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/kaltura/playkit/LocalAssetsManager;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private isOnline(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private registerClearAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p2}, Lcom/kaltura/playkit/LocalAssetsManager;->buildAssetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/kaltura/playkit/LocalAssetsManager;->buildMediaFormatValueAsByteArray(Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams$Scheme;)[B

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/kaltura/playkit/LocalDataStore;->save(Ljava/lang/String;[B)V

    invoke-interface {p4, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onRegistered(Ljava/lang/String;)V

    return-void
.end method

.method private registerDrmAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V
    .locals 8

    new-instance v7, Lcom/kaltura/playkit/LocalAssetsManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/kaltura/playkit/LocalAssetsManager$1;-><init>(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/PKDrmParams;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;Lcom/kaltura/playkit/PKMediaFormat;)V

    invoke-direct {p0, v7}, Lcom/kaltura/playkit/LocalAssetsManager;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p2}, Lcom/kaltura/playkit/LocalAssetsManager;->buildAssetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/kaltura/playkit/LocalDataStore;->remove(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p2, v0}, Lcom/kaltura/playkit/LocalAssetsManager;->getLocalAssetScheme(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->checkClearAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->checkDrmAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKDrmParams$Scheme;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)V

    :goto_0
    return-void
.end method

.method public getLocalMediaSource(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-direct {v0, v1, p2, p1}, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;-><init>(Lcom/kaltura/playkit/LocalDataStore;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public refreshAsset(Lcom/kaltura/playkit/PKMediaSource;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKMediaSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kaltura/playkit/LocalAssetsManager;->registerAsset(Lcom/kaltura/playkit/PKMediaSource;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V

    return-void
.end method

.method public registerAsset(Lcom/kaltura/playkit/PKMediaSource;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V
    .locals 6
    .param p1    # Lcom/kaltura/playkit/PKMediaSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->checkIfParamsAreValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/LocalAssetsManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "Can\'t register/refresh when offline"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/kaltura/playkit/LocalAssetsManager;->findSupportedDrmParams(Lcom/kaltura/playkit/PKMediaSource;)Lcom/kaltura/playkit/PKDrmParams;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not register media, when PKMediaFormat and url of PKMediaSource not exist."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    if-eqz v4, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kaltura/playkit/LocalAssetsManager;->registerDrmAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3, v3, p4}, Lcom/kaltura/playkit/LocalAssetsManager;->registerClearAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V

    :goto_0
    return-void
.end method

.method public unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p2, v0}, Lcom/kaltura/playkit/LocalAssetsManager;->getLocalAssetScheme(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/LocalAssetsManager;->removeAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {v0, v1, v2}, Lcom/kaltura/playkit/drm/DrmAdapter;->getDrmAdapter(Lcom/kaltura/playkit/PKDrmParams$Scheme;Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/drm/DrmAdapter;

    move-result-object v5

    new-instance v0, Lcom/kaltura/playkit/LocalAssetsManager$2;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/kaltura/playkit/LocalAssetsManager$2;-><init>(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/drm/DrmAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/LocalAssetsManager;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method
