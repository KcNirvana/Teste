.class public Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;
.super Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;
.source "PlayerMoreDialog.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerMoreDialog"


# instance fields
.field private mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

.field private mRootView:Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

.field private mRootViewType:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;-><init>()V

    sget-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SETTING:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootViewType:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    return-void
.end method


# virtual methods
.method public bindPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-void
.end method

.method public closeDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->dismiss()V

    return-void
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_more:I

    return v0
.end method

.method protected initFindView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->view_switcher:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->anim_right_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->anim_right_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    sget-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$1;->$SwitchMap$com$miui$video$biz$videoplus$player$dialog$PlayerMoreDialog$RootViewType:[I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootViewType:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootView:Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootView:Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootView:Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootView:Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initViewEvent()V
    .locals 0

    return-void
.end method

.method public setRootView(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mRootViewType:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    return-void
.end method

.method public showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showPrevious()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showPrevious()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;->mViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
