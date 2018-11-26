.class public Lcom/miui/powercenter/legacypowerrank/h;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field aFZ:Ljava/util/List;

.field aGa:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aFZ:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aGa:D

    return-void
.end method

.method private aRK(Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public aRH()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aFZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public aRI(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/powercenter/legacypowerrank/h;->aGa:D

    return-void
.end method

.method public aRJ(Lcom/miui/powercenter/legacypowerrank/e;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aFZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aFZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/h;->aFZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v9, 0x1

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030124

    invoke-static {v0, v1, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/i;

    invoke-direct {v0, p2}, Lcom/miui/powercenter/legacypowerrank/i;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    iget-wide v6, p0, Lcom/miui/powercenter/legacypowerrank/h;->aGa:D

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v2

    iget-wide v6, p0, Lcom/miui/powercenter/legacypowerrank/h;->aGa:D

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/i;

    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/i;->aGd:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/miui/powercenter/legacypowerrank/i;->aGd:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRM(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/i;->aGb:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/i;->aGb:Landroid/widget/ProgressBar;

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%.1f"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    const v2, 0x7f070500

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/powercenter/legacypowerrank/i;->aGc:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRN(Lcom/miui/powercenter/legacypowerrank/e;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v2}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/powercenter/a/g;->bbr(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v3, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v3, v2, v0}, Lcom/miui/common/b/l;->aIG(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/legacypowerrank/h;->aRK(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
