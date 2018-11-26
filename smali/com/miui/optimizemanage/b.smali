.class public Lcom/miui/optimizemanage/b;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mUnitTextView:Landroid/widget/TextView;

.field private zA:Landroid/view/View;

.field private zB:Landroid/content/pm/IPackageManager;

.field private zC:Z

.field public zD:Z

.field private zE:Landroid/view/View;

.field private zF:I

.field private zG:Lcom/miui/optimizemanage/view/RunningProcessView;

.field private zH:Lcom/miui/optimizemanage/memoryclean/l;

.field private zI:Lcom/miui/optimizemanage/memoryclean/a;

.field private zJ:Ljava/util/ArrayList;

.field private zK:Landroid/widget/TextView;

.field private zL:Landroid/widget/Button;

.field private zM:Landroid/animation/ValueAnimator;

.field private zN:I

.field private zO:Lcom/miui/optimizemanage/view/RunningProcessView;

.field private zP:Landroid/animation/ValueAnimator;

.field private zQ:I

.field private zR:Lcom/miui/optimizemanage/view/RunningProcessView;

.field private zw:Landroid/animation/ValueAnimator;

.field private zx:Lcom/miui/optimizemanage/view/CircleLayout;

.field private zy:Landroid/animation/ValueAnimator;

.field private zz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/miui/optimizemanage/b;->zD:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/b;->zC:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    return-void
.end method

