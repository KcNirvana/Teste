.class public Lcom/miui/video/base/database/LocalVideoEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "LocalVideoEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/feed/entity/CoreEntity;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/base/database/LocalVideoEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final REF_MIUI_FILEEXPLORER:Ljava/lang/String; = "com.android.fileexplorer"

.field public static final REF_MIUI_FILEEXPLORER_GLOBAL:Ljava/lang/String; = "com.mi.android.globalFileexplorer"

.field public static final REF_MIUI_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field public static final REF_MIUI_VIDEO_PLAYER:Ljava/lang/String; = "com.miui.videoplayer"


# instance fields
.field private cpLogoUrl:Ljava/lang/String;

.field private currentAudioTrack:I

.field private currentSubtitlePath:Ljava/lang/String;

.field private duration:J

.field private eid:Ljava/lang/String;

.field private extraSubtitlePath:Ljava/lang/String;

.field private hideId:J

.field private id:J

.field private imgUrl:Ljava/lang/String;

.field private isChecked:Z

.field private isDeleteAble:Z

.field private isHide:Z

.field private isNew:Z

.field private isPlayComplete:Z

.field private isShowDuration:Z

.field private mOwnerFolder:Lcom/miui/video/base/database/FolderEntity;

.field private md5Path:Ljava/lang/String;

.field private mediaId:J

.field private onlineSubtitleHash:Ljava/lang/String;

.field private onlineSubtitlePath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private playProgress:I

.field private ref:Ljava/lang/String;

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

.field private title:Ljava/lang/String;

.field private updateTime:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->hideId:J

    iput-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->eid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isShowDuration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isDeleteAble:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->ref:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/base/database/LocalVideoEntity;)I
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getUpdateTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getUpdateTime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/miui/video/base/database/LocalVideoEntity;->updateTime:J

    sub-long/2addr v1, v5

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    return v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

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

    check-cast p1, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/LocalVideoEntity;->compareTo(Lcom/miui/video/base/database/LocalVideoEntity;)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;->destroy()V

    return-void
.end method

.method public getCPLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->cpLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAudioTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->currentAudioTrack:I

    return v0
.end method

.method public getCurrentSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->currentSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->duration:J

    return-wide v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->extraSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHideId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->hideId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->id:J

    return-wide v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->md5Path:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->mediaId:J

    return-wide v0
.end method

.method public getOnlineSubtitleHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->onlineSubtitleHash:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSubtitlePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->onlineSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerFolder()Lcom/miui/video/base/database/FolderEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->mOwnerFolder:Lcom/miui/video/base/database/FolderEntity;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayProgress()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->playProgress:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->size:J

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

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->subtitleOffsetEntities:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->updateTime:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isChecked:Z

    return v0
.end method

.method public isDeleteAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isDeleteAble:Z

    return v0
.end method

.method public isHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isHide:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isNew:Z

    return v0
.end method

.method public isPlayComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isPlayComplete:Z

    return v0
.end method

.method public isShowDuration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isShowDuration:Z

    return v0
.end method

.method public setCPLogoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->cpLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isChecked:Z

    return-void
.end method

.method public setCurrentAudioTrack(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->currentAudioTrack:I

    return-void
.end method

.method public setCurrentSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->currentSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->duration:J

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setExtraSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->extraSubtitlePath:Ljava/lang/String;

    return-void
.end method

.method public setHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isHide:Z

    return-void
.end method

.method public setHideId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->hideId:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->id:J

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleteAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isDeleteAble:Z

    return-void
.end method

.method public setIsNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isNew:Z

    return-void
.end method

.method public setMd5Path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->md5Path:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->mediaId:J

    return-void
.end method

.method public setOnlineSubtitleHash(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->onlineSubtitleHash:Ljava/lang/String;

    return-object p0
.end method

.method public setOnlineSubtitlePath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->onlineSubtitlePath:Ljava/lang/String;

    return-object p0
.end method

.method public setOwnerFolder(Lcom/miui/video/base/database/FolderEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->mOwnerFolder:Lcom/miui/video/base/database/FolderEntity;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isPlayComplete:Z

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->playProgress:I

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public setShowDuration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->isShowDuration:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->size:J

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

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->subtitleOffsetEntities:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->updateTime:J

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->uri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->mediaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "hideId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->hideId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->size:J

    sget-object v3, Lcom/miui/video/framework/utils/FormatUtils;->NUMERIAL_2:Ljava/text/DecimalFormat;

    invoke-static {v1, v2, v3}, Lcom/miui/video/framework/utils/FormatUtils;->formatSize(JLjava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->duration:J

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->playProgress:I

    if-lez v1, :cond_1

    const-string v1, "playProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->playProgress:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-wide v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->updateTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, "updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/miui/video/framework/utils/FormatUtils;->DATE_40:Ljava/text/SimpleDateFormat;

    iget-wide v2, p0, Lcom/miui/video/base/database/LocalVideoEntity;->updateTime:J

    invoke-static {v1, v2, v3}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/LocalVideoEntity;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
