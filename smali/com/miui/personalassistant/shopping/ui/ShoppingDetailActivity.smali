.class public Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;,
        Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;
    }
.end annotation


# static fields
.field public static final CODE_REQUEST_DELETE:I = 0x0

.field public static final CODE_RESPONSE_DELETE:I = 0x1

.field public static final KEY_TITLE:Ljava/lang/String; = "key_title"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final KEY_UPDATE:Ljava/lang/String; = "key_update"

.field public static final KEY_URL:Ljava/lang/String; = "key_url"

.field private static final TAG:Ljava/lang/String; = "ShoppingDetailActivity"


# instance fields
.field private mBody:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

.field private mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

.field private mSourceType:Ljava/lang/String;

.field private mStatus:Landroid/view/View;

.field private mTipArea:Landroid/widget/LinearLayout;

.field private mTipContent:Landroid/widget/TextView;

.field private mTitleline:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Lmiui/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setShowTip(ZLjava/lang/String;)V

    return-void
.end method

.method private analysis()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "search"

    iget-object v5, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Shopping"

    const-string/jumbo v5, "shopping_search_result_click"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "CardView"

    iget-object v5, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "source"

    const-string/jumbo v5, "card_view"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->analysisDau()V

    :goto_0
    iget-object v4, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

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
    const-string/jumbo v4, "Shopping"

    const-string/jumbo v5, "shopping_url_click"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "key_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "source"

    const-string/jumbo v5, "quick_search"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->analysisDau()V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "source"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mSourceType:Ljava/lang/String;

    const-string/jumbo v1, "key_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->analysis()V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setShowTip(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x1b0f0097

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/favorite/util/StatusBarUtil;->setStatusBarShowOrHidden(ZLandroid/view/Window;)V

    const v1, 0x1b09004e

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvMore()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x1b090028

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1b090226

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTitleline:Landroid/view/View;

    const v1, 0x1b0900b4

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mBody:Landroid/widget/FrameLayout;

    const v1, 0x1b09023f

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    const v1, 0x1b0900d7

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTipContent:Landroid/widget/TextView;

    const v1, 0x1b09023d

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    const v1, 0x1b09023e

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    new-instance v2, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;

    invoke-direct {v2, p0, v4}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    new-instance v2, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;

    invoke-direct {v2, p0, v4}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v1, p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setScrollChangedListener(Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mStatus:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v1, v3}, Lmiui/widget/ProgressBar;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mBody:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setWebViewMode()V

    new-instance v1, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    return-void
.end method

.method private setShowTip(ZLjava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTipContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTipArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWebViewMode()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-static {v0}, Lcom/miui/personalassistant/util/WebViewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    new-instance v2, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)V

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    move-result-object v0

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b03c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b03c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b00c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    return-void
.end method

.method private showShareDialog()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "key_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->shareText(Lmiui/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->finish()V

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
    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getIvMore()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mRlTitle:Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    const-string/jumbo v0, "Shopping"

    const-string/jumbo v1, "shopping_detail_more_click"

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

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->initData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mWebView:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->hideSoftInput(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->initData()V

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

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v3, "Shopping"

    const-string/jumbo v4, "shopping_detail_browser_open_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ShoppingDetailActivity"

    const-string/jumbo v4, "Exception "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->showShareDialog()V

    const-string/jumbo v3, "Shopping"

    const-string/jumbo v4, "shopping_detail_share_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->showDeleteDialog()V

    const-string/jumbo v3, "Shopping"

    const-string/jumbo v4, "shopping_detail_delete_click"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x1b0903d8 -> :sswitch_1
        0x1b0903d9 -> :sswitch_2
        0x1b0903da -> :sswitch_3
    .end sparse-switch
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTitleline:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->mTitleline:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