.method private AN()V
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zI:Lcom/miui/optimizemanage/memoryclean/a;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/memoryclean/a;->xc(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/b;

    iget-boolean v1, v0, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    iget-object v1, v0, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    invoke-virtual {v0, v4}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    invoke-virtual {v0, v6}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/settings/c;->zO(J)V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zH:Lcom/miui/optimizemanage/memoryclean/l;

    invoke-virtual {v0, v5}, Lcom/miui/optimizemanage/memoryclean/l;->xE(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/settings/c;->zP(J)V

    return-void
.end method

.method private AO()I
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/b;

    iget-boolean v5, v0, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    if-eqz v5, :cond_1

    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v5, v0, Lcom/miui/optimizemanage/memoryclean/b;->wc:Z

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    int-to-long v6, v3

    iget-wide v8, v0, Lcom/miui/optimizemanage/memoryclean/b;->wb:J

    add-long/2addr v6, v8

    long-to-int v3, v6

    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private AP(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zB:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private AR()V
    .locals 8

    const-wide/16 v6, 0x190

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zA:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/optimizemanage/k;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/k;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zE:Landroid/view/View;

    const-string/jumbo v1, "scaleX"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizemanage/c;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/c;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zE:Landroid/view/View;

    const-string/jumbo v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizemanage/c;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/c;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zE:Landroid/view/View;

    const-string/jumbo v1, "translationY"

    new-array v2, v4, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/miui/optimizemanage/b;->zE:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizemanage/c;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/c;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private AS()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_3
    return-void
.end method

.method private AT(J)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v4}, Lcom/miui/common/b/a;->aGR(Landroid/content/Context;JI)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zK:Landroid/widget/TextView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->mUnitTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private AU()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/optimizemanage/b;->zF:I

    iput v0, p0, Lcom/miui/optimizemanage/b;->zN:I

    iput v0, p0, Lcom/miui/optimizemanage/b;->zQ:I

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/b;

    iget-boolean v2, v0, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/miui/optimizemanage/b;->zF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/optimizemanage/b;->zF:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    iget v0, v0, Lcom/miui/optimizemanage/memoryclean/b;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/miui/optimizemanage/b;->AP(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/optimizemanage/b;->zN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/optimizemanage/b;->zN:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/optimizemanage/b;->zQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/optimizemanage/b;->zQ:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zG:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget v1, p0, Lcom/miui/optimizemanage/b;->zF:I

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/RunningProcessView;->zR(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zO:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget v1, p0, Lcom/miui/optimizemanage/b;->zN:I

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/RunningProcessView;->zR(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zR:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget v1, p0, Lcom/miui/optimizemanage/b;->zQ:I

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/RunningProcessView;->zR(I)V

    return-void
.end method

.method static synthetic AV(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/view/CircleLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zx:Lcom/miui/optimizemanage/view/CircleLayout;

    return-object v0
.end method

.method static synthetic AW(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/memoryclean/l;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zH:Lcom/miui/optimizemanage/memoryclean/l;

    return-object v0
.end method

.method static synthetic AX(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/memoryclean/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zI:Lcom/miui/optimizemanage/memoryclean/a;

    return-object v0
.end method

.method static synthetic AY(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/view/RunningProcessView;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zO:Lcom/miui/optimizemanage/view/RunningProcessView;

    return-object v0
.end method

.method static synthetic AZ(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/view/RunningProcessView;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zR:Lcom/miui/optimizemanage/view/RunningProcessView;

    return-object v0
.end method

.method static synthetic Ba(Lcom/miui/optimizemanage/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/b;->zC:Z

    return p1
.end method

.method static synthetic Bb(Lcom/miui/optimizemanage/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AN()V

    return-void
.end method

.method static synthetic Bc(Lcom/miui/optimizemanage/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AR()V

    return-void
.end method

.method static synthetic Bd(Lcom/miui/optimizemanage/b;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/b;->AT(J)V

    return-void
.end method

.method private startAnimation()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zN()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v6

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v7

    const/high16 v2, 0x44340000    # 720.0f

    aput v2, v1, v8

    const/high16 v2, 0x44b40000    # 1440.0f

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/optimizemanage/f;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/f;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/optimizemanage/g;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/g;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v8, [I

    iget v2, p0, Lcom/miui/optimizemanage/b;->zz:I

    aput v2, v1, v6

    const/high16 v2, 0x100000

    aput v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    iget-object v4, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/optimizemanage/h;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/h;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zy:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget v1, p0, Lcom/miui/optimizemanage/b;->zN:I

    if-lez v1, :cond_0

    new-array v1, v8, [I

    iget v2, p0, Lcom/miui/optimizemanage/b;->zN:I

    aput v2, v1, v6

    aput v6, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    iget-object v4, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/optimizemanage/i;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/i;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zM:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget v1, p0, Lcom/miui/optimizemanage/b;->zQ:I

    if-lez v1, :cond_1

    new-array v1, v8, [I

    iget v2, p0, Lcom/miui/optimizemanage/b;->zQ:I

    aput v2, v1, v6

    aput v6, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizemanage/j;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/j;-><init>(Lcom/miui/optimizemanage/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zP:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public AQ(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/optimizemanage/b;->zD:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AO()I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/b;->zz:I

    iget v0, p0, Lcom/miui/optimizemanage/b;->zz:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizemanage/b;->AT(J)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AU()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->startAnimation()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AR()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zL:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iput-boolean v1, v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Ae:Z

    iput-boolean v1, p0, Lcom/miui/optimizemanage/b;->zD:Z

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AS()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AR()V

    const-string/jumbo v0, "speedboost_stop"

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Ax(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/optimizemanage/e;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/optimizemanage/e;-><init>(Lcom/miui/optimizemanage/b;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x143

    const/4 v5, 0x0

    const v0, 0x7f0300f3

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/l;

    invoke-direct {v0}, Lcom/miui/optimizemanage/memoryclean/l;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zH:Lcom/miui/optimizemanage/memoryclean/l;

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/optimizemanage/memoryclean/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zI:Lcom/miui/optimizemanage/memoryclean/a;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zB:Landroid/content/pm/IPackageManager;

    const v0, 0x7f0a02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zK:Landroid/widget/TextView;

    const v0, 0x7f0a02c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->mUnitTextView:Landroid/widget/TextView;

    const v0, 0x7f0a02cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zL:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/RunningProcessView;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zG:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zG:Lcom/miui/optimizemanage/view/RunningProcessView;

    const v2, 0x7f07040e

    invoke-virtual {p0, v2}, Lcom/miui/optimizemanage/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/optimizemanage/view/RunningProcessView;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a02cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/RunningProcessView;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zO:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zO:Lcom/miui/optimizemanage/view/RunningProcessView;

    const v2, 0x7f07040f

    invoke-virtual {p0, v2}, Lcom/miui/optimizemanage/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/optimizemanage/view/RunningProcessView;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a02cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/RunningProcessView;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zR:Lcom/miui/optimizemanage/view/RunningProcessView;

    iget-object v0, p0, Lcom/miui/optimizemanage/b;->zR:Lcom/miui/optimizemanage/view/RunningProcessView;

    const v2, 0x7f070410

    invoke-virtual {p0, v2}, Lcom/miui/optimizemanage/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/optimizemanage/view/RunningProcessView;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a02c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/CircleLayout;

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zx:Lcom/miui/optimizemanage/view/CircleLayout;

    const v0, 0x7f0a02c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zA:Landroid/view/View;

    const v0, 0x7f0a02c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/b;->zE:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/optimizemanage/b;->AT(J)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/optimizemanage/b;->zC:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizemanage/b;->AS()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizemanage/b;->AQ(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
