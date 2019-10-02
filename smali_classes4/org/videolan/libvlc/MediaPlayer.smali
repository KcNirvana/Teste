.class public Lorg/videolan/libvlc/MediaPlayer;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaPlayer$Equalizer;,
        Lorg/videolan/libvlc/MediaPlayer$TrackDescription;,
        Lorg/videolan/libvlc/MediaPlayer$Chapter;,
        Lorg/videolan/libvlc/MediaPlayer$Title;,
        Lorg/videolan/libvlc/MediaPlayer$Navigate;,
        Lorg/videolan/libvlc/MediaPlayer$Position;,
        Lorg/videolan/libvlc/MediaPlayer$EventListener;,
        Lorg/videolan/libvlc/MediaPlayer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/MediaPlayer$Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioDigitalOutputEnabled:Z

.field private mAudioOutput:Ljava/lang/String;

.field private mAudioOutputDevice:Ljava/lang/String;

.field private mAudioPlugOutputDevice:Ljava/lang/String;

.field private final mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioPlugRegistered:Z

.field private mAudioReset:Z

.field private mListenAudioPlug:Z

.field private mMedia:Lorg/videolan/libvlc/Media;

.field private mPlayRequested:Z

.field private mPlaying:Z

.field private mVoutCount:I

.field private final mWindow:Lorg/videolan/libvlc/AWindow;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    iput v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    const-string v1, "stereo"

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    new-instance v1, Lorg/videolan/libvlc/AWindow;

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v1, v2}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/AWindow;)V

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/Media;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/VLCObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    iput v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    const-string v1, "stereo"

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    new-instance v1, Lorg/videolan/libvlc/AWindow;

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v1, v2}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromMedia(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/AWindow;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media is null or released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$200(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    return p0
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    return p0
.end method

.method static synthetic access$400(Lorg/videolan/libvlc/MediaPlayer;)I
    .locals 0

    iget p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    return p0
.end method

.method static synthetic access$500(Lorg/videolan/libvlc/MediaPlayer;[I)J
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->getEncodingFlags([I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lorg/videolan/libvlc/MediaPlayer;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->updateAudioOutputDevice(JLjava/lang/String;)V

    return-void
.end method

.method private createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$3;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaPlayer$3;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    return-object v0
.end method

.method private createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaPlayer$2;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    return-object v0
.end method

.method private static createChapterFromNative(JJLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 8

    new-instance v7, Lorg/videolan/libvlc/MediaPlayer$Chapter;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/videolan/libvlc/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    return-object v7
.end method

.method private static createTitleFromNative(JLjava/lang/String;I)Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 1

    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Title;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Title;-><init>(JLjava/lang/String;I)V

    return-object v0
.end method

.method private static createTrackDescriptionFromNative(ILjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 2

    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;-><init>(ILjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    return-object v0
.end method

.method private getEncodingFlags([I)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    invoke-direct {p0, v4}, Lorg/videolan/libvlc/MediaPlayer;->isEncoded(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private isAudioTrack()Z
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    const-string v1, "android_audiotrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEncoded(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native nativeAddSlave(ILjava/lang/String;Z)Z
.end method

.method private native nativeGetAspectRatio()Ljava/lang/String;
.end method

.method private native nativeGetAudioDelay()J
.end method

.method private native nativeGetAudioTrack()I
.end method

.method private native nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetAudioTracksCount()I
.end method

.method private native nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
.end method

.method private native nativeGetScale()F
.end method

.method private native nativeGetSpuDelay()J
.end method

.method private native nativeGetSpuTrack()I
.end method

.method private native nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetSpuTracksCount()I
.end method

.method private native nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
.end method

.method private native nativeGetVideoTrack()I
.end method

.method private native nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetVideoTracksCount()I
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/AWindow;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/AWindow;)V
.end method

.method private native nativePlay()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAspectRatio(Ljava/lang/String;)V
.end method

.method private native nativeSetAudioDelay(J)Z
.end method

.method private native nativeSetAudioOutput(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioOutputDevice(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioTrack(I)Z
.end method

.method private native nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
.end method

.method private native nativeSetMedia(Lorg/videolan/libvlc/Media;)V
.end method

.method private native nativeSetRenderer(Lorg/videolan/libvlc/RendererItem;)I
.end method

.method private native nativeSetScale(F)V
.end method

.method private native nativeSetSpuDelay(J)Z
.end method

.method private native nativeSetSpuTrack(I)Z
.end method

.method private native nativeSetVideoFilter(Ljava/lang/String;)Z
.end method

.method private native nativeSetVideoTitleDisplay(II)V
.end method

.method private native nativeSetVideoTrack(I)Z
.end method

.method private native nativeStop()V
.end method

.method private native nativeUpdateViewpoint(FFFFZ)Z
.end method

.method private registerAudioPlug(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlugV23(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlugV21(Z)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    return-void
.end method

.method private registerAudioPlugV21(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v0, v0, Lorg/videolan/libvlc/LibVLC;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v1, v1, Lorg/videolan/libvlc/LibVLC;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object p1, p1, Lorg/videolan/libvlc/LibVLC;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioPlugV23(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v0, v0, Lorg/videolan/libvlc/LibVLC;->mAppContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    iget-boolean p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    if-nez p2, :cond_1

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    :cond_2
    iget-boolean p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateAudioOutputDevice(JLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoded:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p3, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addSlave(ILandroid/net/Uri;Z)Z
    .locals 0

    invoke-static {p2}, Lorg/videolan/libvlc/util/VLCUtil;->encodeVLCUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->nativeAddSlave(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public addSlave(ILjava/lang/String;Z)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized forceAudioDigitalEncodings([I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->getEncodingFlags([I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAspectRatio()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAspectRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDelay()J
    .locals 2

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTrack()I

    move-result v0

    return v0
.end method

.method public getAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTracksCount()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracksCount()I

    move-result v0

    return v0
.end method

.method public native getChapter()I
.end method

.method public getChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentVideoTrack()Lorg/videolan/libvlc/Media$VideoTrack;
    .locals 6

    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getTrackCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v3, v2}, Lorg/videolan/libvlc/Media;->getTrack(I)Lorg/videolan/libvlc/Media$Track;

    move-result-object v3

    iget v4, v3, Lorg/videolan/libvlc/Media$Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    check-cast v3, Lorg/videolan/libvlc/Media$VideoTrack;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public native getLength()J
.end method

.method public declared-synchronized getMedia()Lorg/videolan/libvlc/Media;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->retain()Z

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getRate()F
.end method

.method public getScale()F
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetScale()F

    move-result v0

    return v0
.end method

.method public getSpuDelay()J
    .locals 2

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpuTrack()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTrack()I

    move-result v0

    return v0
.end method

.method public getSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getSpuTracksCount()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracksCount()I

    move-result v0

    return v0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public getTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;

    move-result-object v0

    return-object v0
.end method

.method public getVLCVout()Lorg/videolan/libvlc/IVLCVout;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    return-object v0
.end method

.method public getVideoTrack()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTrack()I

    move-result v0

    return v0
.end method

.method public getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTracksCount()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracksCount()I

    move-result v0

    return v0
.end method

.method public native getVolume()I
.end method

.method public declared-synchronized hasMedia()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method public native isSeekable()Z
.end method

.method public native navigate(I)V
.end method

.method public native nextChapter()I
.end method

.method protected declared-synchronized onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Event;
    .locals 13

    move-object v1, p0

    move v0, p1

    move-wide v4, p2

    move/from16 v2, p10

    monitor-enter p0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :pswitch_1
    :try_start_0
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_2
    :try_start_1
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_3
    :try_start_2
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_4
    :try_start_3
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_5
    :try_start_4
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_6
    :try_start_5
    new-instance v9, Lorg/videolan/libvlc/MediaPlayer$Event;

    move-object v2, v9

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJJLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v9

    :pswitch_7
    :try_start_6
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_8
    :try_start_7
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_9
    :try_start_8
    new-instance v12, Lorg/videolan/libvlc/MediaPlayer$Event;

    move-object v2, v12

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJJJJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v12

    :pswitch_a
    :try_start_9
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_b
    :try_start_a
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    move-object/from16 p6, v2

    move/from16 p7, p1

    move-wide/from16 p8, p2

    move-wide/from16 p10, p4

    invoke-direct/range {p6 .. p11}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_c
    long-to-int v2, v4

    :try_start_b
    iput v2, v1, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_d
    :try_start_c
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_e
    :try_start_d
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_f
    :try_start_e
    new-instance v3, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v3, p1, v2}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object v3

    :pswitch_10
    :try_start_f
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_11
    :try_start_10
    iput v3, v1, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_12
    :try_start_11
    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_13
    :try_start_12
    new-instance v3, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v3, p1, v2}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-object v3

    :pswitch_14
    :try_start_13
    iput v3, v1, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_12
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/MediaPlayer;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Event;

    move-result-object p1

    return-object p1
.end method

.method protected onReleaseNative()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    :cond_0
    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeRelease()V

    return-void
.end method

.method public native pause()V
.end method

.method public play()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    :cond_2
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    :cond_3
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativePlay()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native previousChapter()I
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioDelay(J)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setAudioDigitalOutputEnabled(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    iput-boolean p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioOutput(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    move-result v0

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    :cond_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAudioOutputDevice(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setAudioTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioTrack(I)Z

    move-result p1

    return p1
.end method

.method public native setChapter(I)V
.end method

.method public setEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native setLooping(Z)Z
.end method

.method public setMedia(Lorg/videolan/libvlc/Media;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->setDefaultMediaPlayerOptions()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media is released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetMedia(Lorg/videolan/libvlc/Media;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    :cond_3
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public native setPosition(FZ)V
.end method

.method public native setRate(F)V
.end method

.method public setRenderer(Lorg/videolan/libvlc/RendererItem;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetRenderer(Lorg/videolan/libvlc/RendererItem;)I

    move-result p1

    return p1
.end method

.method public setScale(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetScale(F)V

    return-void
.end method

.method public native setSlowMotionTime(JJ)Z
.end method

.method public setSpuDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuDelay(J)Z

    move-result p1

    return p1
.end method

.method public setSpuTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuTrack(I)Z

    move-result p1

    return p1
.end method

.method public native setSurface(Z)Z
.end method

.method public native setTime(JZ)J
.end method

.method public native setTitle(I)V
.end method

.method public setVideoFilter(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoFilter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoTitleDisplay(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTitleDisplay(II)V

    return-void
.end method

.method public setVideoTrack(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTrack(I)Z

    move-result p1

    return p1
.end method

.method public setVideoTrackEnabled(Z)V
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget v4, v3, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    if-eq v4, v0, :cond_1

    iget p1, v3, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public native setVolume(I)I
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeStop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateViewpoint(FFFFZ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/videolan/libvlc/MediaPlayer;->nativeUpdateViewpoint(FFFFZ)Z

    move-result p1

    return p1
.end method
