.class public Lorg/videolan/libvlc/MIPlayerGetScene;
.super Ljava/lang/Object;
.source "MIPlayerGetScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;,
        Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;
    }
.end annotation


# static fields
.field public static final ERR_FIND_INTERFACE:I = -0x2

.field public static final ERR_LOAD_SDK:I = -0x1

.field public static final ERR_MEMORY:I = -0x4

.field public static final ERR_NO_FILE:I = -0x5

.field public static final ERR_PATH:I = -0x3

.field public static final RET_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MIPlayerGetScene"


# instance fields
.field private mCache:Ljava/lang/String;

.field private mInput:Ljava/lang/String;

.field private mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

.field private mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

.field private final spaceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "miffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mitranscoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "miscene"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MIPlayerGetScene"

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

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "|040"

    iput-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->spaceKey:Ljava/lang/String;

    return-void
.end method

.method private dirIsExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static native ffmpegCore(I[Ljava/lang/String;)I
.end method

.method private fileIsExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static native recogniseScene(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native sceneVersion()Ljava/lang/String;
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
.method public getScene()I
    .locals 9

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->dirIsExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/preview1.bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffmpeg -ss 00:00:03 -i %s -y -frames 1 -s 448x448 -f image2 %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mInput:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->ffmpegCore(I[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "MIPlayerGetScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ffmpeg preview1 image got error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->fileIsExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, -0x5

    if-nez v1, :cond_2

    const-string v0, "MIPlayerGetScene"

    const-string v1, "ffmpeg preview1 image does not exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/preview2.bmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ffmpeg -ss 00:00:06 -i %s -y -frames 1 -s 448x448 -f image2 %s"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mInput:Ljava/lang/String;

    invoke-direct {p0, v8}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v4}, Lorg/videolan/libvlc/MIPlayerGetScene;->ffmpegCore(I[Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "MIPlayerGetScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ffmpeg preview2 image got error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v4

    :cond_3
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->fileIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "MIPlayerGetScene"

    const-string v1, "ffmpeg preview2 image does not exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/preview3.bmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ffmpeg -sseof -00:00:01 -i %s -y -frames 1 -s 448x448 -f image2 %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mInput:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Lorg/videolan/libvlc/MIPlayerGetScene;->ffmpegCore(I[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "MIPlayerGetScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ffmpeg preview3 image got error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v2

    :cond_5
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->fileIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "MIPlayerGetScene"

    const-string v1, "ffmpeg preview3 image does not exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    return v3

    :cond_6
    const-string v1, "MIPlayerGetScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognise scene call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->recogniseScene(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v1, 0xf

    if-gt v0, v1, :cond_7

    const-string v1, "MIPlayerGetScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognise scene finished : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    invoke-interface {v1}, Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;->onCompletion()V

    goto :goto_0

    :cond_7
    const-string v1, "MIPlayerGetScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognise scene got error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-interface {v1}, Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;->onError()V

    :goto_0
    return v0

    :cond_8
    :goto_1
    const-string v0, "MIPlayerGetScene"

    const-string v1, "file and dir don\'t exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/videolan/libvlc/MIPlayerGetScene;->sceneVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIPlayerGetScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scene version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setInputOutput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mInput:Ljava/lang/String;

    iput-object p2, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mCache:Ljava/lang/String;

    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerGetScene;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    return-void
.end method
