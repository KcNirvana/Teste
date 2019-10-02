.class public final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;
.super Lcom/miui/video/service/base/VideoBaseFragmentActivity;
.source "ChannelActivity.kt"

# interfaces
.implements Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;
.implements Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragmentActivity<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;",
        "Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelActivity.kt\ncom/miui/video/biz/shortvideo/channel/ChannelActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,578:1\n1309#2:579\n1378#2,3:580\n1582#2,2:583\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelActivity.kt\ncom/miui/video/biz/shortvideo/channel/ChannelActivity\n*L\n297#1:579\n297#1,3:580\n431#1,2:583\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \\2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u00020\u00042\u00020\u0005:\u0001\\B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u0010H\u0002J\u0018\u0010C\u001a\u00020A2\u0006\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020\u0010H\u0002J\u0006\u0010F\u001a\u00020AJ\u0008\u0010G\u001a\u00020AH\u0016J\u0016\u0010H\u001a\u00020A2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u000e0JH\u0002J\u0008\u0010K\u001a\u00020AH\u0016J\u0010\u0010L\u001a\u00020A2\u0006\u0010M\u001a\u00020\u000eH\u0016J\u0010\u0010N\u001a\u00020A2\u0006\u0010O\u001a\u00020\'H\u0016J\u0010\u0010P\u001a\u00020A2\u0006\u0010M\u001a\u00020\u000eH\u0016J\u0012\u0010Q\u001a\u00020A2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u0014J\u0008\u0010T\u001a\u00020\'H\u0014J\u0008\u0010U\u001a\u00020AH\u0002J\u0012\u0010V\u001a\u00020A2\u0008\u0010W\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010X\u001a\u00020A2\u0006\u0010Y\u001a\u00020\u0010H\u0016J\u0016\u0010Z\u001a\u00020A2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u000e0JH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020<X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;",
        "Lcom/miui/video/service/base/VideoBaseFragmentActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;",
        "Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;",
        "()V",
        "mFavoredChannelsIdList",
        "",
        "",
        "mFavoriteAdapter",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;",
        "mFavoriteChannelList",
        "Ljava/util/ArrayList;",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "mIsChannelInvalid",
        "",
        "getMIsChannelInvalid",
        "()Z",
        "setMIsChannelInvalid",
        "(Z)V",
        "mIsDIYShow",
        "getMIsDIYShow",
        "setMIsDIYShow",
        "mIsInEditState",
        "getMIsInEditState",
        "setMIsInEditState",
        "mLastFavoriteList",
        "mLastRecommendedlList",
        "mNewEditFavoriteList",
        "mNewEditRecommendedlList",
        "mPopupMenu",
        "Landroid/widget/PopupWindow;",
        "mRecommendedAdapter",
        "mRecommendedChannelList",
        "mRecyclerViewItemTouchHelper",
        "Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;",
        "mResponseChannelData",
        "mScrollViewOffset",
        "",
        "mScrolling",
        "mUserRemovedChannelsIdSet",
        "",
        "mViewSwitcher",
        "Lcom/miui/video/service/widget/ui/UIViewSwitcher;",
        "moveScrollView",
        "Ljava/lang/Runnable;",
        "uiFactory",
        "Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;",
        "vFavorChannelEmptyTips",
        "Landroid/widget/TextView;",
        "vFavorChannelTitle",
        "vInitChannelButton",
        "vLayoutManager",
        "Landroid/support/v7/widget/GridLayoutManager;",
        "vNestedScrollView",
        "Landroid/support/v4/widget/NestedScrollView;",
        "vRecommendChannelTitle",
        "vRecommendChannelTitleTips",
        "vUIFavoriteChannels",
        "Landroid/support/v7/widget/RecyclerView;",
        "vUIRecommendedChannels",
        "vUITitleBar",
        "Lcom/miui/video/common/library/widget/UICommonTitleBar;",
        "cancelDIYChannels",
        "",
        "isDIYCancel",
        "changeEditState",
        "isInEditState",
        "isToSave",
        "initChannel",
        "initFindViews",
        "initNewChannel",
        "responseList",
        "",
        "initViewsValue",
        "onAddFavor",
        "entity",
        "onFavorClicked",
        "position",
        "onRemoveFavor",
        "onSaveInstanceState",
        "outState",
        "Landroid/os/Bundle;",
        "setLayoutResId",
        "showDIYTips",
        "showError",
        "errorMsg",
        "showSubscription",
        "hasNew",
        "showUI",
        "channelItemEntities",
        "Companion",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$Companion;

.field private static final ITEM_COUNT:I = 0x4


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private volatile mFavoredChannelsIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private final mFavoriteChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsChannelInvalid:Z

.field private mIsDIYShow:Z

.field private mIsInEditState:Z

.field private final mLastFavoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastRecommendedlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewEditFavoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewEditRecommendedlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenu:Landroid/widget/PopupWindow;

.field private mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private final mRecommendedChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

.field private final mResponseChannelData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScrollViewOffset:I

.field private mScrolling:Z

