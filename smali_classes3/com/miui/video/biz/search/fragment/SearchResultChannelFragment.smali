.class public final Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;
.super Lcom/miui/video/biz/search/fragment/FeedBaseFragment;
.source "SearchResultChannelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;,
        Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00192\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\u0019\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0006\u0010\u0013\u001a\u00020\u000fJ\u0008\u0010\u0014\u001a\u00020\u000fH\u0014J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0008J\u0008\u0010\u0017\u001a\u00020\u0018H\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;",
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "mCategory",
        "",
        "mChangeChannelListener",
        "Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;",
        "mDataSource",
        "Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;",
        "mKey",
        "mSearchData",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "initFeedPresenter",
        "",
        "initFindViews",
        "initViewsValue",
        "onDestroy",
        "refresh",
        "registerPresentAction",
        "setChangeChannelListener",
        "listener",
        "setLayoutResId",
        "",
        "Companion",
        "IChangeChannelListener",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCategory:Ljava/lang/String;

.field private mChangeChannelListener:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

.field private mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

.field private mKey:Ljava/lang/String;

.field private mSearchData:Lcom/miui/video/biz/search/entities/SearchData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMChangeChannelListener$p(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;)Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mChangeChannelListener:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    return-object p0
.end method

.method public static final synthetic access$setMChangeChannelListener$p(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mChangeChannelListener:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected initFeedPresenter()V
    .locals 4

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/search/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    invoke-direct {v0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mCategory:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    if-nez v2, :cond_0

    const-string v3, "mDataSource"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    if-nez v2, :cond_2

    const-string v3, "mDataSource"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/miui/video/biz/search/ui/factory/SearchFactory;

    invoke-direct {v1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;-><init>()V

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_3
    return-void
.end method

.method public initFindViews()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "intent_search_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "intent_search_category"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "intent_entity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/biz/search/entities/SearchData;

    :cond_2
    iput-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    return-void
.end method

.method public initViewsValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->initFeedPresenter()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->registerPresentAction()V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    if-nez v0, :cond_0

    const-string v1, "mDataSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->setSearchData(Lcom/miui/video/biz/search/entities/SearchData;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mChangeChannelListener:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final refresh()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    if-nez v0, :cond_0

    const-string v1, "mDataSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->getSearchData()Lcom/miui/video/biz/search/entities/SearchData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->cancelRequest()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mDataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;

    if-nez v0, :cond_2

    const-string v1, "mDataSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mKey:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mCategory:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->setSearchData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_5
    return-void
.end method

.method protected registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_title_forward:I

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$registerPresentAction$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    sget v1, Lcom/miui/video/biz/search/R$id;->vo_action_id_enter_author_detail_btn_click:I

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$registerPresentAction$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$registerPresentAction$2;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_1
    return-void
.end method

.method public final setChangeChannelListener(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->mChangeChannelListener:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->fragment_search_result_channel:I

    return v0
.end method
