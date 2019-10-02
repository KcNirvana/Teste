.class public interface abstract Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;
.super Ljava/lang/Object;
.source "FeatureSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/browser/feature/search/FeatureSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnPageChangeListener"
.end annotation


# virtual methods
.method public abstract onHideCustomView()V
.end method

.method public abstract onPageChanged(Landroid/webkit/WebView;Ljava/lang/String;Z)V
.end method

.method public abstract onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method
