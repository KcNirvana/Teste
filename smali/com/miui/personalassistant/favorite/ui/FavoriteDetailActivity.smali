.class public Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "FavoriteDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;
.implements Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;,
        Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebChromeClient;
    }
.end annotation


# static fields
.field public static final CODE_REQUEST_DELETE:I = 0x0

.field public static final CODE_RESPONSE_DELETE:I = 0x1

.field public static final KEY_FAVORITE_RECORD:Ljava/lang/String; = "key_favorite_record"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final KEY_UPDATE:Ljava/lang/String; = "key_update"

.field private static final TAG:Ljava/lang/String; = "FavoriteDetailActivity"


# instance fields
.field private isFirstLoad:Z

.field private isStyleChange:Z

.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBody:Landroid/widget/FrameLayout;

.field private mDialogFont:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;

.field private mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

.field private mInitAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mLoadWebTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

.field private mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

.field private mSourceType:Ljava/lang/String;

.field private mStatus:Landroid/view/View;

.field private mTipArea:Landroid/widget/LinearLayout;

.field private mTipContent:Landroid/widget/TextView;

.field private mTitleline:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->requestReportFormat()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lmiui/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isFirstLoad:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isFirstLoad:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateWebViewBg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->loadData()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setShowTip(ZLjava/lang/String;)V

    return-void
.end method

.method private analysis()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "search"

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Favorite"

    const-string/jumbo v5, "favorite_search_result_click"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "CardView"

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "source"

    const-string/jumbo v5, "card_view"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisDau()V

    :goto_0
    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    const-string/jumbo v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-le v4, v6, :cond_1

    aget-object v4, v3, v6

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    const-string/jumbo v4, "url"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_web"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v4, "Favorite"

    const-string/jumbo v5, "favorite_url_click"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "key_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "source"

    const-string/jumbo v5, "quick_search"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisDau()V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "source"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getCurrentUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getStyleActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mSourceType:Ljava/lang/String;

    const-string/jumbo v1, "CardView"

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "key_favorite_record"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "key_favorite_record"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->loadData()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/favorite/util/StatusBarUtil;->setStatusBarShowOrHidden(ZLandroid/view/Window;)V

    const v1, 0x1b09004e

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvMore()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x1b090028

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1b090226

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTitleline:Landroid/view/View;

    const v1, 0x1b0900b4

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mBody:Landroid/widget/FrameLayout;

    const v1, 0x1b09023f

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    const v1, 0x1b0900d7

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTipContent:Landroid/widget/TextView;

    const v1, 0x1b09023d

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    const v1, 0x1b09023e

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    new-instance v2, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebChromeClient;

    invoke-direct {v2, p0, v3}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebChromeClient;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    new-instance v2, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;

    invoke-direct {v2, p0, v3}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v1, p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setScrollChangedListener(Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setWebViewMode()V

    new-instance v1, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    return-void
.end method

.method private loadData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getStyleActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->reqBodyFromServer()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateUI()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->loadWebContent()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->analysis()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWebContent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private reqBodyFromServer()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->getExpireSeconds(Landroid/content/Context;I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v2, v6

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getPtime()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "[0-9]*"

    invoke-static {v6, v1}, Lcom/miui/personalassistant/util/StringUtil;->matchRegular(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v4, v6, v8

    :cond_0
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getReaded()I

    move-result v6

    if-eq v6, v11, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v6, v11}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    new-instance v6, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;

    invoke-direct {v6, p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    new-array v7, v10, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method private requestReportFormat()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setShowTip(ZLjava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTipContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWebViewMode()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-static {v0}, Lcom/miui/personalassistant/util/WebViewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$5;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$5;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private showFontDialog()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mDialogFont:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mDialogFont:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->setListener(Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mDialogFont:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->show()V

    return-void
.end method

.method private showReportFormatDialog()V
    .locals 4

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$4;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$3;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private showShareDialog()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mFavoriteRecord:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->shareText(Lmiui/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateBg(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateContainerBg(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateWebViewBg(Ljava/lang/String;)V

    return-void
.end method

.method private updateContainerBg(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->updateTitleBarColor(Ljava/lang/String;Landroid/view/Window;)V

    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setTranslucentStatus(I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateStatusBodyBg(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setTranslucentStatus(I)V

    goto :goto_0
.end method

.method private updateStatusBodyBg(Ljava/lang/String;)V
    .locals 6

    const v5, 0x1b0f0098

    const v4, 0x1b0f0097

    const v3, 0x1b0f0096

    const v2, 0x1b0f0095

    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mBody:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v5}, Lmiui/widget/ProgressBar;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mBody:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mBody:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mBody:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 2

    const-string/jumbo v0, "key_font_open_system_brightness"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "key_detail_brightness_progress"

    invoke-static {p0}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->onBrightnessChanged(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "key_font_bg_selected"

    const-string/jumbo v1, "white"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateContainerBg(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "white"

    goto :goto_0
.end method

.method private updateWebViewBg(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript: window.changeBg(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->finish()V

    return-void
.end method

.method public onBackgoundSelected(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackgoundSelected..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->updateBg(Ljava/lang/String;)V

    const-string/jumbo v0, "key_font_bg_selected"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBrightnessChanged(I)V
    .locals 3

    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBrightnessChanged..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/personalassistant/util/BrightnessUtil;->setScreenBrightness(Landroid/view/Window;I)V

    return-void
.end method

.method public onBrightnessModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, -0xff

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/BrightnessUtil;->setScreenBrightness(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvMore()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    const-string/jumbo v0, "Favorite"

    const-string/jumbo v1, "favorite_detail_more_click"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b090224
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b040090

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->initData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x1b0903dc

    const v1, 0x1b0b00c0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->destroy()V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mInitAsyncTask:Landroid/os/AsyncTask;

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mLoadWebTask:Landroid/os/AsyncTask;

    :cond_3
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->hideSoftInput(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onFontSizeSelected(I)V
    .locals 4

    iget-boolean v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->isStyleChange:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FavoriteDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFontSizeSelected..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript: window.changeFontSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->loadUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "key_font_size_selected"

    invoke-static {p0, v1, p1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->initData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getCurrentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_detail_browser_open_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FavoriteDetailActivity"

    const-string/jumbo v4, "Exception "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showReportFormatDialog()V

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_detail_report_problem_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showFontDialog()V

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_detail_setting_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showShareDialog()V

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_detail_share_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showDeleteDialog()V

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_detail_delete_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x1b0903d8 -> :sswitch_1
        0x1b0903d9 -> :sswitch_4
        0x1b0903da -> :sswitch_5
        0x1b0903db -> :sswitch_3
        0x1b0903dc -> :sswitch_2
    .end sparse-switch
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTitleline:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->mTitleline:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
