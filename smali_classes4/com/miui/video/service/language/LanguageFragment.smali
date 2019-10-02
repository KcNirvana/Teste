.class public Lcom/miui/video/service/language/LanguageFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "LanguageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/service/language/LanguageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LanguageFragment"

.field public static mIsLanguageInvalid:Z


# instance fields
.field private eReload:Landroid/view/View$OnClickListener;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mOnLanguageChange:Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;

.field private mSelectedLanguage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vImgLeft:Landroid/widget/ImageView;

.field private vLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private vSaveButton:Landroid/widget/TextView;

.field private vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

.field private vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

.field private vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/service/language/LanguageFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/language/LanguageFragment$1;-><init>(Lcom/miui/video/service/language/LanguageFragment;)V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->eReload:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/language/LanguageFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/language/LanguageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showLoadingView()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/service/language/LanguageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showRetry()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/service/language/LanguageFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/feed/UIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/feed/UIRecyclerListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-object p0
.end method

.method private hideLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$showLanguageDialog$9(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public static openLanguageFragment(Landroid/support/v4/app/FragmentActivity;ZILcom/miui/video/service/language/LanguageFragment$OnLanguageChange;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/utils/EventUtils;->isClickTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "LanguageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/video/service/language/LanguageFragment;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "LanguageFragment"

    const-string v0, "openLanguageFragment new LanguageFragment()  "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/service/language/LanguageFragment;

    invoke-direct {v0}, Lcom/miui/video/service/language/LanguageFragment;-><init>()V

    :cond_2
    move-object p1, v0

    check-cast p1, Lcom/miui/video/service/language/LanguageFragment;

    iput-object p3, p1, Lcom/miui/video/service/language/LanguageFragment;->mOnLanguageChange:Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "LanguageFragment"

    const-string p2, "openLanguageFragment    fragment.isHidden "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "LanguageFragment"

    const-string p2, "openLanguageFragment  is not Visible "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "LanguageFragment"

    const-string p3, "openLanguageFragment    !fragment.isAdded "

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "LanguageFragment"

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string p1, "LanguageFragment"

    invoke-virtual {p0, p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static showLanguageDialog(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "IN"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_language_selected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, ""

    sget v0, Lcom/miui/video/service/R$string;->language_setting_tips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/video/service/R$string;->ok:I

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/video/service/language/-$$Lambda$LanguageFragment$_aSAUAlrRqU8hGZ9fo0bOfWOGsU;

    invoke-direct {v6, p0}, Lcom/miui/video/service/language/-$$Lambda$LanguageFragment$_aSAUAlrRqU8hGZ9fo0bOfWOGsU;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    :cond_0
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    return-void
.end method

.method private showRetry()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object v1, p0, Lcom/miui/video/service/language/LanguageFragment;->eReload:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/service/language/LanguagePresenter;

    invoke-direct {v0}, Lcom/miui/video/service/language/LanguagePresenter;-><init>()V

    return-object v0
.end method

.method public initFindViews()V
    .locals 4

    sget v0, Lcom/miui/video/service/R$id;->ui_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/language/LanguageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    sget v0, Lcom/miui/video/service/R$id;->v_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/language/LanguageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vImgLeft:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vImgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/service/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/language/LanguageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vSaveButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/video/service/language/LanguageFragment;->vLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/video/common/feed/GridSpacingItemDecoration;-><init>(IIZ)V

    iget-object v1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    new-instance v1, Lcom/miui/video/service/language/LanguageFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/video/service/language/LanguageFragment$2;-><init>(Lcom/miui/video/service/language/LanguageFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    new-instance v1, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v2, Lcom/miui/video/service/language/LanguageFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/video/service/language/LanguageFragment$3;-><init>(Lcom/miui/video/service/language/LanguageFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "single_selected_language"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/language/LanguagePresenter;->getLanguageList()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showRetry()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$string;->t_network_error:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "language_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "user_skip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "item_id"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "source"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "language_page"

    iget-object v3, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->removeFragment(Landroid/support/v4/app/Fragment;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vSaveButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "single_selected_language"

    iget-object v2, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    const-string v1, "save language success!"

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "is_language_selected"

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.videoplayer.force.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mOnLanguageChange:Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mOnLanguageChange:Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;

    invoke-interface {p1}, Lcom/miui/video/service/language/LanguageFragment$OnLanguageChange;->onLanguageChange()V

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "language_page"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "user_selected"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "item_id"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "source"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v2, "language_page"

    iget-object v3, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-boolean v0, Lcom/miui/video/base/common/statistics/TrackerUtils;->mLanguageInvalid:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, p1, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/service/push/MiPushManager;->setTopic(Landroid/content/Context;)V

    sput-boolean v0, Lcom/miui/video/service/language/LanguageFragment;->mIsLanguageInvalid:Z

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->removeFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/service/R$string;->t_network_error:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vImgLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->onBackPressed()Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->onBackPressed()Z

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    return-void
.end method

.method public onGetLanguageFail(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->hideLoadingView()V

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showRetry()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onGetLanguageSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/service/language/LanguageFragment;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :cond_1
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iput-boolean v0, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object v2, v2, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object v3, p0, Lcom/miui/video/service/language/LanguageFragment;->mSelectedLanguage:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v0, v2, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    goto :goto_0

    :cond_4
    iput-boolean v1, v2, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment;->vUIUGCListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment;->mDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/video/service/language/LanguageFragment;->showRetry()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/service/R$string;->ovp_home_no_data_callback:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/ToastUtils;->show()V

    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "language_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "language_page_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "user_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->fragment_language_list:I

    return v0
.end method
