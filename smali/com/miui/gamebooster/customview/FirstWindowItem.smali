.class public Lcom/miui/gamebooster/customview/FirstWindowItem;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private hE:Lmiui/widget/SlidingButton;

.field private hF:Landroid/widget/ImageView;

.field private hG:Landroid/widget/TextView;

.field private hH:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/FirstWindowItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/FirstWindowItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/miui/gamebooster/a/H;->ip(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b5

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hF:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hH:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hG:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hE:Lmiui/widget/SlidingButton;

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getButton()Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hE:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method public kd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hF:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hH:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/FirstWindowItem;->hG:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
