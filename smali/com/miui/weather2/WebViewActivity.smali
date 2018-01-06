.class public Lcom/miui/weather2/WebViewActivity;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/WebViewActivity$XiangKan;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Landroid/app/ActionBar;

.field private l:Landroid/content/Context;

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/WebViewActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->l:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->o:Ljava/lang/String;

    const-string v1, "activities.xk.miui.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->o:Ljava/lang/String;

    const-string v1, "staging.activities.xk.miui.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/weather2/WebViewActivity$XiangKan;

    invoke-direct {v1, p0}, Lcom/miui/weather2/WebViewActivity$XiangKan;-><init>(Lcom/miui/weather2/WebViewActivity;)V

    const-string v2, "XiangKan"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/weather2/WebViewActivity;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->setImmersionMenuEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->k:Landroid/app/ActionBar;

    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->g:Landroid/view/View;

    const v0, 0x7f0f013e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f013b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/miui/weather2/h/b;->a(Landroid/webkit/WebView;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/weather2/bk;

    invoke-direct {v1, p0}, Lcom/miui/weather2/bk;-><init>(Lcom/miui/weather2/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/weather2/bl;

    invoke-direct {v1, p0}, Lcom/miui/weather2/bl;-><init>(Lcom/miui/weather2/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/weather2/bn;

    invoke-direct {v1, p0}, Lcom/miui/weather2/bn;-><init>(Lcom/miui/weather2/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/weather2/WebViewActivity;->setImmersionMenuEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/miui/weather2/WebViewActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/WebViewActivity;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f013e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WebViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WebViewActivity;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    const-string v1, "display_menu"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/weather2/WebViewActivity;->n:Z

    invoke-direct {p0}, Lcom/miui/weather2/WebViewActivity;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/WebViewActivity;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/miui/weather2/WebViewActivity;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "push"

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/miui/weather2/be;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f0900dd

    invoke-virtual {p0, v2}, Lcom/miui/weather2/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->l:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    const-string v2, "push"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/weather2/WebViewActivity;->n:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/weather2/WebViewActivity;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0f0196 -> :sswitch_0
        0x7f0f0197 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/weather2/WebViewActivity;->j:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v8

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Type"

    iget-object v4, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "weather_statistics"

    const-string v4, "infoReadTime"

    invoke-static {v3, v4, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/weather2/WebViewActivity;->m:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v8

    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/16 v2, 0x97

    const-string v3, "weather_TargetedDelivery_topic_time"

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/WebViewActivity;->j:J

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity;->i:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/WebViewActivity;->m:J

    :cond_0
    return-void
.end method
