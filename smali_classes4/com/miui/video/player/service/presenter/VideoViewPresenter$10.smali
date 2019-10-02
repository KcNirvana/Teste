.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1402(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public returnFail(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " returnFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public returnSuccess()V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " returnSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$600(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showRecommend(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
