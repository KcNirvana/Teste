.class public Lcom/miui/video/base/database/OldFavorVideoEntity;
.super Ljava/lang/Object;
.source "OldFavorVideoEntity.java"


# static fields
.field public static final FAVOR_IS_LOCAL_SAVED:I = 0x0

.field public static final FAVOR_IS_SYNCHRONIZED:I = 0x2

.field public static final FAVOR_IS_UPLOADED:I = 0x1

.field public static final FAVOR_LONG_VIDEO:Ljava/lang/String; = "favorite_video"

.field public static final FAVOR_VIDEO:Ljava/lang/String; = "favorite_video"

.field public static final OV_FAVOR_CP_LOGO:Ljava/lang/String; = "cp_logo"


# instance fields
.field private category:Ljava/lang/String;

.field private cp_logo:Ljava/lang/String;

.field private eid:Ljava/lang/String;

.field private id:Ljava/lang/Long;

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

.field private portrait_poster:Ljava/lang/String;

.field private save_time:J

.field private score:F

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private total_num:I

.field private update_date:Ljava/lang/String;

.field private update_num:I

.field private uploaded:I

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->id:Ljava/lang/Long;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->user_id:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->title:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->sub_title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->category:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->landscape_poster:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->portrait_poster:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_date:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_num:I

    move v1, p12

    iput v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->total_num:I

    move/from16 v1, p13

    iput v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->uploaded:I

    move/from16 v1, p14

    iput v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->score:F

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/miui/video/base/database/OldFavorVideoEntity;->save_time:J

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCp_logo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->cp_logo:Ljava/lang/String;

    return-object v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLandscape_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->landscape_poster:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ovExtrasMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ovExtrasMap:Ljava/util/HashMap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ovExtrasMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ovExtrasMap:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ovExtrasMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOv_extras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait_poster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->portrait_poster:Ljava/lang/String;

    return-object v0
.end method

.method public getSave_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->save_time:J

    return-wide v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->score:F

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->total_num:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_num()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_num:I

    return v0
.end method

.method public getUploaded()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->uploaded:I

    return v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->category:Ljava/lang/String;

    return-void
.end method

.method public setCp_logo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->cp_logo:Ljava/lang/String;

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLandscape_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->landscape_poster:Ljava/lang/String;

    return-void
.end method

.method public setOv_extras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

    return-void
.end method

.method public setPortrait_poster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->portrait_poster:Ljava/lang/String;

    return-void
.end method

.method public setSave_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->save_time:J

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->score:F

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->total_num:I

    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_date:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_num(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_num:I

    return-void
.end method

.method public setUploaded(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->uploaded:I

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->user_id:Ljava/lang/String;

    return-void
.end method

.method public toNewFavorVideoEntity()Lcom/miui/video/base/database/OVFavorVideoEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->portrait_poster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setImage_url(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cp_logo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setCp_logo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setEid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setSub_title(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setCategory(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->save_time:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setSave_time(J)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUpdate_date(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->ov_extras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setOv_extras(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->update_num:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUpdate_num(I)V

    iget v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->total_num:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTotal_num(I)V

    iget v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->uploaded:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUploaded(I)V

    iget v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->score:F

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setScore(F)V

    const-string v1, "favorite_video"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setItem_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv://VideoLong?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTarget(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public toVideoEntity()Lcom/miui/video/base/database/VideoEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/VideoEntity;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setLayoutType(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->portrait_poster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cp_logo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setCPLogoUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setEid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setFeedId(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->uploaded:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setUploaded(I)V

    iget-object v1, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setVideoId(Ljava/lang/String;)V

    const-string v1, "favorite_video"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setItem_type(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setShowDuration(Z)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getOvExtrasMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv://VideoLong?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/OldFavorVideoEntity;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
