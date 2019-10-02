.class public Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.super Ljava/lang/Object;
.source "InfoStreamPresenter.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfoStreamPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InfoStreamPresenter.kt\ncom/miui/video/service/common/architeture/presenter/InfoStreamPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1582#2,2:247\n*E\n*S KotlinDebug\n*F\n+ 1 InfoStreamPresenter.kt\ncom/miui/video/service/common/architeture/presenter/InfoStreamPresenter\n*L\n199#1,2:247\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u000204J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0014J\u000e\u0010<\u001a\u0002042\u0006\u0010=\u001a\u00020>J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u000eH\u0002J\u0008\u0010B\u001a\u000204H\u0016J\u0010\u0010C\u001a\u0002042\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010D\u001a\u0002042\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010E\u001a\u000204H\u0016J\u0008\u0010F\u001a\u000204H\u0004J\u0016\u0010G\u001a\u0002042\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002090HH\u0014J\u0010\u0010I\u001a\u0002042\u0006\u0010J\u001a\u00020KH\u0004J\u0016\u0010L\u001a\u0002042\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002090HH\u0004J\u0008\u0010M\u001a\u000204H\u0016J\u0008\u0010N\u001a\u000204H\u0016J\u0018\u0010O\u001a\u0002042\u0006\u0010P\u001a\u00020\u00182\u0006\u0010=\u001a\u00020>H\u0016J\u001c\u0010Q\u001a\u0002042\u0006\u0010R\u001a\u00020@2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020U0TJ0\u0010Q\u001a\u000204\"\u0004\u0008\u0000\u0010V2\u0006\u0010R\u001a\u00020@2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u0002HV0X2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u0002HV0TJ\u0008\u0010Y\u001a\u000204H\u0014J\u0008\u0010Z\u001a\u000204H\u0004J\u0010\u0010[\u001a\u0002042\u0006\u0010\\\u001a\u00020]H\u0002J\u0010\u0010^\u001a\u0002042\u0006\u0010\u0008\u001a\u00020\tH\u0004R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u000e0\u000e0\u001dX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0010\"\u0004\u0008%\u0010&R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006_"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        "view",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
        "repository",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;)V",
        "refreshStrategy",
        "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V",
        "READ_TIMEOUT_MILLIS",
        "",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "actionDelegateProvider",
        "Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;",
        "getActionDelegateProvider",
        "()Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;",
        "setActionDelegateProvider",
        "(Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;)V",
        "isRefreshing",
        "",
        "()Z",
        "setRefreshing",
        "(Z)V",
        "lifeCycle",
        "Lio/reactivex/subjects/Subject;",
        "kotlin.jvm.PlatformType",
        "getLifeCycle",
        "()Lio/reactivex/subjects/Subject;",
        "setLifeCycle",
        "(Lio/reactivex/subjects/Subject;)V",
        "nextPage",
        "getNextPage",
        "setNextPage",
        "(Ljava/lang/String;)V",
        "getRefreshStrategy",
        "()Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
        "setRefreshStrategy",
        "(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V",
        "getRepository",
        "()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "setRepository",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;)V",
        "getView",
        "()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
        "setView",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;)V",
        "addUIFactory",
        "",
        "uiFactory",
        "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
        "cancelRequest",
        "convertToFeedRow",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "it",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        "forceRefreshInBackground",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "getLayoutTypeWithOffset",
        "",
        "rowType",
        "init",
        "load",
        "loadMore",
        "onDestory",
        "onLoadComplete",
        "onLoadData",
        "",
        "onLoadError",
        "e",
        "",
        "onLoadMoreData",
        "onPause",
        "onResume",
        "refresh",
        "force",
        "registerActionDelegate",
        "actionId",
        "actionDelegate",
        "Lcom/miui/video/common/feed/architeture/action/ActionListener;",
        "",
        "T",
        "modelClass",
        "Ljava/lang/Class;",
        "setListLoadingBar",
        "setLoadMoreDisable",
        "setModel",
        "mode",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
        "setRecyclerWithRefreshStrategy",
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
.field private final READ_TIMEOUT_MILLIS:J

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRefreshing:Z

.field private lifeCycle:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextPage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    check-cast v0, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;",
            "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
            ")V"
        }
    .end annotation

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iput-object p2, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    iput-object p3, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    const-string p1, "javaClass"

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x4e20

    iput-wide p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->READ_TIMEOUT_MILLIS:J

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object p1

    const-string p2, "PublishSubject.create<String>().toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    new-instance p1, Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    invoke-direct {p1}, Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    return-void
