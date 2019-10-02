.class Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;
.super Ljava/lang/Object;
.source "CollectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/miui/video/biz/player/online/R$id;->collection_adapter_holed_tag_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v0

    sget-object v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_CLICK:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->access$600(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->access$600(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getCorePlayer()Lcom/miui/video/biz/player/online/core/VideoCore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->switchPlayingVideo(Ljava/lang/String;)Z

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayNext(I)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->access$700(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayListItemClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
