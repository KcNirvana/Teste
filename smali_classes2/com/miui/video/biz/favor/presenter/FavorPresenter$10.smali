.class Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "FavorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/presenter/FavorPresenter;->syncFavorPlayList(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/favor/view/FavorView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/view/FavorView;->syncFavorPlayListFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->this$0:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/favor/view/FavorView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/view/FavorView;->syncFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
