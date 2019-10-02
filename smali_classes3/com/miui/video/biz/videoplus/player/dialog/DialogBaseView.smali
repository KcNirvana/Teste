.class public abstract Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.super Landroid/widget/FrameLayout;
.source "DialogBaseView.java"


# instance fields
.field protected mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

.field private mIsRoot:Z

.field protected mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    iput-boolean p4, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mIsRoot:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->initView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->initViewEvent()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    return-void
.end method


# virtual methods
.method protected abstract initView()V
.end method

.method protected abstract initViewEvent()V
.end method

.method public isRoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->mIsRoot:Z

    return v0
.end method
