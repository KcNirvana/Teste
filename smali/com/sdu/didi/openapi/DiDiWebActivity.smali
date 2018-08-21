.class public Lcom/sdu/didi/openapi/DiDiWebActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/DiDiWebActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/sdu/didi/openapi/ss/d;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/sdu/didi/openapi/ss/f;

.field private d:Lcom/sdu/didi/openapi/gK/b;

.field private e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/sdu/didi/openapi/DiDiWebActivity;Lcom/sdu/didi/openapi/gK/b;)Lcom/sdu/didi/openapi/gK/b;
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->d:Lcom/sdu/didi/openapi/gK/b;

    return-object p1
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/f;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/f;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/d;

    const-string/jumbo v1, "didi_webview"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    const-string/jumbo v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/d;

    const-string/jumbo v1, "didi_toolbar_back"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/d;

    const-string/jumbo v1, "didi_webview_title"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/sdu/didi/openapi/DiDiWebActivity$1;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$1;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sdu/didi/openapi/ss/f;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/f;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/f;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/f;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/DiDiWebActivity$2;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$2;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/DiDiWebActivity$3;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$3;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/DiDiWebActivity$4;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$4;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic c(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->d:Lcom/sdu/didi/openapi/gK/b;

    return-object v0
.end method

.method public static registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sdu/didi/openapi/DIOpenSDK;->registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    return-void
.end method

.method public static showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sdu/didi/openapi/ss/d;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/ss/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/d;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/d;

    const-string/jumbo v1, "activity_di_di_web"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_0

    array-length v4, p3

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget v0, p3, v3

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    :cond_2
    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u7ed9\u4e88\u7a0b\u5e8f\u5fc5\u8981\u7684\u6743\u9650"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->finish()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ne v2, v4, :cond_1

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne v3, v4, :cond_2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x271a

    invoke-virtual {p0, v0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-static {p0}, Lcom/sdu/didi/openapi/location/LocationHelper;->getInstance(Landroid/content/Context;)Lcom/sdu/didi/openapi/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
