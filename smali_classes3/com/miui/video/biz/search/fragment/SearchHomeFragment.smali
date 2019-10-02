.class public final Lcom/miui/video/biz/search/fragment/SearchHomeFragment;
.super Lcom/miui/video/biz/search/fragment/FeedBaseFragment;
.source "SearchHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/fragment/SearchHomeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment<",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHomeFragment.kt\ncom/miui/video/biz/search/fragment/SearchHomeFragment\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\tH\u0014J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0014J\u0008\u0010\u0011\u001a\u00020\tH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/biz/search/fragment/SearchHomeFragment;",
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment;",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        "()V",
        "mHistoryEntity",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "vUIVoiceChangeWrapper",
        "Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;",
        "addHistoryData",
        "",
        "key",
        "",
        "initFeedPresenter",
        "initFindViews",
        "initViewsValue",
        "onDestroy",
        "registerPresentAction",
        "saveHistoryData",
        "setLayoutResId",
        "",
        "startGoogleVoiceSearch",
        "activity",
        "Landroid/app/Activity;",
        "source",
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
.field public static final Companion:Lcom/miui/video/biz/search/fragment/SearchHomeFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private vUIVoiceChangeWrapper:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchHomeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMHistoryEntity$p(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-object p0
.end method

.method public static final synthetic access$setMHistoryEntity$p(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-void
.end method

.method private final saveHistoryData()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "search_history"

    iget-object v4, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-static {v0, v3, v1}, Lcom/miui/video/biz/search/utils/SearchSPManager;->saveListData(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final addHistoryData(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mHistoryEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->notifyDataSetChanged()V

    :cond_8
    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->saveHistoryData()V

    return-void
.end method

.method protected initFeedPresenter()V
    .locals 8

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/search/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_history"

    invoke-static {v0, v1}, Lcom/miui/video/biz/search/utils/SearchSPManager;->readListData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-object v5, v1

    check-cast v5, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    new-instance v1, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;

    invoke-direct {v1, v4}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;-><init>(Ljava/util/List;)V

    move-object v6, v1

    check-cast v6, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v1, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v1}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    move-object v7, v1

    check-cast v7, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;Ljava/util/List;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    check-cast v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/biz/search/ui/factory/SearchFactory;

    invoke-direct {v1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;-><init>()V

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_0
    return-void
.end method

.method public initFindViews()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->initFindViews()V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_ui_voice_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->vUIVoiceChangeWrapper:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.search.ui.UIVoiceChangeWrapper"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsValue()V
    .locals 4

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent_voice_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const-string v2, "intent_source"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bundle.getString(CCodes.INTENT_SOURCE, \"\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->saveHistoryData()V

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_history_click:I

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$registerPresentAction$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    sget v1, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_hot_word_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$registerPresentAction$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$registerPresentAction$2;-><init>(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_1
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->fragment_search_home:I

    return v0
.end method

.method public final startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->vUIVoiceChangeWrapper:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    if-nez v0, :cond_0

    const-string v1, "vUIVoiceChangeWrapper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
