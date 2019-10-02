.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "GetOnlineSubtitleView.java"


# static fields
.field private static final ERRORCODE_NO_NETWORK:I = 0x1

.field private static final ERRORCODE_SEARCH_NOTHING:I = 0x2

.field private static final ERRORCODE_SERVICE_FAILED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GetOnlineSubtitleView"


# instance fields
.field private mBtnListener:Landroid/view/View$OnClickListener;

.field mCallback:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

.field private mClickListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

.field private mContentAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

.field private mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

.field private vCancel:Landroid/widget/Button;

.field private vContentListView:Landroid/widget/ListView;

.field private vOK:Landroid/widget/Button;

.field private vSearchEdit:Landroid/widget/EditText;

.field private vSearchGo:Landroid/widget/TextView;

.field private vSearchSubtitleError:Landroid/widget/TextView;

.field private vSearchTxtContainer:Landroid/view/View;

.field private vSwitcher:Landroid/widget/ViewSwitcher;

.field private videoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContents:Ljava/util/List;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mClickListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mCallback:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vOK:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSelectedSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContents:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSelectedSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->canGoOn(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->setSubListVisibility(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->requestError(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContentAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vCancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchGo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/ViewSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method private canGoOn(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->requestError(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/widget/ViewSwitcher;

    invoke-direct {v0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_online_get_loading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/miui/video/player/service/R$layout;->lp_subtitle_online_subtitle_list:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->addView(Landroid/view/View;)V

    sget v0, Lcom/miui/video/player/service/R$id;->v_online_subtitle_search_error:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->v_search_txt_container:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_edit:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchEdit:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/player/service/R$id;->v_search_subtitle_by_text:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchGo:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->v_content:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vContentListView:Landroid/widget/ListView;

    sget v0, Lcom/miui/video/player/service/R$id;->v_cancel:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vCancel:Landroid/widget/Button;

    sget v0, Lcom/miui/video/player/service/R$id;->v_ok:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vOK:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchGo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    invoke-direct {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContentAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vContentListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContentAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mContentAdapter:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mClickListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initOpenSubtitle()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->requestError(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->videoPath:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mCallback:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->videoPath:Ljava/lang/String;

    const-string v2, "eng"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;->getLanguages()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->setLanguagesArray([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->setNeededParamsToSearch(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->mSubtitles:Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->getPossibleSubtitle()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private requestError(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->setSubListVisibility(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_search_notfound:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/video/player/service/R$drawable;->ic_subtitle_getonlinesub_error_empty:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->videoPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->getPureFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_subonline_non_network:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/video/player/service/R$drawable;->ic_subtitle_getonlinesub_error_nowifi:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private setSubListVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vContentListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vContentListView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchTxtContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->vSearchSubtitleError:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->initOpenSubtitle()V

    return-void
.end method
