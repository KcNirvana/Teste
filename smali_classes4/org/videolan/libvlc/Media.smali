.class public Lorg/videolan/libvlc/Media;
.super Lorg/videolan/libvlc/VLCObject;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$Stats;,
        Lorg/videolan/libvlc/Media$Slave;,
        Lorg/videolan/libvlc/Media$UnknownTrack;,
        Lorg/videolan/libvlc/Media$SubtitleTrack;,
        Lorg/videolan/libvlc/Media$VideoTrack;,
        Lorg/videolan/libvlc/Media$AudioTrack;,
        Lorg/videolan/libvlc/Media$Track;,
        Lorg/videolan/libvlc/Media$ParsedStatus;,
        Lorg/videolan/libvlc/Media$Parse;,
        Lorg/videolan/libvlc/Media$State;,
        Lorg/videolan/libvlc/Media$Meta;,
        Lorg/videolan/libvlc/Media$Type;,
        Lorg/videolan/libvlc/Media$EventListener;,
        Lorg/videolan/libvlc/Media$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/Media$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARSE_STATUS_INIT:I = 0x0

.field private static final PARSE_STATUS_PARSED:I = 0x2

.field private static final PARSE_STATUS_PARSING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LibVLC/Media"


# instance fields
.field private mCodecOptionSet:Z

.field private mDuration:J

.field private mFileCachingSet:Z

.field private final mNativeMetas:[Ljava/lang/String;

.field private mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

.field private mNetworkCachingSet:Z

.field private mParseStatus:I

.field private mState:I

.field private mSubItems:Lorg/videolan/libvlc/MediaList;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;IJJ)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    invoke-direct/range {p0 .. p6}, Lorg/videolan/libvlc/Media;->nativeNewFromfd(Lorg/videolan/libvlc/LibVLC;IJJ)V

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/videolan/libvlc/util/VLCUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    invoke-static {p2}, Lorg/videolan/libvlc/util/VLCUtil;->encodeVLCUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/Media;->nativeNewFromLocation(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;JJ)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    invoke-direct/range {p0 .. p6}, Lorg/videolan/libvlc/Media;->nativeNewFromFd(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;JJ)V

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/videolan/libvlc/util/VLCUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeNewFromPath(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/videolan/libvlc/util/VLCUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/MediaList;I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/VLCObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeNewFromMediaList(Lorg/videolan/libvlc/MediaList;I)V

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetMrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/videolan/libvlc/util/VLCUtil;->UriFromMrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MediaList should be locked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaList is null or released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createAudioTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)Lorg/videolan/libvlc/Media$Track;
    .locals 13

    new-instance v12, Lorg/videolan/libvlc/Media$AudioTrack;

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lorg/videolan/libvlc/Media$AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IILorg/videolan/libvlc/Media$1;)V

    return-object v12
.end method

.method private static createSlaveFromNative(IILjava/lang/String;)Lorg/videolan/libvlc/Media$Slave;
    .locals 1

    new-instance v0, Lorg/videolan/libvlc/Media$Slave;

    invoke-direct {v0, p0, p1, p2}, Lorg/videolan/libvlc/Media$Slave;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method private static createStatsFromNative(IFIFIIIIIIIIIIF)Lorg/videolan/libvlc/Media$Stats;
    .locals 17

    new-instance v16, Lorg/videolan/libvlc/Media$Stats;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/videolan/libvlc/Media$Stats;-><init>(IFIFIIIIIIIIIIF)V

    return-object v16
.end method

.method private static createSubtitleTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/Media$Track;
    .locals 12

    new-instance v11, Lorg/videolan/libvlc/Media$SubtitleTrack;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/videolan/libvlc/Media$SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    return-object v11
.end method

.method private static createUnknownTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/Media$Track;
    .locals 11

    new-instance v10, Lorg/videolan/libvlc/Media$UnknownTrack;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/videolan/libvlc/Media$UnknownTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    return-object v10
.end method

.method private static createVideoTrackFromNative(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIIII)Lorg/videolan/libvlc/Media$Track;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    new-instance v18, Lorg/videolan/libvlc/Media$VideoTrack;

    move-object/from16 v0, v18

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/videolan/libvlc/Media$VideoTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIIIILorg/videolan/libvlc/Media$1;)V

    return-object v18
.end method

.method private static getMediaCodecModule()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v0, :cond_0

    const-string v0, "mediacodec_ndk"

    goto :goto_0

    :cond_0
    const-string v0, "mediacodec_jni"

    :goto_0
    return-object v0
.end method

