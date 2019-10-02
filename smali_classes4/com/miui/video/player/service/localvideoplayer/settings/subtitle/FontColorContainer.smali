.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "FontColorContainer.java"


# instance fields
.field mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->calculateColor(I)V

    return-void
.end method

.method private calculateColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleTextColor(II)V

    return-void
.end method

.method private initColorSet()V
    .locals 6

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "subtitle_font_color"

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/video/player/service/R$id;->v_color_radiogroup:I

    invoke-virtual {p0, p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->initColorSet()V

    return-void
.end method
