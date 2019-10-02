.class public final Lcom/miui/video/biz/search/fragment/SearchResultFragment;
.super Lcom/miui/video/biz/search/fragment/FeedBaseFragment;
.source "SearchResultFragment.kt"

# interfaces
.implements Lcom/miui/video/biz/search/view/SearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/fragment/SearchResultFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment<",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        ">;",
        "Lcom/miui/video/biz/search/view/SearchView;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0018\u0000 >2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001>B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020\u0002H\u0014J,\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020-H\u0014J\u0008\u0010/\u001a\u00020-H\u0016J\u0008\u00100\u001a\u00020-H\u0002J\u0008\u00101\u001a\u00020-H\u0016J\u0008\u00102\u001a\u00020-H\u0016J\u0008\u00103\u001a\u00020-H\u0016J(\u00104\u001a\u00020-2\u0006\u0010\'\u001a\u00020\t2\u0006\u00105\u001a\u00020\t2\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u00020\u0015H\u0002J \u00108\u001a\u00020-2\u0008\u0010\'\u001a\u0004\u0018\u00010\t2\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u00020\u0015J\u0008\u00109\u001a\u00020\u0015H\u0014J\u0010\u0010:\u001a\u00020-2\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010;\u001a\u00020-2\u0008\u0010<\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010=\u001a\u00020-2\u0006\u0010*\u001a\u00020+H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/miui/video/biz/search/fragment/SearchResultFragment;",
        "Lcom/miui/video/biz/search/fragment/FeedBaseFragment;",
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        "Lcom/miui/video/biz/search/view/SearchView;",
        "()V",
        "hadInit",
        "",
        "isTabClick",
        "lastTrackTag",
        "",
        "mDisposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "mFragments",
        "Landroid/util/SparseArray;",
        "Lcom/miui/video/common/library/base/BaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "mKey",
        "mPagerAdapter",
        "Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;",
        "mPosition",
        "",
        "mSearchType",
        "vContainer",
        "Landroid/widget/RelativeLayout;",
        "vIndicator",
        "Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;",
        "vUISearchBy",
        "Lcom/miui/video/biz/search/ui/UISearchBy;",
        "vUIViewSwitcher",
        "Lcom/miui/video/service/widget/ui/UIViewSwitcher;",
        "vViewpager",
        "Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;",
        "convertToFeedRow",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "it",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        "createPresenter",
        "createSearchChannelFragment",
        "key",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "data",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "initBase",
        "",
        "initFeedPresenter",
        "initFindViews",
        "initViewPage",
        "initViewsEvent",
        "initViewsValue",
        "onDestroy",
        "searchAction",
        "category",
        "searchType",
        "position",
        "searchWord",
        "setLayoutResId",
        "setViewPagerData",
        "showError",
        "errorMsg",
        "showUI",
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
.field public static final Companion:Lcom/miui/video/biz/search/fragment/SearchResultFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private hadInit:Z

.field private isTabClick:Z

.field private lastTrackTag:Ljava/lang/String;

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/common/library/base/BaseFragment<",
            "Lcom/miui/video/common/library/base/impl/IPresenter<",
            "Lcom/miui/video/common/library/base/impl/IView;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

.field private mPosition:I

.field private mSearchType:Ljava/lang/String;

.field private vContainer:Landroid/widget/RelativeLayout;

.field private vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

.field private vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

.field private vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

.field private vViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchResultFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->lastTrackTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->isTabClick:Z

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mSearchType:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPosition:I

    return-void
.end method

