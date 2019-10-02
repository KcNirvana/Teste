.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogSubtitleOnlineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;,
        Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$ViewHolder;,
        Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

.field private mBackView:Landroid/view/View;

.field private mBtnDeclareCancel:Landroid/view/View;

.field private mBtnDeclareOk:Landroid/view/View;

.field private mCbDeclare:Landroid/widget/CheckBox;

.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field private mDeclareLayout:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingLayout:Landroid/view/View;

.field private mMsgText:Landroid/widget/TextView;

.field private mMsgView:Landroid/view/View;

.field private mSearchBtn:Landroid/view/View;

.field private mSearchInput:Landroid/widget/EditText;

.field private mSearchLayout:Landroid/view/View;

.field private mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchBtn:Landroid/view/View;

    return-object p0
.end method

.method private showDeclareView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mDeclareLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoading()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mDeclareLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showNetworkError()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgText:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_search_no_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_subtitle_online_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSearchNothing()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgText:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_search_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_subtitle_online_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSearchResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startLoading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showLoading()V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showNetworkError()V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;

    const/4 v1, 0x0

    const-string v2, "eng"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;->getLanguages()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->setLanguagesArray([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->setNeededParamsToSearch(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSubtitles:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->getPossibleSubtitle()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_subtitle_online:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBackView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ll_declare_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mDeclareLayout:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ll_search_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchLayout:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_loading_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mLoadingLayout:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_msg_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_msg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mMsgText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->setOnItemClickListener(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->et_search:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchInput:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_search:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_declare_content:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_declare_content:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->color_218BFF:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpanNoUnderLine(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareOk:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareCancel:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->cb_declare_remember:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mCbDeclare:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mVideoPath:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v2, "subtitle_online_remember_checked"

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mVideoPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->startLoading(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showDeclareView()V

    :goto_0
    return-void
.end method

.method protected initViewEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$2;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBackView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchBtn:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->startLoading(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareOk:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object p1

    const-string v0, "subtitle_online_remember_checked"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mCbDeclare:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->saveBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->startLoading(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mBtnDeclareCancel:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_download_fail:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public onSubtitleDownload(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_download_success:I

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_download_fail:I

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubtitlesListFound(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleUtil;->isSupportSubtitle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showSearchNothing()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->mContents:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showSearchResult(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->showSearchNothing()V

    return-void
.end method
