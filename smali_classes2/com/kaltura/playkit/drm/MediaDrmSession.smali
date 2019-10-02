.class Lcom/kaltura/playkit/drm/MediaDrmSession;
.super Ljava/lang/Object;
.source "MediaDrmSession.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field private mSessionId:[B


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    return-void
.end method

.method static open(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;)Lcom/kaltura/playkit/drm/MediaDrmSession;
    .locals 1
    .param p0    # Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    new-instance v0, Lcom/kaltura/playkit/drm/MediaDrmSession;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/drm/MediaDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->openSession()[B

    move-result-object p0

    iput-object p0, v0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->closeSession([B)V

    return-void
.end method

.method getId()[B
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    return-object v0
.end method

.method getOfflineKeyRequest([BLjava/lang/String;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;

    invoke-direct {p2, p1}, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method provideKeyResponse([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/drm/WidevineNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method restoreKeys([B)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mMediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/MediaDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->restoreKeys([B[B)V

    return-void
.end method
