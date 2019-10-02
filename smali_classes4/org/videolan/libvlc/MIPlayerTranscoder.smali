.class public Lorg/videolan/libvlc/MIPlayerTranscoder;
.super Ljava/lang/Object;
.source "MIPlayerTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;,
        Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;,
        Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MIPlayerTranscoder"

.field private static mIsTranscoding:Z


# instance fields
.field private mAudio:Ljava/lang/String;

.field private final mDebugString:Ljava/lang/String;

.field private final mDefaultFps:F

.field private mDuration:F

.field private mEndTime:F

.field private mInput:Ljava/lang/String;

.field private mInputFps:I

.field private mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

.field private mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

.field private mOutput:Ljava/lang/String;

.field private mOutputFrames:I

.field private mStartTime:F

.field private mTimeStamp:Ljava/lang/String;

.field private mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

.field private mTranscoderType:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

.field private mVideo:Ljava/lang/String;

.field private final spaceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "miffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mitranscoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MIPlayerTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load the library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mDefaultFps:F

    const-string v0, "|040"

    iput-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->spaceKey:Ljava/lang/String;

    const-string v0, "trace"

    iput-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mDebugString:Ljava/lang/String;

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoderType:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const/16 p1, 0xf0

    iput p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInputFps:I

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    return p0
.end method

.method static synthetic access$200(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lmiui/video/transcoder/VideoTranscoder;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    return-object p0
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    return-object p0
.end method

.method public static native ffmpegCore(I[Ljava/lang/String;)I
.end method

.method private fileIsExist(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private static native stop()V
.end method

.method private strProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    const-string v1, "|040"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public setInputFps(I)V
    .locals 0

    iput p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInputFps:I

    return-void
.end method

.method public setInputOutput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInput:Ljava/lang/String;

    iput-object p2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    return-void
.end method

.method public setInputOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mAudio:Ljava/lang/String;

    iput-object p2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mVideo:Ljava/lang/String;

    iput-object p3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    iput-object p4, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    return-void
.end method

.method public setTimePoint(FFF)V
    .locals 0

    iput p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mStartTime:F

    iput p2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mEndTime:F

    iput p3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mDuration:F

    return-void
.end method

.method public stopTranscoder()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoderType:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder;->cancelSave()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/videolan/libvlc/MIPlayerTranscoder;->stop()V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    :goto_0
    return-void
.end method

.method public transcoderVideo()I
    .locals 10

    sget-boolean v0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MIPlayerTranscoder"

    const-string v2, "got error, is in transcoding! "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;->onError()V

    return v1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    sget-object v2, Lorg/videolan/libvlc/MIPlayerTranscoder$2;->$SwitchMap$org$videolan$libvlc$MIPlayerTranscoder$TrancoderType:[I

    iget-object v3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoderType:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-virtual {v3}, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ffmpeg -i %s -acodec aac -ss 00:00:00 -to 00:00:10 -y %s -v %s"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v0, "trace"

    aput-object v0, v4, v3

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_1
    const-string v2, "MIPlayerTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAudio  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mAudio:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MIPlayerTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVideo  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mVideo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MIPlayerTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTimeStamp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MIPlayerTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOutput : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mAudio:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mVideo:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MIPlayerTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exists. The file will be covered."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    const/4 v5, 0x4

    if-eqz v2, :cond_3

    const-string v2, "ffmpeg -i %s -i %s -acodec copy -absf aac_adtstoasc -vcodec copy -timestamp %s -y -f mp4 %s -v %s"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mAudio:Ljava/lang/String;

    invoke-direct {p0, v8}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mVideo:Ljava/lang/String;

    invoke-direct {p0, v8}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    aput-object v0, v7, v3

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const-string v0, "trace"

    aput-object v0, v7, v5

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    const-string v2, "ffmpeg -i %s -i %s -acodec copy -absf aac_adtstoasc -vcodec copy -timestamp now -y -f mp4 %s -v %s"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mAudio:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    iget-object v7, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mVideo:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "trace"

    aput-object v0, v5, v4

    invoke-static {v6, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    :goto_0
    sput-boolean v1, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    const-string v0, "MIPlayerTranscoder"

    const-string v1, "input file don\'t exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_2
    const-string v0, "MIPlayerTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start time     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mStartTime:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MIPlayerTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end   time     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mEndTime:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MIPlayerTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mDuration:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    iget v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mStartTime:F

    const v2, 0x49742400    # 1000000.0f

    mul-float v0, v0, v2

    float-to-long v6, v0

    iget v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mEndTime:F

    mul-float v0, v0, v2

    float-to-long v8, v0

    new-instance v0, Lmiui/video/transcoder/VideoTranscoder;

    iget-object v4, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mInput:Ljava/lang/String;

    iget-object v5, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOutput:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lmiui/video/transcoder/VideoTranscoder;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder;->configure()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MIPlayerTranscoder$1;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder;)V

    iget-object v2, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    invoke-virtual {v2, v0}, Lmiui/video/transcoder/VideoTranscoder;->setEncodeListener(Lmiui/video/transcoder/EncodeListener;)V

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mTranscoder:Lmiui/video/transcoder/VideoTranscoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder;->doDecodeAndEncode()V

    return v1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const-string v2, "trace"

    const-string v3, "trace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "MIPlayerTranscoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input string : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->ffmpegCore(I[Ljava/lang/String;)I

    move-result v0

    sput-boolean v1, Lorg/videolan/libvlc/MIPlayerTranscoder;->mIsTranscoding:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;->onCompletion()V

    const-string v0, "MIPlayerTranscoder"

    const-string v2, "transcoder finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v2, "MIPlayerTranscoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;->onError()V

    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
