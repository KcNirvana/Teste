.class public Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;
.super Lcom/miui/video/common/feed/entity/TinyCardEntity;
.source "MomentItemEntity.java"


# instance fields
.field private dateDesc:Ljava/lang/String;

.field private ext:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private extList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->dateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->ext:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object v0
.end method

.method public getExtList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->extList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->ext:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->dateDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->ext:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->dateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setDateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->dateDesc:Ljava/lang/String;

    return-void
.end method

.method public setExt(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->ext:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-void
.end method

.method public setExtList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->extList:Ljava/util/List;

    return-void
.end method
