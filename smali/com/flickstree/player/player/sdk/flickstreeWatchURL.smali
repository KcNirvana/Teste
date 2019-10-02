.class public Lcom/flickstree/player/player/sdk/flickstreeWatchURL;
.super Landroid/webkit/WebView;
.source "flickstreeWatchURL.java"


# instance fields
.field private listVideoDetailsList:Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;


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


# virtual methods
.method public initView(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/flickstreeWatchURL;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/flickstreeWatchURL;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
