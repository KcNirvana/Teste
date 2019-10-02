.class Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;
.super Ljava/lang/Object;
.source "WidgetEventDispatcher.java"

# interfaces
.implements Lcom/miui/video/framework/utils/statistics/IStatisticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickStatistics(Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WidgetEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickStatistics(), item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", additions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/miui/video/framework/uri/LinkEntity;

    if-nez v0, :cond_1

    const-string p2, "WidgetEventDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect first parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance v1, Lcom/miui/video/base/statistics/event/WidgetClickEvent;

    check-cast p1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-static {p2}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/miui/video/base/statistics/event/WidgetClickEvent;-><init>(Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    return-void
.end method

.method public onSessionStatistics(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetSessionEvent;

    invoke-direct {v0, p2}, Lcom/miui/video/base/statistics/event/WidgetSessionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    return-void
.end method

.method public onVideoStatistics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WidgetEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatistics(), additions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance v1, Lcom/miui/video/base/statistics/event/WidgetVideoEvent;

    invoke-static {p1}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/video/base/statistics/event/WidgetVideoEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    return-void
.end method

.method public onViewStatistics(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WidgetEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewStatistics(), item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", additions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getShowEntity()Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowPercent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setShowPercent(I)V

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance v4, Lcom/miui/video/base/statistics/event/WidgetViewEvent;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;-><init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowPercent()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setShowPercent(I)V

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance p2, Lcom/miui/video/base/statistics/event/WidgetViewEvent;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;-><init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-static {p1, p3}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->access$000(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;

    invoke-static {p2}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;-><init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    :goto_1
    return-void
.end method
