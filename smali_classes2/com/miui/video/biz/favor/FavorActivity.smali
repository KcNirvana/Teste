.class public Lcom/miui/video/biz/favor/FavorActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "FavorActivity.java"

# interfaces
.implements Lcom/miui/video/biz/favor/view/FavorView;
.implements Lcom/miui/video/framework/impl/IActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;


# static fields
.field private static final PAGE_LOCAL:I = 0x1

.field private static final PAGE_ONLINE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FavorActivity"

.field private static mIsShowDeleteFavorDialog:Z

.field private static mIsShowSyncDialog:Z


# instance fields
.field private eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

.field private mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

.field private mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mIsSyncDialogShowing:Z

.field private mIsTabClicked:Z

.field private mIsUserAggreeDeleteOld:Z

.field private mIsUserAggreeSync:Z

.field private mLastPage:I

.field private mLastSyncedFavorPlaylist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSyncedFavorVideo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

.field private mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

.field private mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mToSyncFavorPlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mToSyncFavorVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/common/library/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

.field private vLogin:Landroid/widget/ImageView;

.field private vLoginTips:Landroid/widget/TextView;

.field private vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

.field private vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

.field private vloginContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_show_sync_favor_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowSyncDialog:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_show_delete_favor_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowDeleteFavorDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsTabClicked:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "is_user_agree_sync_favor"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "is_user_agree_delete_old_favor"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "mLastSyncedFavorVideo"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mLastSyncedFavorVideo:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "mLastSyncedFavorPlaylist"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mLastSyncedFavorPlaylist:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/video/biz/favor/FavorActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/favor/FavorActivity$4;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/favor/FavorActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLoginTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/favor/FavorActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/favor/FavorActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/biz/favor/presenter/FavorPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/favor/FavorActivity;Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/favor/FavorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsTabClicked:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/favor/FavorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsTabClicked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/favor/FavorActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mLastPage:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/biz/favor/FavorActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mLastPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/favor/FavorActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    return-object p0
.end method