.method private getTracks()[Lorg/videolan/libvlc/Media$Track;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    monitor-exit p0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private native nativeAddOption(Ljava/lang/String;)V
.end method

.method private native nativeAddSlave(IILjava/lang/String;)V
.end method

.method private native nativeClearSlaves()V
.end method

.method private native nativeGetDuration()J
.end method

.method private native nativeGetMeta(I)Ljava/lang/String;
.end method

.method private native nativeGetMrl()Ljava/lang/String;
.end method

.method private native nativeGetSlaves()[Lorg/videolan/libvlc/Media$Slave;
.end method

.method private native nativeGetState()I
.end method

.method private native nativeGetStats()Lorg/videolan/libvlc/Media$Stats;
.end method

.method private native nativeGetTracks()[Lorg/videolan/libvlc/Media$Track;
.end method

.method private native nativeGetType()I
.end method

.method private native nativeNewFromFd(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;JJ)V
.end method

.method private native nativeNewFromLocation(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeNewFromMediaList(Lorg/videolan/libvlc/MediaList;I)V
.end method

.method private native nativeNewFromPath(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeNewFromfd(Lorg/videolan/libvlc/LibVLC;IJJ)V
.end method

.method private native nativeParse(I)Z
.end method

.method private native nativeParseAsync(II)Z
.end method

.method private native nativeRelease()V
.end method

.method private declared-synchronized postParse()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeTracks:[Lorg/videolan/libvlc/Media$Track;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addOption(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, ":codec="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    :cond_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    if-nez v0, :cond_1

    const-string v0, ":network-caching="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    :cond_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    if-nez v0, :cond_2

    const-string v0, ":file-caching="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeAddOption(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addSlave(Lorg/videolan/libvlc/Media$Slave;)V
    .locals 2

    iget v0, p1, Lorg/videolan/libvlc/Media$Slave;->type:I

    iget v1, p1, Lorg/videolan/libvlc/Media$Slave;->priority:I

    iget-object p1, p1, Lorg/videolan/libvlc/Media$Slave;->uri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/Media;->nativeAddSlave(IILjava/lang/String;)V

    return-void
.end method

.method public clearSlaves()V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeClearSlaves()V

    return-void
.end method

.method public getDuration()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    monitor-exit p0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetDuration()J

    move-result-wide v0

    monitor-enter p0

    :try_start_1
    iput-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    iget-wide v0, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getMeta(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aget-object p1, v0, p1

    monitor-exit p0

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeGetMeta(I)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    aput-object v0, v1, p1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSlaves()[Lorg/videolan/libvlc/Media$Slave;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetSlaves()[Lorg/videolan/libvlc/Media$Slave;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    monitor-exit p0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetState()I

    move-result v0

    monitor-enter p0

    :try_start_1
    iput v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    iget v0, p0, Lorg/videolan/libvlc/Media;->mState:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getStats()Lorg/videolan/libvlc/Media$Stats;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetStats()Lorg/videolan/libvlc/Media$Stats;

    move-result-object v0

    return-object v0
.end method

.method public getTrack(I)Lorg/videolan/libvlc/Media$Track;
    .locals 2

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->getTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackCount()I
    .locals 1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->getTracks()[Lorg/videolan/libvlc/Media$Track;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    monitor-exit p0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeGetType()I

    move-result v0

    monitor-enter p0

    :try_start_1
    iput v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    iget v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParsed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

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

.method public bridge synthetic isReleased()Z
    .locals 1

    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/Media$Event;
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 p4, 0x5

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->postParse()V

    new-instance p4, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/Media$Event;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p4

    :pswitch_1
    const-wide/16 p2, -0x1

    :try_start_1
    iput-wide p2, p0, Lorg/videolan/libvlc/Media;->mDuration:J

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    iput p2, p0, Lorg/videolan/libvlc/Media;->mState:I

    :goto_0
    new-instance p2, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {p2, p1}, Lorg/videolan/libvlc/Media$Event;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    long-to-int p4, p2

    if-ltz p4, :cond_2

    const/16 p5, 0x19

    if-ge p4, p5, :cond_2

    :try_start_2
    iget-object p5, p0, Lorg/videolan/libvlc/Media;->mNativeMetas:[Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p6, p5, p4

    :cond_2
    new-instance p4, Lorg/videolan/libvlc/Media$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/Media$Event;-><init>(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p4

    :goto_1
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/Media;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/Media$Event;

    move-result-object p1

    return-object p1
.end method

.method protected onReleaseNative()V
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->nativeRelease()V

    return-void
.end method

.method public parse()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->parse(I)Z

    move-result v0

    return v0
.end method

.method public parse(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/2addr v0, v2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/Media;->nativeParse(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/Media;->postParse()V

    return v2

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public parseAsync()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->parseAsync(I)Z

    move-result v0

    return v0
.end method

.method public parseAsync(I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/Media;->parseAsync(II)Z

    move-result p1

    return p1
.end method

.method public parseAsync(II)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    or-int/2addr v0, v2

    iput v0, p0, Lorg/videolan/libvlc/Media;->mParseStatus:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Media;->nativeParseAsync(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected setDefaultMediaPlayerOptions()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/libvlc/Media;->mCodecOptionSet:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":demux=dvdnav,any"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setEventListener(Lorg/videolan/libvlc/Media$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    return-void
.end method

.method public setHWDecoderEnabled(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getDecoderFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    :goto_0
    sget-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    :cond_1
    sget-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-eq p1, v0, :cond_9

    sget-object v0, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mFileCachingSet:Z

    if-nez v0, :cond_3

    const-string v0, ":file-caching=1500"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mNetworkCachingSet:Z

    if-nez v0, :cond_4

    const-string v0, ":network-caching=1500"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":codec="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-eq p1, v1, :cond_5

    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-static {}, Lorg/videolan/libvlc/Media;->getMediaCodecModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p2, :cond_8

    sget-object p2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-eq p1, p2, :cond_7

    sget-object p2, Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/util/HWDecoderUtil$Decoder;

    if-ne p1, p2, :cond_8

    :cond_7
    const-string p1, "iomx,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string p1, "all"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    const-string p1, ":codec=all"

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    return-void
.end method

.method public subItems()Lorg/videolan/libvlc/MediaList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->retain()Z

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/Media;)V

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->retain()Z

    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSubItems:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
