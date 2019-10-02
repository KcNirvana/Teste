.class public Lcom/miui/video/base/database/OldOVHistoryEntity;
.super Ljava/lang/Object;
.source "OldOVHistoryEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/base/database/OldOVHistoryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private duration:I

.field private eid:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private landscape_poster:Ljava/lang/String;

.field private last_play_time:J

.field private offset:I

.field private ov_extras:Ljava/lang/String;

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

.field private video_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    iput v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    iput v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->id:Ljava/lang/Long;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->category:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->resolution:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->cp:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->landscape_poster:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->portrait_poster:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ov_extras:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    move/from16 v1, p16

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    move/from16 v1, p17

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    move/from16 v1, p18

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->offset:I

    move/from16 v1, p19

    iput v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->duration:I

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/base/database/OldOVHistoryEntity;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget-wide v1, p1, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    iget-wide v3, p1, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    iget-wide v2, p1, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

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

    check-cast p1, Lcom/miui/video/base/database/OldOVHistoryEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/OldOVHistoryEntity;->compareTo(Lcom/miui/video/base/database/OldOVHistoryEntity;)I

    move-result p1

    return p1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->duration:I

    return v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLandscape_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->landscape_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_play_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    return-wide v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->offset:I

    return v0
.end method

.method public getOv_extras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ov_extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->portrait_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_value()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    return v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->category:Ljava/lang/String;

    return-void
.end method

.method public setCp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->cp:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->duration:I

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLandscape_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->landscape_poster:Ljava/lang/String;

    return-void
.end method

.method public setLast_play_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->offset:I

    return-void
.end method

.method public setOv_extras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ov_extras:Ljava/lang/String;

    return-void
.end method

.method public setPortrait_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->portrait_poster:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setSub_value(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    return-void
.end method

.method public setVideo_uri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    return-void
.end method

.method public toOVHistoryEntity()Lcom/miui/video/base/database/OVHistoryEntity;
    .locals 29

    move-object/from16 v0, p0

    new-instance v26, Lcom/miui/video/base/database/OVHistoryEntity;

    move-object/from16 v1, v26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_title:Ljava/lang/String;

    iget-object v8, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_date:Ljava/lang/String;

    iget-object v9, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->category:Ljava/lang/String;

    iget-object v10, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->resolution:Ljava/lang/String;

    iget-object v11, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->cp:Ljava/lang/String;

    iget-object v12, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ref:Ljava/lang/String;

    iget-object v13, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->landscape_poster:Ljava/lang/String;

    iget-object v14, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->portrait_poster:Ljava/lang/String;

    iget-object v15, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->ov_extras:Ljava/lang/String;

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    move-object/from16 v27, v1

    iget v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->sub_value:I

    move/from16 v19, v1

    iget v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->update_num:I

    move/from16 v20, v1

    iget v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->total_num:I

    move/from16 v21, v1

    iget v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->offset:I

    move/from16 v22, v1

    iget v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->duration:I

    move/from16 v23, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    move-wide/from16 v24, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lcom/miui/video/base/database/OVHistoryEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJ)V

    return-object v26
.end method

.method public toVideoEntity()Lcom/miui/video/base/database/VideoEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/VideoEntity;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setLayoutType(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->landscape_poster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setEid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVid(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->offset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setPlayProgress(J)V

    iget v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setShowDuration(Z)V

    iget-wide v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->last_play_time:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setLastPlayTime(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->video_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv://VideoLong?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/OldOVHistoryEntity;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
