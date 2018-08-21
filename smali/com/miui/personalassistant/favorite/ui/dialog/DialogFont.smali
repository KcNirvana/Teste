.class public Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;
.super Landroid/app/Dialog;
.source "DialogFont.java"

# interfaces
.implements Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;
.implements Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;
.implements Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;
    }
.end annotation


# static fields
.field private static final DISTANCE_MIN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DialogFont"


# instance fields
.field private mBackgroundPanel:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;

.field private mBrightnessPanel:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

.field private mContext:Landroid/content/Context;

.field private mFontSizePanel:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;

.field private mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

.field private point1X:F

.field private point1Y:F

.field private point2X:F

.field private point2Y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x1b0e001a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1X:F

    iput v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2X:F

    iput v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1Y:F

    iput v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2Y:F

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->requestWindowFeature(I)Z

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->initView()V

    return-void
.end method

.method private initView()V
    .locals 8

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x1b040074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->setContentView(Landroid/view/View;)V

    const v4, 0x1b0903c4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;

    iput-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mFontSizePanel:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mFontSizePanel:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "key_font_size_selected"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->setLevel(I)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mFontSizePanel:Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;

    invoke-virtual {v4, p0}, Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel;->setFontSizeSelectedListener(Lcom/miui/personalassistant/favorite/ui/widget/FontSizePanel$FontSizeSelectedListener;)V

    const v4, 0x1b0903b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    iput-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mBrightnessPanel:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mBrightnessPanel:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    invoke-virtual {v4, p0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->setBrightnessChangedListener(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;)V

    const v4, 0x1b0903ba

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;

    iput-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mBackgroundPanel:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mBackgroundPanel:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "key_font_bg_selected"

    const-string/jumbo v7, "white"

    invoke-static {v5, v6, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->setColorSelected(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mBackgroundPanel:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;

    invoke-virtual {v4, p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->setBgSelectedListener(Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1b0e00b0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x50

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method private updateTouchScroll()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1Y:F

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2Y:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2Y:F

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1Y:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->dismiss()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1X:F

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2X:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2X:F

    iget v1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1X:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    return-object v0
.end method

.method public onBackgoundSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;->onBackgoundSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBrightnessChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;->onBrightnessChanged(I)V

    :cond_0
    return-void
.end method

.method public onBrightnessModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;->onBrightnessModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFontSizeSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;->onFontSizeSelected(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1X:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point1Y:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2X:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->point2Y:F

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->updateTouchScroll()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont;->mListener:Lcom/miui/personalassistant/favorite/ui/dialog/DialogFont$FontChangeListener;

    return-void
.end method