.end method

.method private final getLayoutTypeWithOffset(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->getUIFactorys()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-interface {v1, p1}, Lcom/miui/video/common/feed/recyclerview/IUIFactory;->getUILayoutType(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    instance-of p1, v1, Lcom/miui/video/common/feed/BaseUIFactory;

    if-eqz p1, :cond_2

    check-cast v1, Lcom/miui/video/common/feed/BaseUIFactory;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/BaseUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private final setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/recyclerview/IUIFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    :cond_0
    return-void
.end method

.method public final cancelRequest()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 3
    .param p1    # Lcom/miui/video/base/common/net/model/CardRowListEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.row_type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->getLayoutTypeWithOffset(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutType(I)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getTopped()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setTopped(I)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_RECOMMEND_AUTHOR:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setSubscribe(Z)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setRow_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setTitleList(Ljava/util/List;)V

    return-object v0
.end method

.method public final forceRefreshInBackground(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void
.end method

.method protected final getActionDelegateProvider()Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    return-object v0
.end method

.method protected final getLifeCycle()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method protected final getNextPage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->nextPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshStrategy()Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    return-object v0
.end method

.method public final getRepository()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getView()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    return-object v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setPresenter(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->init()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    check-cast v1, Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    invoke-interface {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setActionDelegate(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setRecyclerWithRefreshStrategy(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void
.end method

.method protected final isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    return v0
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$1;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$2;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$2;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$3;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$3;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$4;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$4;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$5;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$5;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$6;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$6;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$7;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$7;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$8;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$8;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$9;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$9;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$10;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$10;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    new-instance v1, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$11;

    invoke-direct {v1, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$11;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$12;

    invoke-direct {v2, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$load$12;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$1;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$2;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$2;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$3;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$3;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$5;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$5;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$6;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$6;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$7;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$7;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$8;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$8;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;

    invoke-direct {v0, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    new-instance v1, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$10;

    invoke-direct {v1, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$10;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$11;

    invoke-direct {v2, p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$11;-><init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V

    check-cast v2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public onDestory()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->onDestory()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;->destory()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->cancelRequest()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    return-void
.end method

.method protected final onLoadComplete()V
    .locals 0

    return-void
.end method

.method protected onLoadData(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isPullRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setRecyclerWithRefreshStrategy(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setLoadMoreDisable()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->onLoad(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setListLoadingBar()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setList(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2, v2}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->scrollToPosition(ZI)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->onUIShow()V

    :cond_4
    return-void
.end method

.method protected final onLoadError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    instance-of p1, p1, Lcom/miui/video/service/common/architeture/exception/NullDataException;

    if-eqz p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->nextPage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setLoadMoreDisable()V

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setListLoadingBar()V

    :cond_1
    return-void
.end method

.method protected final onLoadMoreData(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setLoadMoreDisable()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->onLoadMore(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setListLoadingBar()V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->onResume()V

    :cond_0
    return-void
.end method

.method public refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 1
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->showLoadingView()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->loadFromHeadBy(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .param p2    # Lcom/miui/video/common/feed/architeture/action/ActionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_0
    return-void
.end method

.method public final registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/common/feed/architeture/action/ActionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method protected final setActionDelegateProvider(Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->actionDelegateProvider:Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;

    return-void
.end method

.method protected final setLifeCycle(Lio/reactivex/subjects/Subject;)V
    .locals 1
    .param p1    # Lio/reactivex/subjects/Subject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->lifeCycle:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method protected setListLoadingBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setListLoadingBar()V

    :cond_0
    return-void
.end method

.method protected final setLoadMoreDisable()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->nextPage:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isPullRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isLoadMoreFromTop()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_1
    return-void
.end method

.method protected final setNextPage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->nextPage:Ljava/lang/String;

    return-void
.end method

.method protected final setRecyclerWithRefreshStrategy(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 2
    .param p1    # Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isPullRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isLoadMoreFromTop()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isLoadMore()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isPullRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isLoadMoreFromTop()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isLoadMore()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_5
    return-void
.end method

.method public final setRefreshStrategy(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refreshStrategy:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    return-void
.end method

.method protected final setRefreshing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->isRefreshing:Z

    return-void
.end method

.method public final setRepository(Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->repository:Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    return-void
.end method

.method public final setView(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;)V
    .locals 0
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->view:Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    return-void
.end method
