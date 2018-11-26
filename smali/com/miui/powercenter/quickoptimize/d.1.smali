.class public Lcom/miui/powercenter/quickoptimize/d;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private aDj:Ljava/util/List;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/d;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_2

    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42200000    # 40.0f

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v1, v0, Lcom/miui/powercenter/c/a;->aOE:I

    if-lez v1, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    iget v3, v0, Lcom/miui/powercenter/c/a;->aOE:I

    invoke-static {v1, v3}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    :goto_1
    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/d;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/powercenter/a/g;->bbt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/d;->aDj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
