.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "FileBrowseView.java"


# instance fields
.field private dirIndex:I

.field private mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

.field private mCurrentUri:Ljava/lang/String;

.field mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

.field private mRootList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

.field private vFilesLV:Landroid/widget/ListView;

.field private vFilesNon:Landroid/widget/TextView;

.field private vFolderUp:Landroid/widget/TextView;

.field private vRoot:Landroid/view/View;

.field private vScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mCurrentUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    return p0
.end method

.method static synthetic access$208(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    return v0
.end method

.method static synthetic access$210(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->dirIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mRootList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mRootList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->refreshList(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_seek_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->sv_container:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_subseek_lv:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFilesLV:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_non_files:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFilesNon:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_subseek_folder_up:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFolderUp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFolderUp:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFilesLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->getRootDirContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mRootList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mRootList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setGroup(Ljava/util/List;)V

    return-void
.end method

.method private refreshList(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mCurrentUri:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->getCurrentFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setGroup(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFilesNon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vFilesNon:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->isSmoothScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->vScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->addAndChangeSubtitleTrack(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public setViewSwitchAction(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    return-void
.end method
