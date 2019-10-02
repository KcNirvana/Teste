.class public Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "SimpleWebViewActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field controller:Lcom/miui/video/common/browser/foundation/WebViewController;

.field private titleTv:Landroid/widget/TextView;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const-class v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->startIntent(Ljava/lang/String;)V

    return-void
.end method

.method private initUrl()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->url:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$onCreate$17(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->onBackPressed()V

    return-void
.end method

.method private startIntent(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start activity error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->goBack()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    sget p1, Lcom/miui/video/service/R$id;->v_title:I

    invoke-virtual {p0, p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->titleTv:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/service/R$id;->v_back:I

    invoke-virtual {p0, p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/video/service/browser/activity/-$$Lambda$SimpleWebViewActivity$nCQ6vIx7rtfy-YaOhTZejryEuEw;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/activity/-$$Lambda$SimpleWebViewActivity$nCQ6vIx7rtfy-YaOhTZejryEuEw;-><init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/miui/video/service/R$id;->ui_webView:I

    invoke-virtual {p0, p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-direct {p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->initUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    new-instance v1, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;-><init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;-><init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->getServiceToken(Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->onResume()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->activity_simple_webview:I

    return v0
.end method
