.class public Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;
.super Landroid/widget/LinearLayout;
.source "FontSizePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final SCREEN_COLOR_LEVEL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FontSizePanel"


# instance fields
.field private levelTextView:Landroid/widget/LinearLayout;

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mDegreePerEntry:D

.field private mFontSizeSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;

.field private mLevel:I

.field private mLevelTexts:[Ljava/lang/CharSequence;

.field private mSeekBarFontSize:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    return-void
.end method

.method private generateLevelTextColorStateList()Landroid/content/res/ColorStateList;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-array v0, v7, [I

    const v6, 0x10100a1

    aput v6, v0, v8

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    new-array v4, v9, [[I

    new-array v1, v9, [I

    aput-object v0, v4, v8

    sget v6, Lmiui/R$attr;->textColorChecked:I

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v1, v8

    new-array v6, v7, [I

    aput-object v6, v4, v7

    sget v6, Lmiui/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v1, v7

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v6
.end method

.method private initView()V
    .locals 12

    const/4 v8, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->generateLevelTextColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1b080004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevelTexts:[Ljava/lang/CharSequence;

    const v6, 0x1b0903c6

    invoke-virtual {p0, v6}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v5

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v5, v9, v5, v10}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    invoke-virtual {v6, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v6, 0x1b0903c5

    invoke-virtual {p0, v6}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelTextView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_4

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v9, -0x2

    invoke-direct {v3, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    move v6, v7

    :goto_1
    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    if-nez v0, :cond_2

    move v6, v8

    :goto_3
    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_2
    move v6, v7

    goto :goto_3

    :cond_3
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->updateFontSizeUI()V

    return-void
.end method

.method private levelToProgress(I)I
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private progressToLevel(I)I
    .locals 6

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private setSeekBarProgress(Landroid/widget/SeekBar;I)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-double v0, p2

    iget-wide v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDegreePerEntry:D

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private updateFontSizeUI()V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevelTexts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mColorStateList:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getFontSizeSelectedListener()Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mFontSizeSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->initView()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->progressToLevel(I)I

    move-result v0

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string/jumbo v0, "FontSizePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch...progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelToProgress(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->setSeekBarProgress(Landroid/widget/SeekBar;I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->updateFontSizeUI()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mFontSizeSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mFontSizeSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;->onFontSizeSelected(I)V

    :cond_0
    return-void
.end method

.method public setFontSizeSelectedListener(Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mFontSizeSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;

    return-void
.end method

.method public setLevel(I)V
    .locals 2

    iput p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mSeekBarFontSize:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->mLevel:I

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->levelToProgress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->setSeekBarProgress(Landroid/widget/SeekBar;I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->updateFontSizeUI()V

    return-void
.end method
