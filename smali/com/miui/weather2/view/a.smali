.class public Lcom/miui/weather2/view/a;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/weather2/view/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/weather2/view/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/weather2/view/a;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/view/a;->a()V

    iget-object v0, p0, Lcom/miui/weather2/view/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/a;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/a;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/miui/weather2/view/a;->setTextSize(IF)V

    invoke-virtual {p0, v0, v4, v0, v1}, Lcom/miui/weather2/view/a;->setPadding(IIII)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x96

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/weather2/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
