.class public Lcom/miui/video/base/database/OVHistoryEntity;
.super Ljava/lang/Object;
.source "OVHistoryEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/base/database/OVHistoryEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final HISTORY_ONLINE_VIDEO:Ljava/lang/String; = "history_online_video"


# instance fields
.field private author_name:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private duration:I

.field private eid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private landscape_poster:Ljava/lang/String;

.field private last_play_time:J

.field private offset:I

.field private ov_extras:Ljava/lang/String;

.field private playlist_id:Ljava/lang/String;

.field private portrait_poster:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private sub_value:I

.field private title:Ljava/lang/String;

.field private total_num:I

.field private update_date:Ljava/lang/String;

.field private update_num:I

.field private vid:Ljava/lang/String;

.field private video_count_text:Ljava/lang/String;

.field private video_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_date:Ljava/lang/String;

    const-string v0, "music"

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->category:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->resolution:Ljava/lang/String;

    const-string v0, "hungama"

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->cp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->ref:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_value:I

    iput v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_num:I

    iput v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->total_num:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_title:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->update_date:Ljava/lang/String;

    const-string v1, "music"

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->category:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->resolution:Ljava/lang/String;

    const-string v1, "hungama"

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->cp:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->ref:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_value:I

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->update_num:I

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->total_num:I

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->eid:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->video_uri:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_title:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->update_date:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->category:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->resolution:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->cp:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->ref:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->landscape_poster:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->portrait_poster:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->ov_extras:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->author_name:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->video_count_text:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->playlist_id:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_value:I

    move/from16 v1, p19

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->update_num:I

    move/from16 v1, p20

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->total_num:I

    move/from16 v1, p21

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->offset:I

    move/from16 v1, p22

    iput v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->duration:I

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/base/database/OVHistoryEntity;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget-wide v1, p1, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    iget-wide v3, p1, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    iget-wide v2, p1, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

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

    check-cast p1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->compareTo(Lcom/miui/video/base/database/OVHistoryEntity;)I

    move-result p1

    return p1
.end method

.method public getAuthor_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->author_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->duration:I

    return v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscape_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->landscape_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_play_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    return-wide v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->offset:I

    return v0
.end method

.method public getOv_extras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->ov_extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylist_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->portrait_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_value()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_value:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->total_num:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_num:I

    return v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->author_name:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->category:Ljava/lang/String;

    return-void
.end method

.method public setCp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->cp:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->duration:I

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setLandscape_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->landscape_poster:Ljava/lang/String;

    return-void
.end method

.method public setLast_play_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->offset:I

    return-void
.end method

.method public setOv_extras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->ov_extras:Ljava/lang/String;

    return-void
.end method

.method public setPlaylist_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->playlist_id:Ljava/lang/String;

    return-void
.end method

.method public setPortrait_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->portrait_poster:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setSub_value(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->sub_value:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->total_num:I

    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_date:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->update_num:I

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    return-void
.end method

.method public setVideo_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_count_text:Ljava/lang/String;

    return-void
.end method

.method public setVideo_uri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_uri:Ljava/lang/String;

    return-void
.end method

.method public toVideoEntity()Lcom/miui/video/base/database/VideoEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/VideoEntity;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setLayoutType(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->landscape_poster:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->landscape_poster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->portrait_poster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setEid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideoId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setPlaylistId(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->offset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setPlayProgress(J)V

    iget v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setShowDuration(Z)V

    iget-wide v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->last_play_time:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setLastPlayTime(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->author_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setAuthor_name(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_count_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideo_count_text(Ljava/lang/String;)V

    const-string v1, "history_online_video"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setItem_type(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/base/database/OVHistoryEntity;->video_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv://VideoLong?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/OVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
