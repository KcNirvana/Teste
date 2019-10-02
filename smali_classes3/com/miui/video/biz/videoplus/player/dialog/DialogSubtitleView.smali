.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogSubtitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$ViewHolder;,
        Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;
    }
.end annotation


# static fields
.field private static final EXTRRA_TIME_DELAY_ADD_1000:I = 0x3e8

.field private static final EXTRRA_TIME_DELAY_ADD_500:I = 0x1f4

.field private static final EXTRRA_TIME_DELAY_BACK_1000:I = -0x3e8

.field private static final EXTRRA_TIME_DELAY_BACK_500:I = -0x1f4

.field private static final EXTRRA_TIME_DELAY_RESET:I


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

.field private mBackView:Landroid/view/View;

.field private mBtnSubtitleLocal:Landroid/view/View;

.field private mBtnSubtitleOnline:Landroid/view/View;

.field private mIvTimeControls:[Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mRbFontColors:[Landroid/widget/RadioButton;

.field private mSubtitleTrackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;


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

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubtitleTrackInfo(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    return-void
.end method

.method private selectFontColor(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setSubTitleOffset(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mSubtitleTrackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mSubtitleTrackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DialogSubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSubTitleOffset \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mSubtitleTrackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->setSubtitleTimedTextDelay(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private setSubtitleTrackInfo(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mSubtitleTrackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_subtitle:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBackView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->btn_subtitle_online:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleOnline:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->btn_subtitle_local:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleLocal:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-direct {v0, v1, v2, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mAdapter:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->sb_font_size:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getSubtitleFontSizeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->setCurrentSize(I)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->setFontChangeListener(Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;)V

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->rb_font_color_0:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->rb_font_color_1:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->rb_font_color_2:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->rb_font_color_3:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->rb_font_color_4:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_back_1:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_back_0_5:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_subtitle_reset:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_forward_0_5:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_forward_1:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getSubtitleFontColorIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->selectFontColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mIvTimeControls:[Landroid/widget/ImageView;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected initViewEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleOnline:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleLocal:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mRbFontColors:[Landroid/widget/RadioButton;

    aget-object v0, v0, p2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->setSubtitleFontColorIndex(I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBackView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showPrevious()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleOnline:Landroid/view/View;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/data/Settings;->isAlertNetworkOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/data/Settings;->isAlertLocalCta(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->no_network_tips:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mBtnSubtitleLocal:Landroid/view/View;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleLocalView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back_1:I

    if-ne p1, v0, :cond_5

    const/16 p1, -0x3e8

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubTitleOffset(I)V

    goto :goto_1

    :cond_5
    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back_0_5:I

    if-ne p1, v0, :cond_6

    const/16 p1, -0x1f4

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubTitleOffset(I)V

    goto :goto_1

    :cond_6
    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_subtitle_reset:I

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubTitleOffset(I)V

    goto :goto_1

    :cond_7
    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_forward_0_5:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubTitleOffset(I)V

    goto :goto_1

    :cond_8
    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_forward_1:I

    if-ne p1, v0, :cond_9

    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->setSubTitleOffset(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onSubtitleFontSizeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->setSubtitleFontSizeIndex(I)V

    :cond_0
    return-void
.end method
