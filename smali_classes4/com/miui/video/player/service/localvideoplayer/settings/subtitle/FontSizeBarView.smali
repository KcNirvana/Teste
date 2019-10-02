.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "FontSizeBarView.java"


# instance fields
.field private mFontSizeViewContainer:Landroid/widget/LinearLayout;

.field private mSectionFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootParams:Landroid/widget/FrameLayout$LayoutParams;

.field private vRoot:Landroid/widget/LinearLayout;

.field private vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mFontSizeViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->initData(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->rootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->rootParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->initSectionTitle(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->initSeekBar()V

    return-void
.end method

.method private initData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$array;->subtitle_font_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$array;->subtitle_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private initSectionTitle(Landroid/content/Context;)V
    .locals 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mFontSizeViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mFontSizeViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v9, 0x800005

    const v10, 0x800003

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1
    iget-object v9, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :cond_1
    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionTitles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    iget-object v9, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mFontSizeViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mFontSizeViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initSeekBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_font_size_seekbar_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v1, Lcom/miui/video/player/service/R$id;->v_font_size_seekbar:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->mSectionFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setFontSize(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setFontChangeListener(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 0

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->vSeekBar:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "subtitle_font_size"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setCurrentSize(I)V

    :cond_0
    return-void
.end method
