.class public final Lcom/miui/video/biz/search/fragment/SearchWordFragment;
.super Lcom/miui/video/biz/search/fragment/FeedBaseFragment;
.source "SearchWordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/fragment/SearchWordFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment<",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0014J\u0008\u0010\u000b\u001a\u00020\tH\u0014J\u0010\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/video/biz/search/fragment/SearchWordFragment;",
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment;",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        "()V",
        "dataSource",
        "Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;",
        "mKey",
        "",
        "initBase",
        "",
        "initFeedPresenter",
        "registerPresentAction",
        "searchWord",
        "key",
        "setLayoutResId",
        "",
        "Companion",
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
.field public static final Companion:Lcom/miui/video/biz/search/fragment/SearchWordFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private dataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchWordFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/fragment/SearchWordFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchWordFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public initBase()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mKey:Ljava/lang/String;

    return-void
.end method

.method protected initFeedPresenter()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchWordFragment$initFeedPresenter$1;

    sget v1, Lcom/miui/video/biz/search/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/search/fragment/SearchWordFragment$initFeedPresenter$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchWordFragment;Lcom/miui/video/common/feed/UIRecyclerListView;)V

    check-cast v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->dataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->dataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/video/biz/search/ui/factory/SearchFactory;

    invoke-direct {v1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;-><init>()V

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_1
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_key_about_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchWordFragment$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchWordFragment$registerPresentAction$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchWordFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_0
    return-void
.end method

.method public final searchWord(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->dataSource:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->refreshKey(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->cancelRequest()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    sget-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_2
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->fragment_search_words:I

    return v0
.end method
