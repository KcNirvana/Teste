.class public Lcom/miui/video/base/database/LocalVideoHistoryEntity;
.super Ljava/lang/Object;
.source "LocalVideoHistoryEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/base/database/LocalVideoHistoryEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final HISTORY_LOCAL_VIDEO:Ljava/lang/String; = "history_local_video"

.field public static final REF_MIUI_VIDEO_PLAYER:Ljava/lang/String; = "com.miui.videoplayer"


# instance fields
.field private currentAudioTrack:I

.field private currentSubtitlePath:Ljava/lang/String;

.field private duration:J

.field private extraSubtitleOffset:Ljava/lang/String;

.field private extraSubtitlePath:Ljava/lang/String;

.field private id:J

.field private imgUrl:Ljava/lang/String;

.field private isPlayComplete:Z

.field private is_hide:Ljava/lang/Boolean;

.field private last_play_time:J

.field private md5_path:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;

.field private onlineSubHash:Ljava/lang/String;

.field private onlineSubLocalPath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private playProgress:I

.field private ref:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    const-string v0, "com.miui.videoplayer"

    iput-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    const-string v1, "com.miui.videoplayer"

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    move-wide v1, p1

    iput-wide v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->id:J

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->title:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->imgUrl:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->path:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->md5_path:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->size:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->duration:J

    move v1, p11

    iput v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->playProgress:I

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitlePath:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitleOffset:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentSubtitlePath:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentAudioTrack:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubLocalPath:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubHash:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget-wide v1, p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    iget-wide v3, p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    iget-wide v2, p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->compareTo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)I

    move-result p1

    return p1
.end method

.method public getCurrentAudioTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentAudioTrack:I

    return v0
.end method

.method public getCurrentSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->duration:J

    return-wide v0
.end method

.method public getExtraSubtitleOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitleOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_hide()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLast_play_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    return-wide v0
.end method

.method public getMd5_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->md5_path:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSubHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubHash:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSubLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayProgress()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->playProgress:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->isPlayComplete:Z

    return v0
.end method

.method public setCurrentAudioTrack(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentAudioTrack:I

    return-void
.end method

.method public setCurrentSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->duration:J

    return-void
.end method

.method public setExtraSubtitleOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitleOffset:Ljava/lang/String;

    return-void
.end method

.method public setExtraSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->id:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->id:J

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIs_hide(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    return-void
.end method

.method public setIs_hide(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->is_hide:Ljava/lang/Boolean;

    return-void
.end method

.method public setLast_play_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    return-void
.end method

.method public setMd5_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->md5_path:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public setOnlineSubHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubHash:Ljava/lang/String;

    return-void
.end method

.method public setOnlineSubLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->isPlayComplete:Z

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->playProgress:I

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->size:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public toVideoEntity()Lcom/miui/video/base/database/VideoEntity;
    .locals 4

    new-instance v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/VideoEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->md5_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setMd5_path(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setSize(J)V

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    iget v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->playProgress:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setPlayProgress(J)V

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->last_play_time:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setLastPlayTime(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitlePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setExtraSubtitlePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentSubtitlePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->currentAudioTrack:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setCurrentAudioTrack(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setOnlineSubLocalPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->onlineSubHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setOnlineSubHash(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitleOffset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->extraSubtitleOffset:Ljava/lang/String;

    new-instance v3, Lcom/miui/video/base/database/LocalVideoHistoryEntity$1;

    invoke-direct {v3, p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity$1;-><init>(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setSubtitleOffsetEntities(Ljava/util/List;)V

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setMediaId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setRef(Ljava/lang/String;)V

    const-string v1, "history_local_video"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setItem_type(Ljava/lang/String;)V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setLayoutType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setShowDuration(Z)V

    const-string v1, "VideoPlayer"

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/base/utils/CLVEntitys;->createLinkHostUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    return-object v0
.end method
