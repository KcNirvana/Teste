.class Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "UGCPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/biz/ugc/data/UGCPageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ugcpresenter"

    const-string v1, "loadMore fail"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$002(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;J)J

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$102(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/view/UGCView;

    invoke-interface {v0}, Lcom/miui/video/biz/ugc/view/UGCView;->onLoadMoreFail()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "small_video"

    const-string v3, ""

    const-string v4, "small_videos_res"

    invoke-static {v2, v3, v4}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    const-string v4, ""

    invoke-static {v3, v1, p1, v4}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$400(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v2, p1, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V
    .locals 5

    const-string v0, "ugcpresenter"

    const-string v1, "loadMore success"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$002(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;J)J

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$102(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Z)Z

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->getData()Lcom/miui/video/biz/ugc/data/UGCPageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/data/UGCPageData;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-static {v2, v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$202(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->getData()Lcom/miui/video/biz/ugc/data/UGCPageData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->getData()Lcom/miui/video/biz/ugc/data/UGCPageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/data/UGCPageData;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/view/UGCView;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->getData()Lcom/miui/video/biz/ugc/data/UGCPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/ugc/data/UGCPageData;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/ugc/view/UGCView;->onLoadMoreSuccess(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-static {v0, p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$300(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/view/UGCView;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/view/UGCView;->onRefreshFail()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "small_video"

    const-string v2, ""

    const-string v3, "small_videos_res"

    invoke-static {v0, v2, v3}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    const-string v3, "empty"

    const-string v4, ""

    invoke-static {v2, v1, v3, v4}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->access$400(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/ugc/data/UGCPageEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;->onSuccess(Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V

    return-void
.end method