.method public static delteleDBFavorPlayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/favor/FavorActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/favor/FavorActivity$6;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static delteleDBFavorVideo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/favor/FavorActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/favor/FavorActivity$5;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$toDeleteOldFavor$8(Lcom/miui/video/biz/favor/FavorActivity;ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    const-string v0, "com.miui.video.KEY_SYNC_DATA"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/biz/favor/FavorActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string p2, "is_user_agree_delete_old_favor"

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$toDeleteOldFavor$9(Lcom/miui/video/biz/favor/FavorActivity;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_user_agree_delete_old_favor"

    iget-boolean v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$toSyncFavor$6(Lcom/miui/video/biz/favor/FavorActivity;ILandroid/view/View;)V
    .locals 3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_user_agree_sync_favor"

    iget-boolean v2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    const-string v0, "com.miui.video.KEY_SYNC_DATA"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/biz/favor/FavorActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$toSyncFavor$7(Lcom/miui/video/biz/favor/FavorActivity;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_user_agree_sync_favor"

    iget-boolean v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method private refreshUIFragment(Z)V
    .locals 4

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v0, "com.miui.video.KEY_SET_DATA"

    invoke-virtual {p1, v0, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    new-instance v2, Lcom/miui/video/biz/favor/FavorActivity$7;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/favor/FavorActivity$7;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v0, "com.miui.video.KEY_SET_DATA"

    invoke-virtual {p1, v0, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    new-instance v2, Lcom/miui/video/biz/favor/FavorActivity$8;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/favor/FavorActivity$8;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    return-object v0
.end method

.method public deleteFavorPlayListFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFavorPlayListFail  failMsg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFavorPlayListSuccess  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorVideoListFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFavorVideoListFail  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorVideoListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFavorVideoListSuccess  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getFavorPlayListFail(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_1
    return-void
.end method

.method public getFavorPlayListSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "favorException"

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/service/common/data/VideoListEntity;->setList(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_3
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/miui/video/biz/favor/FavorActivity;->delteleDBFavorPlayList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public getFavorVideoFail(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_1
    return-void
.end method

.method public getFavorVideoSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "favorException"

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/service/common/data/VideoListEntity;->setList(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_3
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/miui/video/biz/favor/FavorActivity;->delteleDBFavorVideo(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public getMoreFavorPlayListFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreFavorPlayListFail  failMsg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getMoreFavorPlayListSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_3
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/miui/video/biz/favor/FavorActivity;->delteleDBFavorPlayList(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public getMoreFavorVideoFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreFavorVideoFail  failMsg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getMoreFavorVideoSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_3
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/miui/video/biz/favor/FavorActivity;->delteleDBFavorVideo(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public getUnSyncFavorPlayListFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnSyncFavorPlayListFail  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getUnSyncFavorPlayListSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getUploaded()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getUploaded()I

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;

    invoke-direct {v3}, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;-><init>()V

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getEid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->feedId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getItem_type()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->feedType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->videoId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->playlistId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getSave_time()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->gmtCreate:J

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_6

    invoke-direct {p0, v3}, Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getDataType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->toSyncFavor(I)V

    return-void
.end method

.method public getUnSyncFavorVideoFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnSyncFavorVideoFail  failMsg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getUnSyncFavorVideoSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getUploaded()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getUploaded()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;

    invoke-direct {v3}, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;-><init>()V

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getEid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->feedId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->feedType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->videoId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->playlistId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getSave_time()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->gmtCreate:J

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getDataType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->toSyncFavor(I)V

    return-void
.end method

.method public initFindViews()V
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/miui/video/biz/favor/R$id;->ui_titlebar:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/widget/ui/UITitleBar;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v3, Lcom/miui/video/biz/favor/R$drawable;->ic_action_bar_back_black:I

    sget v4, Lcom/miui/video/biz/favor/R$string;->lv_favor:I

    new-instance v9, Lcom/miui/video/biz/favor/FavorActivity$3;

    invoke-direct {v9, v0}, Lcom/miui/video/biz/favor/FavorActivity$3;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/video/service/widget/ui/UITitleBar;->setLeftView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object v10

    sget v11, Lcom/miui/video/service/R$drawable;->edit_video_list:I

    new-instance v1, Lcom/miui/video/biz/favor/FavorActivity$2;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/favor/FavorActivity$2;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v1, Lcom/miui/video/biz/favor/R$id;->v_login_container:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vloginContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/biz/favor/R$id;->v_txt_login:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vLoginTips:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/favor/R$id;->v_button_login:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/miui/video/biz/favor/R$id;->v_indicator:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    sget v1, Lcom/miui/video/biz/favor/R$id;->ui_viewpager:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/FavorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/favor/FavorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    :cond_0
    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    new-instance v1, Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-direct {v1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    new-instance v1, Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-direct {v1}, Lcom/miui/video/service/common/data/FavorPlayListData;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {v1}, Lcom/miui/video/service/fragment/VideoListFragment;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v3, Lcom/miui/video/biz/favor/R$string;->lv_favor:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitleBar(Lcom/miui/video/service/widget/ui/UITitleBar;I)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/favor/FavorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/favor/R$string;->favor_online_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {v1}, Lcom/miui/video/service/fragment/VideoListFragment;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v3, Lcom/miui/video/biz/favor/R$string;->lv_favor:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitleBar(Lcom/miui/video/service/widget/ui/UITitleBar;I)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/favor/FavorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/favor/R$string;->favor_playlist:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mViews:Landroid/util/SparseArray;

    :cond_1
    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mViews:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mViews:Landroid/util/SparseArray;

    const/4 v2, 0x1

    iget-object v4, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnTabChangeClickListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    iget-object v2, v0, Lcom/miui/video/biz/favor/FavorActivity;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object v1, v0, Lcom/miui/video/biz/favor/FavorActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    iput v3, v0, Lcom/miui/video/biz/favor/FavorActivity;->mLastPage:I

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 8

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLoginTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getUnSyncFavorVideo()V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getUnSyncFavorPlayList()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v2, "last_show_login_time_in_favor"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLoginTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLoginTips:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v2, "last_show_login_time_in_favor"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveLong(Ljava/lang/String;J)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorVideo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorPlayList(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->vLogin:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/favor/FavorActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/favor/FavorActivity$1;-><init>(Lcom/miui/video/biz/favor/FavorActivity;Lcom/miui/video/base/account/VideoMiAccountManager;)V

    invoke-virtual {p1, p0, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->cannotBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->getVideoListData()Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorVideoFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->getVideoListData()Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/FavorPlayListData;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mPlaylistFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "favorite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "favorite_detail_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method

.method public onTabChangeClick(I)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsTabClicked:Z

    const-string p1, "FavorActivity"

    const-string v0, "onTabChangeClick"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.miui.video.KEY_INIT_DATA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    const-string p1, ""

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorVideo(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-ne p2, v2, :cond_12

    iget-object p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorPlayList(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "com.miui.video.KEY_LOAD_MORE_DATA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-ne p2, v3, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    iget-object p2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getMoreFavorVideo(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    if-ne p2, v2, :cond_12

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    iget-object p2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getMoreFavorPlayList(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "com.miui.video.KEY_DELETE_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-ne p2, v3, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isAllChecked()Z

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getCheckedVideoList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorPlayListData;->isAllChecked()Z

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/FavorPlayListData;->getCheckedVideoList()Ljava/util/List;

    move-result-object p1

    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_8

    return-void

    :cond_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    new-instance v4, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;

    invoke-direct {v4}, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getEid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->eId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->videoId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->playlistId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getAuthorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->authorId:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    if-ne p2, v3, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {p1, v1, p3}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->deleteFavorVideo(ILjava/util/List;)V

    goto :goto_2

    :cond_a
    if-ne p2, v2, :cond_12

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    invoke-virtual {p1, v1, p3}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->deleteFavorPlayList(ILjava/util/List;)V

    goto :goto_2

    :cond_b
    const-string v0, "com.miui.video.KEY_SYNC_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_c

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_c
    if-ne p2, v3, :cond_e

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    iget-object p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorVideo:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->syncFavorVideo(ILjava/util/List;)V

    goto :goto_2

    :cond_e
    if-ne p2, v2, :cond_12

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    iget-object p2, p0, Lcom/miui/video/biz/favor/FavorActivity;->mToSyncFavorPlayList:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->syncFavorPlayList(ILjava/util/List;)V

    goto :goto_2

    :cond_10
    const-string p3, "com.miui.video.KEY_INIT_LOCAL_DATA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    if-ne p2, v3, :cond_11

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorVideo(Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    if-ne p2, v2, :cond_12

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPresenter:Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorPlayList(Ljava/lang/String;)V

    :cond_12
    :goto_2
    return-void
.end method

.method public setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/favor/R$layout;->activity_video_favor:I

    return v0
.end method

.method public syncFavorPlayListFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncFavorPlayListFail  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public syncFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/miui/video/biz/favor/FavorActivity$10;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/favor/FavorActivity$10;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mFavorPlayListData:Lcom/miui/video/service/common/data/FavorPlayListData;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/FavorPlayListData;->getDataType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/FavorActivity;->toDeleteOldFavor(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncFavorVideoFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FavorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncFavorVideoFail  result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public syncFavorVideoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/miui/video/biz/favor/FavorActivity$9;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/favor/FavorActivity$9;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mOnlineFavorVideoData:Lcom/miui/video/service/common/data/FavorOnlineVideoData;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getDataType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/FavorActivity;->toDeleteOldFavor(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toDeleteOldFavor(Ljava/lang/String;I)V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeDeleteOld:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "com.miui.video.KEY_SYNC_DATA"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/favor/FavorActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowDeleteFavorDialog:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/miui/video/biz/favor/R$string;->sync_favorites_limit:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v4, p1

    sget p1, Lcom/miui/video/biz/favor/R$string;->sync_favorites_title:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/FavorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/miui/video/biz/favor/R$string;->ok:I

    sget v6, Lcom/miui/video/biz/favor/R$string;->cancel:I

    new-instance v7, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$AwWkdgWZ6wJ6ADUj3w-QCuku0es;

    invoke-direct {v7, p0, p2}, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$AwWkdgWZ6wJ6ADUj3w-QCuku0es;-><init>(Lcom/miui/video/biz/favor/FavorActivity;I)V

    new-instance v8, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$Wbr-OdMkZ9-zg2eZuqz3iWPh2dc;

    invoke-direct {v8, p0}, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$Wbr-OdMkZ9-zg2eZuqz3iWPh2dc;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    iput-boolean v1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    const/4 p1, 0x0

    sput-boolean p1, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowDeleteFavorDialog:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string p2, "is_show_delete_favor_dialog"

    sget-boolean v0, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowDeleteFavorDialog:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public toSyncFavor(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsUserAggreeSync:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.video.KEY_SYNC_DATA"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/video/biz/favor/FavorActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowSyncDialog:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    if-nez v0, :cond_1

    sget v0, Lcom/miui/video/biz/favor/R$string;->sync_favorites_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/miui/video/biz/favor/R$string;->sync_favorites_message:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/favor/FavorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/favor/R$string;->ok:I

    sget v6, Lcom/miui/video/biz/favor/R$string;->cancel:I

    new-instance v7, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$Cssx_0JdMwcv1gnNkioevRVmi64;

    invoke-direct {v7, p0, p1}, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$Cssx_0JdMwcv1gnNkioevRVmi64;-><init>(Lcom/miui/video/biz/favor/FavorActivity;I)V

    new-instance v8, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$ooGdHwHdMn-usCHnCCXUrc70Sm4;

    invoke-direct {v8, p0}, Lcom/miui/video/biz/favor/-$$Lambda$FavorActivity$ooGdHwHdMn-usCHnCCXUrc70Sm4;-><init>(Lcom/miui/video/biz/favor/FavorActivity;)V

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/FavorActivity;->mIsSyncDialogShowing:Z

    sput-boolean v1, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowSyncDialog:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_show_sync_favor_dialog"

    sget-boolean v1, Lcom/miui/video/biz/favor/FavorActivity;->mIsShowSyncDialog:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
