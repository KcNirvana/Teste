.class public Lcom/alipay/birdnest/view/c;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"


# instance fields
.field a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "alipays"

    iput-object v0, p0, Lcom/alipay/birdnest/view/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/birdnest/view/c;->e:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/birdnest/view/c;->a(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:string/config_webViewPackageName"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/webkit/WebView;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/alipay/birdnest/view/d;

    invoke-direct {v0}, Lcom/alipay/birdnest/view/d;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "accessibility"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "accessibilityTraversal"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Lcom/alipay/birdnest/view/e;

    invoke-direct {v0}, Lcom/alipay/birdnest/view/e;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$l$a;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/birdnest/view/c;->e:Z

    invoke-direct {p0, p1}, Lcom/alipay/birdnest/view/c;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    iget-boolean v0, p0, Lcom/alipay/birdnest/view/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1, p2}, Lcom/alipay/birdnest/api/BirdNestEngine$l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$l$a;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/birdnest/view/c;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->c:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/alipay/birdnest/view/c;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/birdnest/view/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/alipay/birdnest/view/c;->c:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method public a(Lcom/alipay/birdnest/api/BirdNestEngine$l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "font-size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "FBWebView"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FBWebView"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "src"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "html"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->b:Landroid/webkit/WebView;

    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, p2, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->a:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/birdnest/view/c;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "nativescheme"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p2, p0, Lcom/alipay/birdnest/view/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
