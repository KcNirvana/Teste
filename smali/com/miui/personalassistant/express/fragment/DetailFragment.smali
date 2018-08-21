.class public Lcom/miui/personalassistant/express/fragment/DetailFragment;
.super Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;,
        Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;,
        Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;,
        Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;
    }
.end annotation


# static fields
.field private static final LOADER_EXPRESS_PROGRESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DetailFragment"


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;

.field private mBannerDivider:Landroid/widget/ImageView;

.field private mCainiaoBanner:Landroid/widget/RelativeLayout;

.field private mDescription:Landroid/widget/TextView;

.field private mEditCompany:Landroid/view/MenuItem;

.field private mErrResult:Landroid/widget/TextView;

.field private mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

.field private mExpressSummary:Landroid/widget/RelativeLayout;

.field private mFromManual:Z

.field private mFromSelection:Z

.field private mGoodsDetail:Landroid/widget/LinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

.field private mMenu:Landroid/view/Menu;

.field private mNewExpress:Z

.field private mPickerIntent:Landroid/content/Intent;

.field private mQueryLoaderCallback:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

.field private mRemark:Ljava/lang/String;

.field private mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mState:Landroid/widget/TextView;

.field private mSuggestionDialog:Lmiui/app/AlertDialog;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressEntry;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;)Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromSelection:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/personalassistant/express/fragment/DetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromSelection:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mNewExpress:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateProgress()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateLastQueryNumber()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->showChooseCompanyDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->deleteHistory(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mPickerIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->prepareCompanyPickerIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onEditCompanySelected()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onFinishSelectExpress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mQueryLoaderCallback:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    return-object v0
.end method

.method private deleteHistory(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromSelection:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->deleteExpress(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    const-string/jumbo v0, "DetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete express order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getMatchedCompanyNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const v2, 0x1b0b0142

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    :cond_1
    const v2, 0x1b0b0140

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initActionBar()V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1b0b0131

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initArguments()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "express"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    const-string/jumbo v1, "newExpress"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mNewExpress:Z

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromManual:Z

    :cond_1
    return-void
.end method

.method private initLoader()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mQueryLoaderCallback:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mQueryLoaderCallback:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private initRequestLoader()V
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-direct {v0}, Lcom/miui/personalassistant/loader/RequestLoader;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    new-instance v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/RequestLoader;->setLoaderCallBack(Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;)V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x1b090216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mList:Landroid/widget/ListView;

    const v0, 0x1b0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x1b09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mDescription:Landroid/widget/TextView;

    const v0, 0x1b0900f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mState:Landroid/widget/TextView;

    const v0, 0x1b090211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mCainiaoBanner:Landroid/widget/RelativeLayout;

    const v0, 0x1b090215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mBannerDivider:Landroid/widget/ImageView;

    const v0, 0x1b0901f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    const v0, 0x1b09020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x1b090217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mErrResult:Landroid/widget/TextView;

    const v0, 0x1b09020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressSummary:Landroid/widget/RelativeLayout;

    const v0, 0x1b09020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mGoodsDetail:Landroid/widget/LinearLayout;

    return-void
.end method

.method private loadRemark()V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    iput-object v5, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/express/Constants$Cache;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "remark"

    aput-object v3, v2, v9

    const-string/jumbo v3, "cache_key = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v8, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v7, v8}, Lcom/miui/personalassistant/express/db/Cache;->getKey(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onDeleteSelected()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b00bd

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0138

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$1;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private onEditCompanySelected()V
    .locals 4

    const-string/jumbo v0, "express_detail_choose_click"

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/StatUtil;->recordClickEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mPickerIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->initRequestLoader()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getExpressListRequest(Landroid/content/Context;)Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/loader/RequestLoader;->request(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mPickerIntent:Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onFinishSelectExpress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {v1, v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1, p2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v2, v3, v5}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getExpressQueryRequest(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mErrResult:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->setMenuVisibility(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mQueryLoaderCallback:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private onRemarkSelected()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "express_detail_remark_click"

    invoke-static {v1}, Lcom/miui/personalassistant/express/util/StatUtil;->recordClickEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.yellowpage.action.REMARK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.TITLE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v2, v3}, Lcom/miui/personalassistant/express/db/Cache;->getKey(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setKey(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "order_key"

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "order_remark"

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private prepareCompanyPickerIntent(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const-class v2, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mPickerIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mPickerIntent:Landroid/content/Intent;

    const-string/jumbo v1, "pickerCompanyList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private removeFromDeleted()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getDeletedExpress(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/express/Preferences;->setDeletedExpress(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v1, "DetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeFromDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showCainiaoBanner()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isHasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mGoodsDetail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressSummary:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$3;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mBannerDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mBannerDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mCainiaoBanner:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mCainiaoBanner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mCainiaoBanner:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$4;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private showChooseCompanyDialog(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getMatchedCompanyNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;

    invoke-direct {v4, p0, v1, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/express/fragment/DetailFragment$5;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$5;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mSuggestionDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateBanner()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->loadRemark()V

    const v1, 0x1b0b014a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mDescription:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLastQueryNumber()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromManual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/Preferences;->setLastQueryNumber(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateMenu()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updateProgress()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateBanner()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->setMenuVisibility(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateMenu()V

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v2}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mState:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->getDescriptionRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->showCainiaoBanner()V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->hasDetail()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getDetails()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mResult:Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    iget-object v3, v3, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getStateFlag()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/express/bean/DetailEntry;->buildEntries(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;->updateData(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mErrResult:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mErrResult:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mErrResult:Landroid/widget/TextView;

    const v3, 0x1b0b0145

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "order_remark"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mRemark:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateBanner()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "companyName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "companyCode"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "DetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "companyCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mFromSelection:Z

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onFinishSelectExpress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/high16 v1, 0x1b100000

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x1b0903d5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mEditCompany:Landroid/view/MenuItem;

    const v1, 0x1b0903d4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "V9"

    sget-object v2, Lcom/miui/personalassistant/util/Util;->MIUI_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1b020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x1b040081

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->initArguments()V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->initViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->initLoader()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->setMenuVisibility(Z)V

    new-instance v1, Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v1, v2}, Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->removeFromDeleted()V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onRemarkSelected()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onEditCompanySelected()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->onDeleteSelected()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x1b090319 -> :sswitch_2
        0x1b0903d4 -> :sswitch_0
        0x1b0903d5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->updateMenu()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->showHistory(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->initActionBar()V

    return-void
.end method
