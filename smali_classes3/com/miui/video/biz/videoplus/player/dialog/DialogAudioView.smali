.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogAudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;,
        Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

.field private mBackView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_audio:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mBackView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected initViewEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mBackView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    :cond_0
    return-void
.end method
