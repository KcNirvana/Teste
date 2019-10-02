.class public Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;
.super Ljava/lang/Object;
.source "DummySurfaceWorkaroundTest.java"


# static fields
.field private static final PREFS_ENTRY_FINGERPRINT:Ljava/lang/String; = "Build.FINGERPRINT.DummySurface"

.field private static final TAG:Ljava/lang/String; = "DummySurfaceTest"

.field private static final URL:Ljava/lang/String; = "asset:///DRMTest/index.mpd"

.field private static fakeDrmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private static reportSent:Z

.field public static workaroundRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->fakeDrmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->workaroundRequired(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->reportSent:Z

    return p0
.end method

.method static executeTest(Landroid/content/Context;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    const-string v1, "whatever"

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    invoke-static {v1}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->getDrmSessionManager(Landroid/os/Handler;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v3, p0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    new-instance v2, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;

    invoke-direct {v2, p0, v1}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    new-instance p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const-string v0, "asset:///DRMTest/index.mpd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method private static getDrmSessionManager(Landroid/os/Handler;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->fakeDrmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    invoke-static {v1, v0, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->newWidevineInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->printStackTrace()V

    return-object v0
.end method

.method private static maybeSendReport(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->reportSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PKDeviceCapabilities"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Build.FINGERPRINT.DummySurface"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->reportSent:Z

    return-void

    :cond_1
    new-instance v0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$3;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$3;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static workaroundRequired(Landroid/content/Context;Z)V
    .locals 0

    sput-boolean p1, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->workaroundRequired:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->maybeSendReport(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
