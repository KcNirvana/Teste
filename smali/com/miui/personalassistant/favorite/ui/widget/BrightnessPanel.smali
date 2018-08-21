.class public Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;
.super Landroid/widget/LinearLayout;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessPanel"


# instance fields
.field private mBrightnessChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

.field private mBrightnessMax:Landroid/widget/ImageView;

.field private mBrightnessMin:Landroid/widget/ImageView;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mSlidingButtonOpen:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;-><init>(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;)Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    return-object v0
.end method


# virtual methods
.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "key_font_open_system_brightness"

    invoke-static {v1, v2, p2}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    invoke-interface {v1, p2}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;->onBrightnessModeChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "key_detail_brightness_progress"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x1b0f0069

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v3, 0x1b0903b6

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlidingButtonOpen:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlidingButtonOpen:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x1b0903b8

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v3, 0x1b0903b7

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessMin:Landroid/widget/ImageView;

    const v3, 0x1b0903b9

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessMax:Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->setMax(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->refreshBrightness()V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlidingButtonOpen:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "key_font_open_system_brightness"

    invoke-static {v4, v5, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlidingButtonOpen:Lmiui/widget/SlidingButton;

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessMin:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessMax:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "key_detail_brightness_progress"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public refreshBrightness()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setBrightnessChangedListener(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mBrightnessChangedListener:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
