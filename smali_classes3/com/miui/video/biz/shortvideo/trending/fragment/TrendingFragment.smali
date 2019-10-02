.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "TrendingFragment.kt"

# interfaces
.implements Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/BaseTabFragment<",
        "Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;",
        ">;",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrendingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrendingFragment.kt\ncom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,497:1\n671#2:498\n744#2,2:499\n671#2:501\n744#2,2:502\n1309#2:504\n1378#2,3:505\n671#2:508\n744#2,2:509\n671#2:511\n744#2,2:512\n1309#2:514\n1378#2,3:515\n1582#2,2:518\n1309#2:520\n1378#2,3:521\n671#2:524\n744#2,2:525\n671#2:527\n744#2,2:528\n671#2:530\n744#2,2:531\n1309#2:533\n1378#2,3:534\n671#2:537\n744#2,2:538\n1582#2,2:540\n*E\n*S KotlinDebug\n*F\n+ 1 TrendingFragment.kt\ncom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment\n*L\n104#1:498\n104#1,2:499\n113#1:501\n113#1,2:502\n117#1:504\n117#1,3:505\n119#1:508\n119#1,2:509\n123#1:511\n123#1,2:512\n131#1:514\n131#1,3:515\n138#1,2:518\n149#1:520\n149#1,3:521\n162#1:524\n162#1,2:525\n164#1:527\n164#1,2:528\n166#1:530\n166#1,2:531\n170#1:533\n170#1,3:534\n427#1:537\n427#1,2:538\n427#1,2:540\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f2\u0006\u0010#\u001a\u00020\u000cH\u0002J\u001c\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f2\u0006\u0010#\u001a\u00020\u000cH\u0002J\u0008\u0010%\u001a\u00020\u0002H\u0014J\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0008\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020)H\u0016J\u0008\u0010+\u001a\u00020)H\u0002J\u0008\u0010,\u001a\u00020)H\u0002J\u0016\u0010-\u001a\u00020)2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0008\u0010/\u001a\u00020)H\u0016J\u0008\u00100\u001a\u00020)H\u0016J\u0010\u00101\u001a\u00020)2\u0006\u00102\u001a\u00020\u0008H\u0016J\u0008\u00103\u001a\u00020)H\u0016J\u0008\u00104\u001a\u00020)H\u0016J\u0008\u00105\u001a\u00020)H\u0016J\u0018\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u000209H\u0016J\u0008\u0010:\u001a\u00020\u0006H\u0014J\u0012\u0010;\u001a\u00020)2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0002J\u0012\u0010>\u001a\u00020)2\u0008\u0010?\u001a\u0004\u0018\u00010=H\u0016J\u0010\u0010@\u001a\u00020)2\u0006\u0010A\u001a\u00020\u0008H\u0016J\u0016\u0010B\u001a\u00020)2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J\u0008\u0010C\u001a\u00020=H\u0016J\u0018\u0010D\u001a\u00020)2\u0006\u0010E\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u0006H\u0002J\u0010\u0010G\u001a\u00020)2\u0006\u0010E\u001a\u00020\u0006H\u0002J\u0010\u0010H\u001a\u00020)2\u0006\u0010F\u001a\u00020\u0006H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;",
        "Lcom/miui/video/service/base/BaseTabFragment;",
        "Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;",
        "()V",
        "fixedSize",
        "",
        "isTabClick",
        "",
        "lastTrackerTabPosition",
        "mChannelItemEntities",
        "",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "mFragments",
        "Landroid/util/SparseArray;",
        "Lcom/miui/video/common/library/base/BaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "mPagerAdapter",
        "Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;",
        "mShowedItemEntities",
        "Ljava/util/ArrayList;",
        "vChannel",
        "Landroid/widget/ImageView;",
        "vContainer",
        "Landroid/widget/LinearLayout;",
        "vIndicator",
        "Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;",
        "vSearchBar",
        "Lcom/miui/video/service/widget/ui/UISearchBar;",
        "vUIViewSwitcher",
        "Lcom/miui/video/service/widget/ui/UIViewSwitcher;",
        "vUIViewpager",
        "Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;",
        "createChannelFragment",
        "entity",
        "createPlayListChannelFragment",
        "createPresenter",
        "filterChannel",
        "list",
        "initChannelData",
        "",
        "initFindViews",
        "initSearchBar",
        "initViewPage",
        "initViewPagerData",
        "channelItemEntities",
        "initViewsEvent",
        "initViewsValue",
        "onHiddenChanged",
        "hidden",
        "onResume",
        "onStart",
        "onStop",
        "refresh",
        "force",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "setLayoutResId",
        "setSearchBarHintText",
        "searchKey",
        "",
        "showError",
        "errorMsg",
        "showSubscription",
        "hasNew",
        "showUI",
        "tackerPageName",
        "trackerChannel",
        "lastChannelPosition",
        "currentPosition",
        "trackerChannelPageEnd",
        "trackerChannelPageStart",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private fixedSize:I

