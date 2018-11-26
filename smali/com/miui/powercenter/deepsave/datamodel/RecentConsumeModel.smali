.class public Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/m;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/m;-><init>(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private aZm([Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;Ljava/util/List;)V
    .locals 10

    const/16 v7, 0x8

    const/4 v2, 0x0

    array-length v1, p1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    aget-object v0, p1, v1

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->name:Landroid/widget/TextView;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->appName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v0, p1, v1

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->percent:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "%.1f%%"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-wide v8, v0, Lcom/miui/powercenter/c/a;->aOD:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->aOE:I

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->aOE:I

    invoke-static {v3, v0}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_4

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->line:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->uid:I

    invoke-static {v0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/powercenter/a/g;->bbr(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->uid:I

    invoke-static {p2, v3, v0}, Lcom/miui/common/b/l;->aIG(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    aget-object v0, p1, v1

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->line:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private aZn([Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/c;

    iget v1, p0, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->position:I

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/miui/powercenter/deepsave/datamodel/c;-><init>(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;Landroid/content/Context;[Lcom/miui/powercenter/deepsave/datamodel/b;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/deepsave/datamodel/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic aZo(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->position:I

    return v0
.end method

.method static synthetic aZp(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;[Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->aZm([Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 11

    const v10, 0x7f0a0038

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0130

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0131

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/miui/powercenter/deepsave/datamodel/b;

    new-instance v3, Lcom/miui/powercenter/deepsave/datamodel/b;

    invoke-direct {v3, v9}, Lcom/miui/powercenter/deepsave/datamodel/b;-><init>(Lcom/miui/powercenter/deepsave/datamodel/b;)V

    aput-object v3, v4, v6

    aget-object v3, v4, v6

    iput-object v0, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->parent:Landroid/view/ViewGroup;

    aget-object v5, v4, v6

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v5, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    aget-object v5, v4, v6

    const v3, 0x7f0a00b0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/powercenter/deepsave/datamodel/b;->name:Landroid/widget/TextView;

    aget-object v5, v4, v6

    const v3, 0x7f0a0132

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v5, Lcom/miui/powercenter/deepsave/datamodel/b;->percent:Landroid/widget/TextView;

    aget-object v3, v4, v6

    const v5, 0x7f0a007e

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->line:Landroid/view/View;

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/b;

    invoke-direct {v0, v9}, Lcom/miui/powercenter/deepsave/datamodel/b;-><init>(Lcom/miui/powercenter/deepsave/datamodel/b;)V

    aput-object v0, v4, v7

    aget-object v0, v4, v7

    iput-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->parent:Landroid/view/ViewGroup;

    aget-object v3, v4, v7

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    aget-object v3, v4, v7

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->name:Landroid/widget/TextView;

    aget-object v3, v4, v7

    const v0, 0x7f0a0132

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/miui/powercenter/deepsave/datamodel/b;->percent:Landroid/widget/TextView;

    aget-object v0, v4, v7

    const v3, 0x7f0a007e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->line:Landroid/view/View;

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/b;

    invoke-direct {v0, v9}, Lcom/miui/powercenter/deepsave/datamodel/b;-><init>(Lcom/miui/powercenter/deepsave/datamodel/b;)V

    aput-object v0, v4, v8

    aget-object v0, v4, v8

    iput-object v2, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->parent:Landroid/view/ViewGroup;

    aget-object v1, v4, v8

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/b;->icon:Landroid/widget/ImageView;

    aget-object v1, v4, v8

    const v0, 0x7f0a00b0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/b;->name:Landroid/widget/TextView;

    aget-object v1, v4, v8

    const v0, 0x7f0a0132

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/b;->percent:Landroid/widget/TextView;

    aget-object v0, v4, v8

    const v1, 0x7f0a007e

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/b;->line:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v4

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->aZn([Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/powercenter/deepsave/datamodel/b;

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011e

    return v0
.end method
