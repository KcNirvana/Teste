.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "SubtitleSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleSettingsView"


# instance fields
.field private mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

.field private vDividerUpFontSizeLayout:Landroid/view/View;

.field private vFileBrowseView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

.field private vFontColorView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

.field private vFontSizeBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

.field private vGetOnlineSubtitle:Landroid/widget/ImageView;

.field private vSubtitleList:Landroid/widget/ListView;

.field private vSubtitleOffset:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;

.field private vSubtitleSeek:Landroid/widget/ImageView;

.field private vSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Landroid/widget/ViewSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_fragment_settings_subtitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/miui/video/player/service/R$layout;->lp_fragment_settings_subtitle_child1:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-direct {v2, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFileBrowseView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFileBrowseView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mSwitcherListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->setViewSwitchAction(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;)V

    sget v2, Lcom/miui/video/player/service/R$id;->v_subtitle_switcher:I

    invoke-virtual {p0, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/player/service/R$anim;->anim_end_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/player/service/R$anim;->anim_end_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFileBrowseView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    sget v1, Lcom/miui/video/player/service/R$id;->v_subtitle_list:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleList:Landroid/widget/ListView;

    sget v1, Lcom/miui/video/player/service/R$id;->v_get_online_subtitle:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vGetOnlineSubtitle:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/player/service/R$id;->divider_up_fontsize_layout:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vDividerUpFontSizeLayout:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_font_size_view:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFontSizeBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    sget v1, Lcom/miui/video/player/service/R$id;->v_font_color_container:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFontColorView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    sget v1, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_container:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleOffset:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;

    sget v1, Lcom/miui/video/player/service/R$id;->v_subtitle_seek:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleSeek:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleSeek:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$1;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    invoke-direct {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vGetOnlineSubtitle:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPresenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFontSizeBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleOffset:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFontColorView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vFileBrowseView:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleOffset:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getAllSubtitleTracks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->setContents(Ljava/util/List;)V

    return-void
.end method

.method private setNonSubtitleInfoUI()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_no_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setIsSubtitle(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->initPresenter()V

    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vDividerUpFontSizeLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vDividerUpFontSizeLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vSubtitleList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->setGroup(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V

    return-void
.end method

.method public setOnlineSubtitleEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->vGetOnlineSubtitle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->initPresenter()V

    return-void
.end method
