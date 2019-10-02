.class public Lcom/miui/video/base/common/data/SyncFavorBody;
.super Ljava/lang/Object;
.source "SyncFavorBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public confirm:I

.field public syncFavEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/data/SyncFavorBody;->confirm:I

    iput p1, p0, Lcom/miui/video/base/common/data/SyncFavorBody;->confirm:I

    iput-object p2, p0, Lcom/miui/video/base/common/data/SyncFavorBody;->syncFavEntityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/data/SyncFavorBody;->syncFavEntityList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)Lcom/miui/video/base/common/data/SyncFavorBody;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)",
            "Lcom/miui/video/base/common/data/SyncFavorBody;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/data/SyncFavorBody;->syncFavEntityList:Ljava/util/List;

    return-object p0
.end method
