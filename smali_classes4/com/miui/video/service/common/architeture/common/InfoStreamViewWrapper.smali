.class public Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;
.super Ljava/lang/Object;
.source "InfoStreamViewWrapper.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00132\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0016J\u0010\u0010 \u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0018H\u0016J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0013H\u0016J\u0008\u0010%\u001a\u00020\u0013H\u0016J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020\u0006H\u0016J\u0008\u0010(\u001a\u00020\u0013H\u0016J\u0008\u0010)\u001a\u00020\u0013H\u0016J\u0008\u0010*\u001a\u00020\u0013H\u0016J\u0008\u0010+\u001a\u00020\u0013H\u0016J\u0008\u0010,\u001a\u00020\u0013H\u0016J\u0008\u0010-\u001a\u00020\u0013H\u0016J\u0018\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u00132\u0008\u00107\u001a\u0004\u0018\u000108J\u0018\u00109\u001a\u00020\u00132\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0016J\u0008\u0010:\u001a\u00020\u0013H\u0016J\u0010\u0010;\u001a\u00020\u00132\u0006\u0010<\u001a\u00020=H\u0016J\u000e\u0010>\u001a\u00020\u00132\u0006\u0010?\u001a\u000208J\u0008\u0010@\u001a\u00020\u0013H\u0016J\u0008\u0010A\u001a\u00020\u0013H\u0016J\u0008\u0010B\u001a\u00020\u0013H\u0016J\u0008\u0010C\u001a\u00020\u0013H\u0016J\u0012\u0010C\u001a\u00020\u00132\u0008\u0010D\u001a\u0004\u0018\u00010\u0008H\u0016J\u000e\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u000202R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0004\u00a8\u0006G"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
        "view",
        "Lcom/miui/video/common/feed/UIRecyclerListView;",
        "(Lcom/miui/video/common/feed/UIRecyclerListView;)V",
        "currentLoadRefreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "eReload",
        "Landroid/view/View$OnClickListener;",
        "presenter",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        "getPresenter",
        "()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        "setPresenter",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;)V",
        "getView",
        "()Lcom/miui/video/common/feed/UIRecyclerListView;",
        "setView",
        "addItemDecoration",
        "",
        "decor",
        "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
        "addList",
        "data",
        "",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "addUIFactory",
        "factory",
        "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
        "getContext",
        "Landroid/content/Context;",
        "getList",
        "getUIFactorys",
        "handleException",
        "e",
        "",
        "hideLoadingView",
        "init",
        "loadFromHeadBy",
        "refreshType",
        "notifyDataSetChanged",
        "onDestory",
        "onPause",
        "onResume",
        "onUIHide",
        "onUIShow",
        "scrollToPosition",
        "smooth",
        "",
        "position",
        "",
        "setActionDelegate",
        "actionDelegateProvider",
        "Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;",
        "setChannel",
        "channel",
        "",
        "setList",
        "setListLoadingBar",
        "setModel",
        "mode",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
        "setRecyclerViewPageFlag",
        "pageFlag",
        "showLoadingView",
        "showNullData",
        "showOffLine",
        "showRetry",
        "clickListener",
        "startToPreLoadMoreOffset",
        "offset",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private currentLoadRefreshType:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field private final eReload:Landroid/view/View$OnClickListener;

.field public presenter:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view:Lcom/miui/video/common/feed/UIRecyclerListView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/UIRecyclerListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;

    invoke-direct {v0}, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;-><init>()V

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_0
    sget-object p1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_DOWN_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->currentLoadRefreshType:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    new-instance p1, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$eReload$1;

    invoke-direct {p1, p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$eReload$1;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->eReload:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getCurrentLoadRefreshType$p(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->currentLoadRefreshType:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    return-object p0
.end method

.method public static final synthetic access$setCurrentLoadRefreshType$p(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->currentLoadRefreshType:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "decor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public addList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->addData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/recyclerview/IUIFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPresenter()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->presenter:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getPresenter()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getPresenter()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    move-result-object v0

    return-object v0
.end method

.method public getUIFactorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIFactorys()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getView()Lcom/miui/video/common/feed/UIRecyclerListView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/miui/video/service/common/architeture/exception/OfflineException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showOffLine()V

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/miui/video/service/common/architeture/exception/NullDataException;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getCount()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showNullData()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getCount()I

    move-result p1

    if-gtz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showRetry()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->hideLoadingView()V

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :cond_5
    :goto_0
    return-void
.end method

.method public hideLoadingView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$init$1;

    invoke-direct {v1, p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$init$1;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->startToPreLoadMoreOffset(I)V

    return-void
.end method

.method public loadFromHeadBy(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->currentLoadRefreshType:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->showHeaderLoading()V

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->destoryEntitys()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUIHide()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->onUIHide()V

    :cond_0
    return-void
.end method

.method public onUIShow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->onUIShow()V

    :cond_0
    const-string v0, "onUIShow"

    const-string v1, "   "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public scrollToPosition(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActionDelegate(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionDelegateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V

    :cond_0
    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showRetry(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setListLoadingBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->setListLoadingBar()V

    :cond_0
    return-void
.end method

.method public setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->setPullMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_0
    return-void
.end method

.method public setPresenter(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->presenter:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->setPresenter(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;)V

    return-void
.end method

.method public final setRecyclerViewPageFlag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageFlag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setPageFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setView(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0
    .param p1    # Lcom/miui/video/common/feed/UIRecyclerListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    :cond_0
    return-void
.end method

.method public showNullData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showOffLine()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget v2, Lcom/miui/video/service/R$string;->video_offline:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/ui/UILoadingView;->showOffline(Landroid/view/View$OnClickListener;I)V

    :cond_0
    return-void
.end method

.method public showRetry()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->eReload:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->showRetry(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showRetry(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final startToPreLoadMoreOffset(I)V
    .locals 2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$1;->INSTANCE:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$1;

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->startToLoadMoreOffset(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$2;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$2;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setPreLoadMoreListener(Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->view:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$3;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$3;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    :cond_3
    :goto_0
    return-void
.end method
