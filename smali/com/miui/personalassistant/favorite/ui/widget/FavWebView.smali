.class public Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;
.super Landroid/webkit/WebView;
.source "FavWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;
    }
.end annotation


# instance fields
.field private mScrollChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->initSetting()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->setOverScrollMode(I)V

    return-void
.end method

.method private initSetting()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "database"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "app_cache"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->init()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->mScrollChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;->onScrollChanged(IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setScrollChangedListener(Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->mScrollChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/FavWebView$ScrollChangedListener;

    return-void
.end method
