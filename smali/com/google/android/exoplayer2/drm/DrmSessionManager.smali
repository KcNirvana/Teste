.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# virtual methods
.method public abstract acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end method

.method public abstract canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
.end method

.method public abstract releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
.end method
