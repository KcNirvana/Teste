.class public Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
.super Lcom/miui/video/framework/base/entity/PageEntity;
.source "MomentEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/framework/base/entity/PageEntity<",
        "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/PageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->list:Ljava/util/List;

    return-void
.end method
