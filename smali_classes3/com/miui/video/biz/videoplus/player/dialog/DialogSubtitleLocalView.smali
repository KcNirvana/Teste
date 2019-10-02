.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogSubtitleLocalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

.field private mBackView:Landroid/view/View;

.field private mCurrentUri:Ljava/lang/String;

.field private mDirBackView:Landroid/view/View;

.field private mDirDepth:I

.field private mEmptyView:Landroid/view/View;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/miui/video/base/widget/ui/UIXListView;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    return-void
.end method

.method private refresh(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mCurrentUri:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils;->getCurrentFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->setList(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_subtitle_local:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mBackView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mScrollView:Landroid/widget/ScrollView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_dir_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/widget/ui/UIXListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mListView:Lcom/miui/video/base/widget/ui/UIXListView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mListView:Lcom/miui/video/base/widget/ui/UIXListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/UIXListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils;->getRootDirContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mFileList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mFileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method protected initViewEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->setOnItemClickListener(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mBackView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils;->getRootDirContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mFileList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mFileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mCurrentUri:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->refresh(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirDepth:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->mDirBackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;->refresh(Ljava/lang/String;)V

    return-void
.end method
