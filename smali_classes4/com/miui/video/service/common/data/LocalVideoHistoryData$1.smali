.class Lcom/miui/video/service/common/data/LocalVideoHistoryData$1;
.super Ljava/lang/Object;
.source "LocalVideoHistoryData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/data/LocalVideoHistoryData;->runDeleteVideoList()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

.field final synthetic val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/service/common/data/LocalVideoHistoryData;Lcom/miui/video/service/common/data/VideoListEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/data/LocalVideoHistoryData$1;->this$0:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    iput-object p2, p0, Lcom/miui/video/service/common/data/LocalVideoHistoryData$1;->val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/service/common/data/LocalVideoHistoryData$1;->val$toDeleteList:Lcom/miui/video/service/common/data/VideoListEntity;

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

    const-string v2, "runDeleteVideoHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/HistoryDaoUtil;->deleteLocalHistoryByPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