.method public static final synthetic access$convertToFeedRow(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createSearchChannelFragment(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/common/library/base/BaseFragment;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->createSearchChannelFragment(Ljava/lang/String;Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->lastTrackTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mFragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getMKey$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMPagerAdapter$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getVUISearchBy$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/biz/search/ui/UISearchBy;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

    return-object p0
.end method

.method public static final synthetic access$isTabClick$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->isTabClick:Z

    return p0
.end method

.method public static final synthetic access$setLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->lastTrackTag:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mFragments:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$setMKey$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMPagerAdapter$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    return-void
.end method

.method public static final synthetic access$setTabClick$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->isTabClick:Z

    return-void
.end method

.method public static final synthetic access$setVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    return-void
.end method

.method public static final synthetic access$setVUISearchBy$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Lcom/miui/video/biz/search/ui/UISearchBy;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

    return-void
.end method

.method private final convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutName(Ljava/lang/String;)V

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

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setRow_id(Ljava/lang/String;)V

    return-object v0
.end method

.method private final createSearchChannelFragment(Ljava/lang/String;Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/common/library/base/BaseFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            "Lcom/miui/video/biz/search/entities/SearchData;",
            ")",
            "Lcom/miui/video/common/library/base/BaseFragment<",
            "Lcom/miui/video/common/library/base/impl/IPresenter<",
            "Lcom/miui/video/common/library/base/impl/IView;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/biz/search/fragment/FeedBaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.biz.search.fragment.SearchResultChannelFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p3, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->Companion:Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/biz/search/fragment/FeedBaseFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;

    :goto_0
    new-instance p2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast p2, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->setChangeChannelListener(Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;)V

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.biz.search.fragment.SearchResultChannelFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final initViewPage()V
    .locals 2

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    new-instance v0, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->setOffscreenPageLimit(I)V

    :cond_2
    return-void
.end method

.method private final searchAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    instance-of v0, v0, Lcom/miui/video/biz/search/present/SearchPresent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/search/ui/UISearchBy;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/search/present/SearchPresent;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.biz.search.present.SearchPresent"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method private final setViewPagerData(Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mFragments:Landroid/util/SparseArray;

    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$1;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$1;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$3;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$3;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$4;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$5;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$5;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$6;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$6;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$8;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$8;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    sget-object v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$9;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$9;

    check-cast v4, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v3

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    sget-object v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$1;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$1;

    check-cast v4, Lio/reactivex/functions/Predicate;

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$2;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$2;

    check-cast v4, Lio/reactivex/functions/Function;

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$3;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$3;

    check-cast v4, Lio/reactivex/functions/Function;

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$4;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$4;

    check-cast v4, Lio/reactivex/functions/Function;

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;

    invoke-direct {v4, p0, v2, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;Lcom/miui/video/biz/search/entities/SearchData;)V

    check-cast v4, Lio/reactivex/functions/Consumer;

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v3, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$6;

    invoke-direct {v3, v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$6;-><init>(Landroid/util/SparseArray;)V

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;

    invoke-direct {v1, p0, v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$8;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$8;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    sget-object v3, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$9;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$9;

    check-cast v3, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    :cond_4
    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p1, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createPresenter()Lcom/miui/video/biz/search/present/SearchPresent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-direct {v0}, Lcom/miui/video/biz/search/present/SearchPresent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->createPresenter()Lcom/miui/video/biz/search/present/SearchPresent;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object v0
.end method

.method public initBase()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mKey:Ljava/lang/String;

    const-string v1, "intent_search_type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bundle.getString(OnlineS\u2026g.INTENT_SEARCH_TYPE, \"\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mSearchType:Ljava/lang/String;

    const-string v1, "intent_search_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPosition:I

    return-void

    :cond_0
    return-void
.end method

.method protected initFeedPresenter()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/search/present/SearchPresent;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/common/library/base/impl/IView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/search/present/SearchPresent;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->initViewPage()V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_ui_search_by:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/ui/UISearchBy;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUISearchBy:Lcom/miui/video/biz/search/ui/UISearchBy;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vContainer:Landroid/widget/RelativeLayout;

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->hadInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mSearchType:Ljava/lang/String;

    iget v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPosition:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->searchWord(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->hadInit:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/search/present/SearchPresent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/search/present/SearchPresent;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/search/fragment/FeedBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final searchWord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mSearchType:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->mPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->isTabClick:Z

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->lastTrackTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez v0, :cond_1

    const-string v1, "vUIViewSwitcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->searchAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->fragment_search_result:I

    return v0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "search_result_null_data"

    check-cast v0, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez p1, :cond_0

    const-string v0, "vUIViewSwitcher"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, v0}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez p1, :cond_2

    const-string v0, "vUIViewSwitcher"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, v0}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    :goto_0
    return-void
.end method

.method public showUI(Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 2
    .param p1    # Lcom/miui/video/biz/search/entities/SearchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez v0, :cond_0

    const-string v1, "vUIViewSwitcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->setViewPagerData(Lcom/miui/video/biz/search/entities/SearchData;)V

    return-void
.end method
