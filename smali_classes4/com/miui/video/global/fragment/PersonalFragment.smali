.class public Lcom/miui/video/global/fragment/PersonalFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "PersonalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/history/view/HistoryView;
.implements Lcom/miui/video/base/account/GetUserInfoView;


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalFragment"


# instance fields
.field private feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private mGetUserPresenter:Lcom/miui/video/base/account/GetUserPresenter;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

.field private mIsHistoryListEmpty:Z

.field private mIsUserLogin:Z

.field private updateListener:Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;

.field private userInfoCallback:Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;

.field private vAvatar:Landroid/widget/ImageView;

.field private vBanner:Landroid/widget/ImageView;

.field private vFavorItem:Lcom/miui/video/global/view/PersonalItemView;

.field private vFeedbackItem:Lcom/miui/video/global/view/PersonalItemView;

.field private vHistoryItem:Lcom/miui/video/global/view/PersonalItemView;

.field private vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

.field private vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private vSigninText:Landroid/widget/TextView;

.field private vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

.field private vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

.field private vUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsUserLogin:Z

    iput-boolean v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsHistoryListEmpty:Z

    new-instance v0, Lcom/miui/video/global/fragment/PersonalFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/global/fragment/PersonalFragment$1;-><init>(Lcom/miui/video/global/fragment/PersonalFragment;)V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->updateListener:Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;

    new-instance v0, Lcom/miui/video/global/fragment/PersonalFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/global/fragment/PersonalFragment$2;-><init>(Lcom/miui/video/global/fragment/PersonalFragment;)V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->userInfoCallback:Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/global/fragment/PersonalFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->refreshUserAvatar()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/global/fragment/PersonalFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vAvatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/global/fragment/PersonalFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUserName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/global/fragment/PersonalFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/global/fragment/PersonalFragment;->gotoLogin(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/global/fragment/PersonalFragment;)Lcom/miui/video/global/view/PersonalItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

    return-object p0
.end method

.method private gotoLogin(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/miui/video/global/fragment/PersonalFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/video/global/fragment/PersonalFragment$4;-><init>(Lcom/miui/video/global/fragment/PersonalFragment;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->startUserInfoActivity(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private initLoginViewState()V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vAvatar:Landroid/widget/ImageView;

    const v2, 0x7f080247

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSigninText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSigninText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUserName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshUserAvatar()V
    .locals 2

    const v0, 0x7f090464

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vAvatar:Landroid/widget/ImageView;

    const v0, 0x7f09032e

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vBanner:Landroid/widget/ImageView;

    const v0, 0x7f090465

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUserName:Landroid/widget/TextView;

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSigninText:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->initLoginViewState()V

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->userInfoCallback:Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->getUserInfo(Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsUserLogin:Z

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mGetUserPresenter:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->getUserInfo()V

    goto :goto_0

    :cond_0
    const-string v0, "VideoMiAccountManager"

    const-string v1, "set empty userInfo to PersonalFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsUserLogin:Z

    :goto_0
    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vBanner:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/global/fragment/PersonalFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/video/global/fragment/PersonalFragment$3;-><init>(Lcom/miui/video/global/fragment/PersonalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    new-instance v0, Lcom/miui/video/base/account/GetUserPresenter;

    invoke-direct {v0}, Lcom/miui/video/base/account/GetUserPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mGetUserPresenter:Lcom/miui/video/base/account/GetUserPresenter;

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mGetUserPresenter:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0, p0}, Lcom/miui/video/base/account/GetUserPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    return-object v0
.end method

.method public getAllHistoryFail(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsHistoryListEmpty:Z

    return-void
.end method

.method public getAllHistorySuccess(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/VideoEntity;

    new-instance v4, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    const/16 v5, 0x47

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLayoutType(I)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTarget(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setDuration(J)V

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getPlayProgress()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setPlayProgress(J)V

    invoke-virtual {v4, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setHintType(I)V

    iget-object v3, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3, v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->add(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v2, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mIsHistoryListEmpty:Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getLocalHistoryFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getLocalHistorySuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getOnlineHistoryFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getOnlineHistorySuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getUserInfoFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getUserInfoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/UserInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public initFindViews()V
    .locals 1

    const v0, 0x7f0903dd

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    const v0, 0x7f0903db

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/global/view/PersonalItemView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vFeedbackItem:Lcom/miui/video/global/view/PersonalItemView;

    const v0, 0x7f0903de

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/global/view/PersonalItemView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

    const v0, 0x7f0903e0

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/global/view/PersonalItemView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

    const v0, 0x7f0903dc

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/global/view/PersonalItemView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vHistoryItem:Lcom/miui/video/global/view/PersonalItemView;

    const v0, 0x7f0903da

    invoke-virtual {p0, v0}, Lcom/miui/video/global/fragment/PersonalFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/global/view/PersonalItemView;

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vFavorItem:Lcom/miui/video/global/view/PersonalItemView;

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

    invoke-virtual {v0, p0}, Lcom/miui/video/global/view/PersonalItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

    invoke-virtual {v0, p0}, Lcom/miui/video/global/view/PersonalItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutType(I)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->feedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const-string v1, "horizontal_wide_history"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutName(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/video/common/feed/DefaultUIFactory;

    invoke-direct {v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->refreshUserAvatar()V

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->updateListener:Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->addAccountUpdateListener(Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;)V

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/global/view/PersonalItemView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/global/view/PersonalItemView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vSubscribeItem:Lcom/miui/video/global/view/PersonalItemView;

    invoke-virtual {p1}, Lcom/miui/video/global/view/PersonalItemView;->onClickListener()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vHistoryItem:Lcom/miui/video/global/view/PersonalItemView;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vFavorItem:Lcom/miui/video/global/view/PersonalItemView;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->vLanguageItem:Lcom/miui/video/global/view/PersonalItemView;

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/video/global/fragment/PersonalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/video/service/language/LanguageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/global/fragment/PersonalFragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mGetUserPresenter:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->detach()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PersonalFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "PersonalFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getAllHistory()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onStop()V

    return-void
.end method

.method public setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0077

    return v0
.end method
