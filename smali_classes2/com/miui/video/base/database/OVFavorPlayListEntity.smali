.class public Lcom/miui/video/base/database/OVFavorPlayListEntity;
.super Ljava/lang/Object;
.source "OVFavorPlayListEntity.java"


# static fields
.field public static final FAVOR_PLAY_LIST:Ljava/lang/String; = "favorite_playlist"

.field public static final OV_FAVOR_CP_LOGO:Ljava/lang/String; = "cp_logo"


# instance fields
.field private authorId:Ljava/lang/String;

.field private author_name:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private cp_logo:Ljava/lang/String;

.field private eid:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private image_url:Ljava/lang/String;

.field public isFromServer:Z

.field private item_type:Ljava/lang/String;

.field private landscape_poster:Ljava/lang/String;

.field private ovExtrasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ov_extras:Ljava/lang/String;

.field private playlist_id:Ljava/lang/String;

.field private portrait_poster:Ljava/lang/String;

.field private save_time:J

.field private score:F

.field public source:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private total_num:I

.field private update_date:Ljava/lang/String;

.field private update_num:I

.field private uploaded:I

.field private user_id:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private video_count:I

.field private video_count_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->isFromServer:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJFLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->isFromServer:Z

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->id:Ljava/lang/Long;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->user_id:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->title:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->sub_title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->category:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->landscape_poster:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->portrait_poster:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_date:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->author_name:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->authorId:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count_text:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->target:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->image_url:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->playlist_id:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count:I

    move/from16 v1, p18

    iput v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_num:I

    move/from16 v1, p19

    iput v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->total_num:I

    move/from16 v1, p20

    iput v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->uploaded:I

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->save_time:J

    move/from16 v1, p23

    iput v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->score:F

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ov_extras:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->item_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->author_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeFavorBody(I)Lcom/miui/video/base/common/data/ChangeFavorBody;
    .locals 2

    new-instance v0, Lcom/miui/video/base/common/data/ChangeFavorBody;

    invoke-direct {v0}, Lcom/miui/video/base/common/data/ChangeFavorBody;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/common/data/ChangeFavorBody;->eid:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->playlist_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->item_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/common/data/ChangeFavorBody;->item_type:Ljava/lang/String;

    iput p1, v0, Lcom/miui/video/base/common/data/ChangeFavorBody;->is_heart:I

    return-object v0
.end method

.method public getCp_logo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->cp_logo:Ljava/lang/String;

    return-object v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->item_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscape_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->landscape_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getOvExtrasMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ovExtrasMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ovExtrasMap:Ljava/util/HashMap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ovExtrasMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ov_extras:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ov_extras:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ovExtrasMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OVFavorVideoEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOvExtrasMap  Error:$e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OVFavorVideoEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOvExtrasMap  exception:$e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ovExtrasMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOv_extras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ov_extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylist_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->portrait_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getSave_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->save_time:J

    return-wide v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->score:F

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->total_num:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_num:I

    return v0
.end method

.method public getUploaded()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->uploaded:I

    return v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_count()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count:I

    return v0
.end method

.method public getVideo_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->authorId:Ljava/lang/String;

    return-void
.end method

.method public setAuthor_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->author_name:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->category:Ljava/lang/String;

    return-void
.end method

.method public setCp_logo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->cp_logo:Ljava/lang/String;

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->image_url:Ljava/lang/String;

    return-void
.end method

.method public setItem_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->item_type:Ljava/lang/String;

    return-void
.end method

.method public setLandscape_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->landscape_poster:Ljava/lang/String;

    return-void
.end method

.method public setOv_extras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->ov_extras:Ljava/lang/String;

    return-void
.end method

.method public setPlaylist_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->playlist_id:Ljava/lang/String;

    return-void
.end method

.method public setPortrait_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->portrait_poster:Ljava/lang/String;

    return-void
.end method

.method public setSave_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->save_time:J

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->score:F

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->total_num:I

    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_date:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->update_num:I

    return-void
.end method

.method public setUploaded(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->uploaded:I

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideo_count(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count:I

    return-void
.end method

.method public setVideo_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count_text:Ljava/lang/String;

    return-void
.end method

.method public toVideoEntity()Lcom/miui/video/base/database/VideoEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/VideoEntity;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setLayoutType(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->image_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cp_logo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setCPLogoUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setEid(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideo_count(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->video_count_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideo_count_text(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->author_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setAuthor_name(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->authorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setAuthorId(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->save_time:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setSave_time(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setPlaylistId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideoId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideoId(Ljava/lang/String;)V

    :goto_1
    const-string v1, "favorite_playlist"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setItem_type(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setShowDuration(Z)V

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->target:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv://VideoLong?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
