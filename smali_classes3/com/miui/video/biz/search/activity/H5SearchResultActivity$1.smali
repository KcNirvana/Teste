.class public final Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;
.super Ljava/lang/Object;
.source "H5SearchResultActivity.kt"

# interfaces
.implements Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/activity/H5SearchResultActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J$\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/miui/video/biz/search/activity/H5SearchResultActivity$1",
        "Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;",
        "onHideCustomView",
        "",
        "onPageChanged",
        "webView",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "isReload",
        "",
        "onShowCustomView",
        "view",
        "Landroid/view/View;",
        "callback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$onWebViewHideCustomView(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    return-void
.end method

.method public onPageChanged(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p2, p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$pageChanged(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebChromeClient$CustomViewCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {v0, p2}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$setMCallback$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object p2, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p2}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_5
    return-void
.end method
