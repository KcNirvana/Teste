.class public Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;
.super Landroid/widget/ImageView;
.source "FilterImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private removeFilter()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_1
    return-void
.end method

.method private setFilter()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setFilter()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->performClick()Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->clickListener(Ljava/lang/String;)V

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->removeFilter()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
