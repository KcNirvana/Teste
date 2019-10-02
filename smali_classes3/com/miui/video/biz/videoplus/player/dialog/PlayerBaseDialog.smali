.class public abstract Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "PlayerBaseDialog.java"


# instance fields
.field protected mDialog:Landroid/support/v7/app/AppCompatDialog;

.field protected mIsLandscape:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private adjustWindow()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mIsLandscape:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/video/biz/videoplus/R$dimen;->player_more_width_landscape:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    sget v2, Lcom/miui/video/biz/videoplus/R$style;->AnimationDialogRight:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    :cond_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->player_more_height_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    sget v2, Lcom/miui/video/biz/videoplus/R$style;->AnimationDialogBottom:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected abstract getContentViewLayoutId()I
.end method

.method protected abstract initFindView()V
.end method

.method protected abstract initViewEvent()V
.end method

.method public isShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->adjustWindow()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$style;->PlayerDialog:I

    invoke-direct {p1, v0, v1}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->getContentViewLayoutId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->initFindView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->initViewEvent()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->adjustWindow()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerBaseDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
