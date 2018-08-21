.class public interface abstract Lcom/flybird/APPullRefreshView$RefreshListener;
.super Ljava/lang/Object;
.source "APPullRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/APPullRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RefreshListener"
.end annotation


# virtual methods
.method public abstract canRefresh()Z
.end method

.method public abstract getOverView()Lcom/alipay/birdnest/api/FBOverView;
.end method

.method public abstract onRefresh()V
.end method
