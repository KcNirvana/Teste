.class Lcom/kaltura/playkit/drm/WidevineModularAdapter;
.super Lcom/kaltura/playkit/drm/DrmAdapter;
.source "WidevineModularAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException;,
        Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
    }
.end annotation


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private context:Landroid/content/Context;

.field private final localDataStore:Lcom/kaltura/playkit/LocalDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WidevineModularAdapter"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/DrmAdapter;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    return-void
.end method

.method private buildDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method private checkAssetStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->parseDash(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;

    move-result-object p1

    iget-boolean p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->createMediaDrm()Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object p2

    :try_start_0
    iget-object p1, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    invoke-static {p1}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->openSessionWithKeys(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Ljava/lang/String;)Lcom/kaltura/playkit/drm/MediaDrmSession;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/kaltura/playkit/drm/MediaDrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kaltura/playkit/drm/MediaDrmSession;->close()V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->release()V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string v0, "Can\'t open session with keys"

    invoke-direct {p2, p0, v0, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException;

    const-string p2, "No Widevine PSSH in media"

    invoke-direct {p1, p0, p2, v0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createMediaDrm()Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string v2, "Could not create MediaDrm instance "

    invoke-direct {v1, p0, v2, v0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private executeKeyRequest(Ljava/lang/String;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->buildDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    sget-object p1, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "?"

    :goto_0
    const-string v0, "PlayKit/vootdev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Linux;Android "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ExoPlayerLib/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "2.8.4"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private openSessionWithKeys(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Ljava/lang/String;)Lcom/kaltura/playkit/drm/MediaDrmSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;,
            Landroid/media/MediaCryptoException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-interface {v0, p2}, Lcom/kaltura/playkit/LocalDataStore;->load(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1}, Lcom/kaltura/playkit/drm/MediaDrmSession;->open(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;)Lcom/kaltura/playkit/drm/MediaDrmSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/drm/MediaDrmSession;->restoreKeys([B)V

    return-object p1
.end method

.method private parseDash(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/kaltura/playkit/drm/SimpleDashParser;

    invoke-direct {v0}, Lcom/kaltura/playkit/drm/SimpleDashParser;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/kaltura/playkit/drm/SimpleDashParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;

    move-result-object p1

    iget-object p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException;

    const-string p2, "No Widevine PSSH in media"

    invoke-direct {p1, p0, p2, v0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string p2, "Unknown format"

    invoke-direct {p1, p0, p2, v0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string v0, "Can\'t parse local dash"

    invoke-direct {p2, p0, v0, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->parseDash(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;

    move-result-object p1

    iget-boolean p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->createMediaDrm()Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/kaltura/playkit/drm/MediaDrmSession;->open(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;)Lcom/kaltura/playkit/drm/MediaDrmSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/kaltura/playkit/drm/MediaDrmSession;->getOfflineKeyRequest([BLjava/lang/String;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p2

    sget-object v2, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerAsset: init data (b64): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    sget-object v3, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAsset: request data (b64): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/kaltura/playkit/drm/WidevineNotSupportedException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-direct {p0, p3, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->executeKeyRequest(Ljava/lang/String;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object p2

    sget-object p3, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAsset: response data (b64): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/kaltura/playkit/drm/WidevineNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v1, p2}, Lcom/kaltura/playkit/drm/MediaDrmSession;->provideKeyResponse([B)[B

    move-result-object p2

    iget-object p3, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p1}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/kaltura/playkit/LocalDataStore;->save(Ljava/lang/String;[B)V
    :try_end_3
    .catch Landroid/media/DeniedByServerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/kaltura/playkit/drm/WidevineNotSupportedException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v1}, Lcom/kaltura/playkit/drm/MediaDrmSession;->close()V

    return v0

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string p3, "Request denied by server"

    invoke-direct {p2, p0, p3, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string p3, "Can\'t send key request for registration"

    invoke-direct {p2, p0, p3, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Lcom/kaltura/playkit/drm/WidevineNotSupportedException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string p3, "Can\'t execute KeyRequest"

    invoke-direct {p2, p0, p3, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string p3, "Can\'t open session"

    invoke-direct {p2, p0, p3, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private unregisterAsset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->parseDash(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;

    move-result-object p1

    iget-boolean p2, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    invoke-static {p1}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-interface {p2, p1}, Lcom/kaltura/playkit/LocalDataStore;->load(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->createMediaDrm()Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p2
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-interface {p2, p1}, Lcom/kaltura/playkit/LocalDataStore;->remove(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;

    invoke-direct {p2, p1}, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;

    const-string v0, "Can\'t unregister -- keySetId not found"

    invoke-direct {p2, p0, v0, p1}, Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException;-><init>(Lcom/kaltura/playkit/drm/WidevineModularAdapter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public checkAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)Z
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->checkAssetStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    :try_start_1
    const-string v3, "LicenseDurationRemaining"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "PlaybackDurationRemaining"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :catch_1
    :try_start_3
    sget-object v5, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid integers in KeyStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    move-wide v5, v1

    :goto_0
    if-eqz p3, :cond_1

    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V
    :try_end_3
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$NoWidevinePSSHException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    if-eqz p3, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :cond_2
    sget-object v1, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "DRM State Error"

    invoke-virtual {v1, v2, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v8

    :catch_3
    if-eqz p3, :cond_3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :cond_3
    return v8

    :catch_4
    if-eqz p3, :cond_4

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :cond_4
    return v8
.end method

.method public refreshAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z

    move-result p1

    return p1
.end method

.method public registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onRegistered(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p2

    :catch_0
    move-exception p2

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, p2}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->unregisterAsset(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/kaltura/playkit/drm/WidevineModularAdapter$RegisterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    :cond_0
    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    sget-object v0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Failed to unregister"

    invoke-virtual {v0, v1, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    :cond_1
    return p2

    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    :cond_2
    throw p2
.end method
