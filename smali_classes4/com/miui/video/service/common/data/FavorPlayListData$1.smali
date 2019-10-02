.class Lcom/miui/video/service/common/data/FavorPlayListData$1;
.super Ljava/lang/Object;
.source "FavorPlayListData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/data/FavorPlayListData;->runDeleteVideoList()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/common/data/FavorPlayListData;

.field final synthetic val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/service/common/data/FavorPlayListData;Lcom/miui/video/service/common/data/VideoListEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/data/FavorPlayListData$1;->this$0:Lcom/miui/video/service/common/data/FavorPlayListData;

    iput-object p2, p0, Lcom/miui/video/service/common/data/FavorPlayListData$1;->val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorPlayListData$1;->val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/VideoEntity;

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getEid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByEid(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
