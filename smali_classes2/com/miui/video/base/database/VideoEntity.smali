.class public Lcom/miui/video/base/database/VideoEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "VideoEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/feed/entity/CoreEntity;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/base/database/VideoEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final REF_MIUI_FILEEXPLORER:Ljava/lang/String; = "com.android.fileexplorer"

.field public static final REF_MIUI_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field public static final REF_MIUI_VIDEO_PLAYER:Ljava/lang/String; = "com.miui.videoplayer"


# instance fields
.field private authorId:Ljava/lang/String;

.field private author_name:Ljava/lang/String;

.field private cpLogoUrl:Ljava/lang/String;

.field private currentAudioTrack:I

.field private currentSubtitlePath:Ljava/lang/String;

.field private duration:J

.field private eid:Ljava/lang/String;

.field private extraSubtitleOffset:Ljava/lang/String;

.field private extraSubtitlePath:Ljava/lang/String;

.field private feedId:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private isChecked:Z

.field private isShowDuration:Z

.field public isShowTimeline:Z

.field private item_type:Ljava/lang/String;

.field public lastPlayTime:J

.field private md5_path:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;

.field private onlineSubHash:Ljava/lang/String;

.field private onlineSubLocalPath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private playProgress:J

.field private playlistId:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private save_time:J

.field private size:J

.field private subtitleOffsetEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/SubtitleOffsetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public timeLineText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uploaded:I

.field private uri:Landroid/net/Uri;

.field private vid:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private video_count:I

.field private video_count_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/database/VideoEntity;->isShowDuration:Z

    iput-boolean v0, p0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->eid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->vid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/base/database/VideoEntity;)I
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_2

    iget-wide v5, p0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    iget-wide v7, p1, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v5, p0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    iget-wide v7, p1, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    return v2

    :cond_2
    iget-wide v5, p0, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    iget-wide v3, p0, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    iget-wide v5, p1, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    iget-wide v3, p1, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    cmp-long p1, v0, v3

    if-gez p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/VideoEntity;->compareTo(Lcom/miui/video/base/database/VideoEntity;)I

    move-result p1

    return p1
.end method

.method public getAuthorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->author_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCPLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->cpLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAudioTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/VideoEntity;->currentAudioTrack:I

    return v0
.end method

.method public getCurrentSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->currentSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->duration:J

    return-wide v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraSubtitleOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->extraSubtitleOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->extraSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->feedId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->item_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    return-wide v0
.end method

.method public getMd5_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->md5_path:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSubHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->onlineSubHash:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSubLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->onlineSubLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->playProgress:J

    return-wide v0
.end method

.method public getPlayProgressPercentage()I
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->playProgress:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/miui/video/base/database/VideoEntity;->duration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getSave_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/VideoEntity;->size:J

    return-wide v0
.end method

.method public getSubtitleOffsetEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/SubtitleOffsetEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->subtitleOffsetEntities:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaded()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/VideoEntity;->uploaded:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_count()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/VideoEntity;->video_count:I

    return v0
.end method

.method public getVideo_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/VideoEntity;->video_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/VideoEntity;->isChecked:Z

    return v0
.end method

.method public isShowDuration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/VideoEntity;->isShowDuration:Z

    return v0
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->authorId:Ljava/lang/String;

    return-void
.end method

.method public setAuthor_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->author_name:Ljava/lang/String;

    return-void
.end method

.method public setCPLogoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->cpLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/VideoEntity;->isChecked:Z

    return-void
.end method

.method public setCurrentAudioTrack(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/VideoEntity;->currentAudioTrack:I

    return-void
.end method

.method public setCurrentSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->currentSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/VideoEntity;->duration:J

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setExtraSubtitleOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->extraSubtitleOffset:Ljava/lang/String;

    return-void
.end method

.method public setExtraSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->extraSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setFeedId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->feedId:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setItem_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->item_type:Ljava/lang/String;

    return-void
.end method

.method public setLastPlayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    return-void
.end method

.method public setMd5_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->md5_path:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public setOnlineSubHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->onlineSubHash:Ljava/lang/String;

    return-void
.end method

.method public setOnlineSubLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->onlineSubLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayProgress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/VideoEntity;->playProgress:J

    return-void
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public setSave_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/VideoEntity;->save_time:J

    return-void
.end method

.method public setShowDuration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/VideoEntity;->isShowDuration:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/VideoEntity;->size:J

    return-void
.end method

.method public setSubtitleOffsetEntities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/SubtitleOffsetEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->subtitleOffsetEntities:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUploaded(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/VideoEntity;->uploaded:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->vid:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideo_count(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/VideoEntity;->video_count:I

    return-void
.end method

.method public setVideo_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoEntity;->video_count_text:Ljava/lang/String;

    return-void
.end method
