.class public Lcom/miui/optimizemanage/d;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private Aa:Lcom/miui/optimizemanage/memoryclean/f;

.field private Ab:Landroid/widget/TextView;

.field private Ac:Ljava/util/List;

.field private Ad:Lcom/miui/common/customview/AutoPasteListView;

.field private zT:Z

.field private zU:Landroid/widget/ImageView;

.field private zV:Landroid/widget/LinearLayout;

.field private zW:Landroid/widget/TextView;

.field private zX:Lcom/miui/b/b;

.field private zY:Z

.field private zZ:Lcom/miui/optimizemanage/optimizeresult/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/miui/optimizemanage/d;->zT:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/d;->zY:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    new-instance v0, Lcom/miui/optimizemanage/l;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/l;-><init>(Lcom/miui/optimizemanage/d;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->Aa:Lcom/miui/optimizemanage/memoryclean/f;

    return-void
.end method

.method private Be()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/miui/optimizemanage/a/a;->Ac()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/optimizemanage/a/a;->Ad()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0, v1}, Lcom/miui/common/b/a;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/miui/common/b/a;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const v0, 0x7f07040c

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Bi()V
    .locals 12

    const-wide/16 v10, 0x258

    const-wide/16 v8, 0x12c

    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    const-string/jumbo v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zW:Landroid/widget/TextView;

    const-string/jumbo v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/miui/optimizemanage/d;->zW:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->Ab:Landroid/widget/TextView;

    const-string/jumbo v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ad:Lcom/miui/common/customview/AutoPasteListView;

    const-string/jumbo v1, "translationY"

    new-array v2, v4, [F

    const v3, 0x44c0e000    # 1543.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/optimizemanage/view/a;

    invoke-direct {v1}, Lcom/miui/optimizemanage/view/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic Bj(Lcom/miui/optimizemanage/d;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zV:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic Bk(Lcom/miui/optimizemanage/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/d;->zY:Z

    return v0
.end method

.method static synthetic Bl(Lcom/miui/optimizemanage/d;)Lcom/miui/optimizemanage/optimizeresult/q;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    return-object v0
.end method

.method static synthetic Bm(Lcom/miui/optimizemanage/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Bn(Lcom/miui/optimizemanage/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/d;->zY:Z

    return p1
.end method


# virtual methods
.method public Bf(Landroid/content/Loader;Lcom/miui/optimizemanage/optimizeresult/OMDataModel;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    sget-object v1, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->wY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yI(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/q;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/d;->zT:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yJ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public Bg(Lcom/miui/optimizemanage/optimizeresult/d;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v1, 0x1

    if-ltz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/q;->clear()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v1, v0}, Lcom/miui/optimizemanage/optimizeresult/q;->addAll(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/q;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public Bh(Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/m;

    instance-of v3, v0, Lcom/miui/optimizemanage/optimizeresult/o;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->getPositionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/optimizemanage/optimizeresult/o;->getPositionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0, v2}, Lcom/miui/optimizemanage/optimizeresult/q;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ac:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/optimizemanage/n;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/optimizemanage/n;-><init>(Lcom/miui/optimizemanage/d;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x144

    const/4 v5, 0x0

    const v0, 0x7f0300f4

    invoke-virtual {p1, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a02ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->zV:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->zU:Landroid/widget/ImageView;

    const v0, 0x7f0a02d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->Ad:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ad:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ad:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v2, Lcom/miui/optimizemanage/m;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/m;-><init>(Lcom/miui/optimizemanage/d;)V

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/optimizemanage/optimizeresult/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ad:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v2, p0, Lcom/miui/optimizemanage/d;->zZ:Lcom/miui/optimizemanage/optimizeresult/q;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a02d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->Ab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ab:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/optimizemanage/d;->Be()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->zW:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-boolean v0, v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Ae:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zW:Landroid/widget/TextView;

    const v2, 0x7f07040d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Ab:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/d;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Aa:Lcom/miui/optimizemanage/memoryclean/f;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xq(Lcom/miui/optimizemanage/memoryclean/f;)V

    invoke-static {}, Lcom/miui/b/b;->getInstance()Lcom/miui/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/d;->zX:Lcom/miui/b/b;

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zX:Lcom/miui/b/b;

    invoke-virtual {v0, p0}, Lcom/miui/b/b;->bxo(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zW:Landroid/widget/TextView;

    const v2, 0x7f0703fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->zX:Lcom/miui/b/b;

    invoke-virtual {v0, p0}, Lcom/miui/b/b;->bxp(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/d;->Aa:Lcom/miui/optimizemanage/memoryclean/f;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xt(Lcom/miui/optimizemanage/memoryclean/f;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizemanage/d;->Bf(Landroid/content/Loader;Lcom/miui/optimizemanage/optimizeresult/OMDataModel;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/d;->Bi()V

    return-void
.end method
