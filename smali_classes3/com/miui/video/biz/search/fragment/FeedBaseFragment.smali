.class public abstract Lcom/miui/video/biz/search/fragment/FeedBaseFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "FeedBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Lcom/miui/video/service/base/VideoBaseFragment<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field protected mSearchListener:Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;

.field protected wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSearchAction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mSearchListener:Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mSearchListener:Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;->doSearch(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected abstract initFeedPresenter()V
.end method

.method public initViewsValue()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->initFeedPresenter()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->registerPresentAction()V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    return-void
.end method

.method protected registerPresentAction()V
    .locals 0

    return-void
.end method

.method public setSearchListener(Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->mSearchListener:Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;

    return-void
.end method
