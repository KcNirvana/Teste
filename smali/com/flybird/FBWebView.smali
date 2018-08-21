.class public Lcom/flybird/FBWebView;
.super Lcom/flybird/FBView;
.source "FBWebView.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$l$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private mWrapper:Lcom/alipay/birdnest/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/flybird/FBView;-><init>(Lcom/flybird/FBDocument;)V

    new-instance v0, Lcom/alipay/birdnest/view/c;

    invoke-direct {v0}, Lcom/alipay/birdnest/view/c;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    iget-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    iget-object v1, p0, Lcom/flybird/FBWebView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/view/c;->a(Lcom/alipay/birdnest/api/BirdNestEngine$l;)V

    iget-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/birdnest/view/c;->a(Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$l$a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flybird/FBWebView;->setInnerView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public doDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    invoke-virtual {p0}, Lcom/flybird/FBWebView;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/view/c;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    return-void
.end method

.method public onLoadUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/flybird/FBWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    invoke-virtual {v1}, Lcom/alipay/birdnest/view/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBWebView;->getNode()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/flybird/FBView;->nativePlatformOnNativeScheme(JLjava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/birdnest/view/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBWebView;->mWrapper:Lcom/alipay/birdnest/view/c;

    iget-object v1, p0, Lcom/flybird/FBWebView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/birdnest/view/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
