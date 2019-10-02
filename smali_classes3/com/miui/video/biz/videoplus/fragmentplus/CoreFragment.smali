.class public abstract Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/BaseFragment;
.source "CoreFragment.java"

# interfaces
.implements Lcom/miui/video/framework/uri/PageInfoUtils$IPageInfo;
.implements Lcom/miui/video/framework/impl/IActivityListener;


# instance fields
.field private mStatisticsSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->mStatisticsSwitch:Z

    return-void
.end method


# virtual methods
.method protected enableStatistics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->mStatisticsSwitch:Z

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageRefer()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/video/framework/uri/PageInfoUtils;->getPageRefer(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initBase()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public onForceRefresh()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/BaseFragment;->onResume()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public scrollToCurrentPage()V
    .locals 0

    return-void
.end method

.method public smoothScrollToTop()V
    .locals 0

    return-void
.end method
