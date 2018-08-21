.class public Lcom/miui/personalassistant/ui/WebActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "WebActivity.java"


# static fields
.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final LAOHU_PACKAGE_NAME:Ljava/lang/String; = "com.tigerbrokers.stock"

.field private static final TAG:Ljava/lang/String; = "WebActivity"


# instance fields
.field private mLlDownloadTiger:Landroid/widget/LinearLayout;

.field private mWebFragment:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->title:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method private initView()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/WebActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1b0903a5

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->mWebFragment:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    const v1, 0x1b0903a6

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->mLlDownloadTiger:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/WebActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x1b0b0407

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->mLlDownloadTiger:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->mWebFragment:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const v1, 0x1b0903a7

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/WebActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/WebActivity$1;-><init>(Lcom/miui/personalassistant/ui/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/WebActivity;->mLlDownloadTiger:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b040111

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/WebActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/WebActivity;->initData()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/WebActivity;->initView()V

    return-void
.end method
