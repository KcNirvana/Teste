.class Lcom/kaltura/playkit/drm/SessionWrapper;
.super Ljava/lang/Object;
.source "DeferredDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private realDrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p3, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/drm/SessionWrapper;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCrypto()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iput-object v0, p0, Lcom/kaltura/playkit/drm/SessionWrapper;->realDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method