.field private volatile mUserRemovedChannelsIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

.field private final moveScrollView:Ljava/lang/Runnable;

.field private uiFactory:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;

.field private vFavorChannelEmptyTips:Landroid/widget/TextView;

.field private vFavorChannelTitle:Landroid/widget/TextView;

.field private vInitChannelButton:Landroid/widget/TextView;

.field private vLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private vNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private vRecommendChannelTitle:Landroid/widget/TextView;

.field private vRecommendChannelTitleTips:Landroid/widget/TextView;

.field private vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

.field private vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

.field private vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->Companion:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastFavoriteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastRecommendedlList:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->moveScrollView:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$cancelDIYChannels(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->cancelDIYChannels(Z)V

    return-void
.end method

.method public static final synthetic access$changeEditState(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->changeEditState(ZZ)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFavoriteChannelList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMLastFavoriteList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastFavoriteList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMLastRecommendedlList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastRecommendedlList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMPopupMenu$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getMRecommendedChannelList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMRecyclerViewItemTouchHelper$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    return-object p0
.end method

.method public static final synthetic access$getMResponseChannelData$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mScrollViewOffset:I

    return p0
.end method

.method public static final synthetic access$getMScrolling$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mScrolling:Z

    return p0
.end method

.method public static final synthetic access$getMoveScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->moveScrollView:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getVInitChannelButton$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string v0, "vInitChannelButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVNestedScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-nez p0, :cond_0

    const-string v0, "vNestedScrollView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVUITitleBar$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Lcom/miui/video/common/library/widget/UICommonTitleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    return-object p0
.end method

.method public static final synthetic access$setMContext$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMPopupMenu$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static final synthetic access$setMRecyclerViewItemTouchHelper$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$setMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mScrollViewOffset:I

    return-void
.end method

.method public static final synthetic access$setMScrolling$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mScrolling:Z

    return-void
.end method

.method public static final synthetic access$setVInitChannelButton$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic access$setVNestedScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Landroid/support/v4/widget/NestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    return-void
.end method

.method public static final synthetic access$setVUITitleBar$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Lcom/miui/video/common/library/widget/UICommonTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    return-void
.end method

.method public static final synthetic access$showDIYTips(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->showDIYTips()V

    return-void
.end method

.method private final cancelDIYChannels(Z)V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget v2, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_channel_edit:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4, v3, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_7

    const-string v5, "mFavoriteAdapter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4, v3, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, v2}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_e

    const-string v1, "mRecommendedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_f
    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastFavoriteList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mLastRecommendedlList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_10

    const-string v0, "mFavoriteAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_11

    const-string v0, "mRecommendedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_12
    iget-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    invoke-direct {p0, p1, v4}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->changeEditState(ZZ)V

    return-void
.end method

.method private final changeEditState(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v3, :cond_0

    const-string v4, "mFavoriteAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v3, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->addItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_2

    const-string v4, "vUIFavoriteChannels"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_3
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    if-nez v2, :cond_4

    const-string v3, "vInitChannelButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_6

    const-string v3, "vUIFavoriteChannels"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v3, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$changeEditState$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$changeEditState$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v3, :cond_7

    const-string v4, "mFavoriteAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast v3, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->removeItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V

    :cond_8
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    if-nez v2, :cond_9

    const-string v3, "vInitChannelButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_a

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_a
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3, p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setInEditState(Z)V

    if-eqz p2, :cond_b

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v3, p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setInEditState(Z)V

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelEmptyTips:Landroid/widget/TextView;

    if-nez p1, :cond_f

    const-string v1, "vFavorChannelEmptyTips"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelEmptyTips:Landroid/widget/TextView;

    if-nez p1, :cond_11

    const-string v0, "vFavorChannelEmptyTips"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_12

    const-string v0, "mFavoriteAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_13

    const-string v0, "mRecommendedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string p2, "favor_channel_new"

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->putListData(Ljava/lang/String;Ljava/util/List;)Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string p2, "is_channel_edited_new"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string p2, "is_channel_removed_new"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    invoke-virtual {p1, p2, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsChannelInvalid:Z

    :cond_14
    return-void
.end method

.method private final initNewChannel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final showDIYTips()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_favor_channel_show_new"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$layout;->ui_diy_channels:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showDIYTips$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showDIYTips$1;

    check-cast v2, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_6
    new-instance v1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showDIYTips$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showDIYTips$2;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_favor_channel_show_new"

    iget-boolean v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMIsChannelInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsChannelInvalid:Z

    return v0
.end method

.method public final getMIsDIYShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    return v0
.end method

.method public final getMIsInEditState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    return v0
.end method

.method public final initChannel()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->initNewChannel(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_1

    const-string v1, "mFavoriteAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_2

    const-string v1, "mRecommendedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "favor_channel_new"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->putListData(Ljava/lang/String;Ljava/util/List;)Z

    iput-boolean v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsChannelInvalid:Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_removed_new"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_4
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_removed_new"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_edited_new"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->cancelDIYChannels(Z)V

    return-void
.end method

.method public initFindViews()V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->ui_titlebar:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_channel_root:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_channel_root)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_recommend:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_recommend)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitle:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_recommend_tips:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_recommend_tips)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitleTips:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_init_channels:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_init_channels)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_favorite:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_favorite)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelTitle:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->v_favorite_empty:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.v_favorite_empty)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelEmptyTips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vInitChannelButton:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string v3, "vInitChannelButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->ui_recycler_listview:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.ui_recycler_listview)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->ui_hidden_channel_listview:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.ui_hidden_channel_listview)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    const-string v3, "vUIFavoriteChannels"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_2

    const-string v4, "vUIFavoriteChannels"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_3

    const-string v4, "vUIRecommendedChannels"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_4

    const-string v3, "vUIRecommendedChannels"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setOnClickBack(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-eqz v1, :cond_6

    sget v2, Lcom/miui/video/biz/shortvideo/R$string;->pw_channels:I

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setTitle(I)V

    :cond_6
    new-instance v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_7

    const-string v3, "vUIFavoriteChannels"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    sget v2, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_channel_edit:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUITitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    new-instance v0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method public initViewsValue()V
    .locals 5

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;

    move-object v1, p0

    check-cast v1, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;-><init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->uiFactory:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->uiFactory:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;

    if-nez v3, :cond_0

    const-string v4, "uiFactory"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v3, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-direct {v0, v1, v3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->uiFactory:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;

    if-nez v3, :cond_1

    const-string v4, "uiFactory"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v3, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-direct {v0, v1, v3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    const-string v1, "vUIFavoriteChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_3

    const-string v1, "vUIFavoriteChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v1, :cond_4

    const-string v3, "mFavoriteAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    const-string v1, "vUIFavoriteChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    const-string v1, "vUIRecommendedChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_7

    const-string v1, "vUIRecommendedChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v1, :cond_8

    const-string v2, "mRecommendedAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    const-string v1, "vUIRecommendedChannels"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channels"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "intent.getParcelableArra\u2026eoConfig.INTENT_CHANNELS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->showUI(Ljava/util/List;)V

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    invoke-direct {v0}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_removed_new"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecyclerViewItemTouchHelper:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->addItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V

    :cond_a
    return-void
.end method

.method public onAddFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V
    .locals 7
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isFavor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_6

    const-string v0, "mFavoriteAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_7

    const-string v0, "mRecommendedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFavorClicked(I)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_favor_click_new"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->finish()V

    return-void
.end method

.method public onRemoveFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V
    .locals 7
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isFavor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mNewEditRecommendedlList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_2

    const-string v1, "mFavoriteAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_3

    const-string v1, "mRecommendedAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_removed_new"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->activity_channel:I

    return v0
.end method

.method public final setMIsChannelInvalid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsChannelInvalid:Z

    return-void
.end method

.method public final setMIsDIYShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsDIYShow:Z

    return-void
.end method

.method public final setMIsInEditState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public showSubscription(Z)V
    .locals 0

    return-void
.end method

.method public showUI(Ljava/util/List;)V
    .locals 7
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

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setLayoutType(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mViewSwitcher:Lcom/miui/video/service/widget/ui/UIViewSwitcher;

    if-nez p1, :cond_1

    const-string v1, "mViewSwitcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, v1}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "favor_channel_new"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->getListData(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string v1, "SettingsSPManager.getIns\u2026NNEL, String::class.java)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitleTips:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string v0, "vRecommendChannelTitleTips"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitle:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string v0, "vRecommendChannelTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIRecommendedChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_4

    const-string v0, "vUIRecommendedChannels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelTitle:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string v0, "vFavorChannelTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelTitle:Landroid/widget/TextView;

    if-nez p1, :cond_7

    const-string v3, "vFavorChannelTitle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitleTips:Landroid/widget/TextView;

    if-nez p1, :cond_8

    const-string v3, "vRecommendChannelTitleTips"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vRecommendChannelTitle:Landroid/widget/TextView;

    if-nez p1, :cond_9

    const-string v3, "vRecommendChannelTitle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoredChannelsIdList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5, v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez p1, :cond_e

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_channel_removed_new"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    invoke-virtual {p1, v0, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    :cond_e
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mResponseChannelData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mUserRemovedChannelsIdSet:Ljava/util/Set;

    if-nez v3, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFavor(Z)V

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    :goto_4
    iget-boolean p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mIsInEditState:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelEmptyTips:Landroid/widget/TextView;

    if-nez p1, :cond_12

    const-string v0, "vFavorChannelEmptyTips"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_13
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vFavorChannelEmptyTips:Landroid/widget/TextView;

    if-nez p1, :cond_14

    const-string v0, "vFavorChannelEmptyTips"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_15

    const-string v0, "mFavoriteAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mFavoriteChannelList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez p1, :cond_16

    const-string v0, "mRecommendedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->mRecommendedChannelList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->vUIFavoriteChannels:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_17

    const-string v0, "vUIFavoriteChannels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    new-instance v0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showUI$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$showUI$2;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method
