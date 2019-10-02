.class public Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;
.super Ljava/lang/Object;
.source "DeferredDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
        "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
        ">;",
        "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;"
    }
.end annotation


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

.field private drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DeferredDrmSessionManager"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    iput-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    iput-object p3, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    return-void
.end method

.method private getLicenseUrl(Lcom/kaltura/playkit/PKMediaSource;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->hasDrmParams()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->getDrmData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/PKDrmParams;

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKDrmParams;->getScheme()Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKDrmParams;->getLicenseUri()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getWidevineInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "No PSSH in media"

    invoke-virtual {p1, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    sget-object v1, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Extraction failed. schemeData isn\'t a Widevine PSSH atom, so leave it unchanged."

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v2, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    move-object p1, v1

    :cond_3
    :goto_0
    return-object p1
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->getWidevineInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    invoke-virtual {v2}, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->getStorage()Lcom/kaltura/playkit/LocalDataStore;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v3}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/kaltura/playkit/LocalDataStore;->load(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    iput-object v1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/kaltura/playkit/PKError;

    sget-object v3, Lcom/kaltura/playkit/player/PKPlayerErrorType;->DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain offline licence from LocalDataStore. Requested key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", for keysetId not found."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    invoke-interface {v0, v2}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;->onError(Lcom/kaltura/playkit/PKError;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/kaltura/playkit/drm/SessionWrapper;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {v0, p1, p2, v1}, Lcom/kaltura/playkit/drm/SessionWrapper;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-object v0
.end method

.method public canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDrmKeysLoaded()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onDrmKeysLoaded"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onDrmKeysRemoved"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onDrmKeysRestored"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onDrmSessionManagerError"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/kaltura/playkit/PKError;

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;->onError(Lcom/kaltura/playkit/PKError;)V

    return-void
.end method

.method public releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    instance-of v0, p1, Lcom/kaltura/playkit/drm/SessionWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kaltura/playkit/drm/SessionWrapper;

    invoke-virtual {p1}, Lcom/kaltura/playkit/drm/SessionWrapper;->release()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t release unknown session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMediaSource(Lcom/kaltura/playkit/PKMediaSource;)V
    .locals 3

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    iput-object v1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    return-void

    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->localMediaSource:Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->getLicenseUrl(Lcom/kaltura/playkit/PKMediaSource;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    iget-object v2, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-direct {v0, p1, v2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->mainHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->newWidevineInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/kaltura/playkit/PKError;

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v2, "This device doesn\'t support widevine modular"

    invoke-direct {v0, v1, v2, p1}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;->onError(Lcom/kaltura/playkit/PKError;)V

    :goto_1
    return-void
.end method