.field private isTabClick:Z

.field private lastTrackerTabPosition:I

.field private mChannelItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

.field private mShowedItemEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private vChannel:Landroid/widget/ImageView;

.field private vContainer:Landroid/widget/LinearLayout;

.field private vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

.field private vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

.field private vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

.field private vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->isTabClick:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    return-void
.end method

.method public static final synthetic access$getLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    return p0
.end method

.method public static final synthetic access$getMChannelItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFragments$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getVIndicator$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getVSearchBar$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    return-object p0
.end method

.method public static final synthetic access$initChannelData(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initChannelData()V

    return-void
.end method

.method public static final synthetic access$isTabClick$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->isTabClick:Z

    return p0
.end method

.method public static final synthetic access$setLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    return-void
.end method

.method public static final synthetic access$setMChannelItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setMContext$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMFragments$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$setMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setSearchBarHintText(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->setSearchBarHintText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setTabClick$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->isTabClick:Z

    return-void
.end method

.method public static final synthetic access$setVIndicator$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    return-void
.end method

.method public static final synthetic access$setVSearchBar$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Lcom/miui/video/service/widget/ui/UISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    return-void
.end method

.method public static final synthetic access$trackerChannel(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannel(II)V

    return-void
.end method

.method private final createChannelFragment(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/common/library/base/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ")",
            "Lcom/miui/video/common/library/base/BaseFragment<",
            "Lcom/miui/video/common/library/base/impl/IPresenter<",
            "Lcom/miui/video/common/library/base/impl/IView;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->Companion:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;->newInstance(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->setSearchKeyResultListener(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;)V

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    return-object p1
.end method

.method private final createPlayListChannelFragment(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/common/library/base/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ")",
            "Lcom/miui/video/common/library/base/BaseFragment<",
            "Lcom/miui/video/common/library/base/impl/IPresenter<",
            "Lcom/miui/video/common/library/base/impl/IView;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;->Companion:Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment$Companion;->newInstance(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    return-object p1
.end method

.method private final filterChannel(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_clicked_new"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_5
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_removed_new"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    check-cast v2, Ljava/util/List;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v6

    const-string v7, "is_channel_removed_new"

    const-string v8, "set"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v6, v7, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_f

    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_d

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->fixedSize:I

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez p1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "favor_channel_new"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->putListData(Ljava/lang/String;Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez p1, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_15
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v2, "is_channel_clicked_new"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    check-cast v6, Ljava/util/Set;

    invoke-virtual {p1, v2, v6}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setNew(Ljava/lang/Integer;)V

    goto :goto_b

    :cond_17
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v6, "favor_channel_new"

    const-class v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/miui/video/base/common/data/SettingsSPManager;->getListData(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez p1, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "favor_channel_new"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_19
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->putListData(Ljava/lang/String;Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez p1, :cond_1b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v9}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v7, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v7, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_21

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_22
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v9}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-virtual {v9}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_23

    goto :goto_f

    :cond_23
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_24

    const/4 v9, 0x1

    goto :goto_10

    :cond_24
    :goto_f
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_22

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_25
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v1, v6

    const/4 v6, 0x2

    if-le v1, v6, :cond_2c

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_27

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v8}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v8}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_29

    goto :goto_12

    :cond_29
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_2a

    const/4 v8, 0x1

    goto :goto_13

    :cond_2a
    :goto_12
    const/4 v8, 0x0

    :goto_13
    if-eqz v8, :cond_28

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2b
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v1, v0, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_17

    :cond_2c
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_2d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_2f

    goto :goto_15

    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_30

    const/4 v7, 0x1

    goto :goto_16

    :cond_30
    :goto_15
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_2e

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_31
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_17
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "favor_channel_new"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_32
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_33
    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->putListData(Ljava/lang/String;Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez p1, :cond_34

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_34
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final initChannelData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->getChannelListData()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->getSubscriptionStatus()V

    :cond_0
    return-void
.end method

.method private final initSearchBar()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setEditEnableFocus(Z)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_ui_search_bar_mi_logo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setLeftImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_ui_search_bar_voice_gray:I

    new-instance v2, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightIconImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_ui_search_bar_subscriber:I

    new-instance v2, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$2;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightFirstImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_ui_search_bar_history:I

    new-instance v2, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$3;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$3;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightSecondImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initSearchBar$4;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setListener(Landroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    :cond_1
    return-void
.end method

.method private final initViewPage()V
    .locals 2

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->iv_category:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vChannel:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vChannel:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "vChannel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->setOffscreenPageLimit(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$2;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnTabReselectedListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$3;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnTabChangeClickListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initViewPagerData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;->notifyDataSetChanged()V

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getSubChannel()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-direct {p0, v5}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->createPlayListChannelFragment(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-direct {p0, v5}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->createChannelFragment(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getSelected()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_6

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "is_favor_click_new"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_8

    iget v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->fixedSize:I

    add-int/2addr p1, v1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "is_favor_click_new"

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveInt(Ljava/lang/String;I)V

    :cond_8
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    :cond_a
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz p1, :cond_b

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method private final setSearchBarHintText(Ljava/lang/String;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->scheduleMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private final trackerChannel(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    if-eq p1, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageEnd(I)V

    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageStart(I)V

    :cond_3
    return-void
.end method

.method private final trackerChannelPageEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->onPageEnd()V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;->onPageEnd()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final trackerChannelPageStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->onPageStart()V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;->onPageStart()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createPresenter()Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->createPresenter()Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_ui_search_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/service/widget/ui/UISearchBar;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_ll_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->ui_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vContainer:Landroid/widget/LinearLayout;

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.service.widget.ui.UISearchBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsEvent()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPage()V

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initSearchBar()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez v0, :cond_0

    const-string v1, "vUIViewSwitcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewsEvent$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const/4 v3, 0x0

    sget-object v4, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initChannelData()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageEnd(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageStart(I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_edited_new"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v3, "is_channel_edited_new"

    invoke-virtual {v0, v3, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    iput v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    check-cast v1, Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "favor_channel_new"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getListData(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_clicked_new"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setNew(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mShowedItemEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPagerData(Ljava/util/List;)V

    goto :goto_5

    :cond_f
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v3, "is_favor_click_new"

    invoke-virtual {v0, v3, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_11

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    if-eqz v3, :cond_10

    iget v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->fixedSize:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0, v2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(IZ)V

    :cond_10
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v2, "is_favor_click_new"

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveInt(Ljava/lang/String;I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onStart()V

    iget v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageStart(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onStop()V

    iget v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->lastTrackerTabPosition:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->trackerChannelPageEnd(I)V

    return-void
.end method

.method public refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->getChannelListData()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewpager:Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/viewpager/CanForbidScrollViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/common/library/base/BaseFragment;

    :cond_3
    instance-of v0, v1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    if-eqz v0, :cond_4

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    if-eqz v0, :cond_5

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->fragment_trending:I

    return v0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez p1, :cond_0

    const-string v0, "vUIViewSwitcher"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, v0}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    return-void
.end method

.method public showSubscription(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightFirstNew(Z)Lcom/miui/video/service/widget/ui/UISearchBar;

    :cond_0
    return-void
.end method

.method public showUI(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channelItemEntities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vUIViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez v0, :cond_0

    const-string v1, "vUIViewSwitcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->vChannel:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const-string v0, "vChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->mChannelItemEntities:Ljava/util/List;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->filterChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPagerData(Ljava/util/List;)V

    return-void
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "maintab_trending"

    return-object v0
.end method
