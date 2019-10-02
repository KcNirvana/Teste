.class public Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "AudioSettingsView.java"


# instance fields
.field private mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private vContent:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_fragment_settings_audio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$id;->content:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->vContent:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    invoke-direct {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setContent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mInfos:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->vContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;->setGroup(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getAllAudioTracks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->setContent(Ljava/util/List;)V

    return-void
.end method
