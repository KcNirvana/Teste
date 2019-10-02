.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogShareScreenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;,
        Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;
    }
.end annotation


# static fields
.field private static final TIP_DURATION:I = 0x7d0


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

.field private mBackView:Landroid/widget/TextView;

.field private mBtnStop:Landroid/view/View;

.field private mCloseView:Landroid/view/View;

.field private mDismissTipRunnable:Ljava/lang/Runnable;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mTvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    return-object p0
.end method

.method private showEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->showEmpty()V

    return-void
.end method

.method private startShareScreenService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_starting_service:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->startShareScreenService()V

    return-void
.end method

.method private stopShareScreenService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->stopShareScreenService()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_share_screen:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBackView:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mCloseView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_tip:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_share_screen_stop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBackView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mCloseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected initViewEvent()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mCloseView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBackView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->isShareScreenServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->startShareScreenService()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->showList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->isConnectedDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mCloseView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->closeDialog()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBackView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->isInPlayBackStateOnRemote()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->closeOnRemote()V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->disconnectDevice()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->closeDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->isConnectedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->stopShareScreenService()V

    :cond_0
    return-void
.end method

.method public onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_connect_fail:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_connect_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDeviceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDeviceListChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->showList(Ljava/util/List;)V

    return-void
.end method

.method public onServiceStarted()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_searching_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mTvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mDismissTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->showList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->mBtnStop:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onServiceStopped()V
    .locals 0

    return-void
.end method
