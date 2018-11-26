.class public Lcom/miui/powercenter/quickoptimize/ScanResultFrame;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private aEi:Ljava/util/List;

.field private aEj:Landroid/view/ViewGroup;

.field private aEk:Landroid/widget/Button;

.field private aEl:Lcom/miui/powercenter/quickoptimize/e;

.field private aEm:Lcom/miui/common/datamodel/z;

.field private aEn:Ljava/util/List;

.field private aEo:Lcom/miui/common/customview/AutoPasteListView;

.field private aEp:Lcom/miui/common/d/f;

.field private aEq:Lcom/miui/common/d/f;

.field private aEr:Z

.field private aEs:Lcom/miui/common/customview/AutoPasteListView;

.field private aEt:Ljava/util/List;

.field private aEu:Landroid/os/Handler;

.field private aEv:I

.field private aEw:Ljava/util/List;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEr:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEt:Ljava/util/List;

    iput v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEv:I

    new-instance v0, Lcom/miui/powercenter/quickoptimize/H;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/H;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEu:Landroid/os/Handler;

    new-instance v0, Lcom/miui/powercenter/quickoptimize/I;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/I;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEq:Lcom/miui/common/d/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEr:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEt:Ljava/util/List;

    iput v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEv:I

    new-instance v0, Lcom/miui/powercenter/quickoptimize/H;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/H;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEu:Landroid/os/Handler;

    new-instance v0, Lcom/miui/powercenter/quickoptimize/I;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/I;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEq:Lcom/miui/common/d/f;

    return-void
.end method

.method private aPZ(Landroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 12

    new-instance v10, Lcom/miui/common/e/b;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/miui/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3e99999a    # 0.3f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v2, v11

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v10, v2, v0, p1}, Lcom/miui/common/e/b;->aLi(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lcom/miui/common/e/b;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v10, v0, v1, p2}, Lcom/miui/common/e/b;->aLi(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lcom/miui/common/e/b;

    invoke-virtual {v10}, Lcom/miui/common/e/b;->start()V

    return-void
.end method

.method private aQa(Lcom/miui/powercenter/quickoptimize/v;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ScanResultFrame"

    const-string/jumbo v1, "Fix one issue end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/quickoptimize/e;->getCountForSection(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQi()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEu:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private aQb()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    return-void
.end method

.method private aQc()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEj:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private aQd()V
    .locals 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScanResultFrame"

    const-string/jumbo v1, "Select task list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOI(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f0a034d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_0
    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    new-instance v2, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v2}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/miui/powercenter/quickoptimize/O;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/quickoptimize/O;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lcom/miui/powercenter/quickoptimize/v;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQa(Lcom/miui/powercenter/quickoptimize/v;)V

    goto :goto_1
.end method

.method private aQe()J
    .locals 5

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQg()Ljava/util/List;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/quickoptimize/u;->aQE(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private aQf()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEt:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    iget v0, v0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/c;->aOx(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private aQg()Ljava/util/List;
    .locals 4

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOQ()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    iget v3, v0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/powercenter/quickoptimize/c;->aOx(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private aQh()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "quick_optimize_now"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdH(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEr:Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/quickoptimize/e;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEi:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    iget v2, v0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/quickoptimize/c;->aOx(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/v;->aQG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdH(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQi()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQd()V

    return-void
.end method

.method private aQi()V
    .locals 4

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOV()I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdI(I)V

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOR()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/powercenter/b/b;->bdJ(J)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEp:Lcom/miui/common/d/f;

    const/16 v1, 0x41e

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQc()V

    new-instance v0, Lcom/miui/powercenter/quickoptimize/M;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/M;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    new-instance v1, Lcom/miui/powercenter/quickoptimize/N;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/N;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aPZ(Landroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private aQj()V
    .locals 2

    new-instance v0, Lcom/miui/common/datamodel/z;

    invoke-direct {v0}, Lcom/miui/common/datamodel/z;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEm:Lcom/miui/common/datamodel/z;

    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->aZR()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEn:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEm:Lcom/miui/common/datamodel/z;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEn:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/common/datamodel/z;->aKo(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEm:Lcom/miui/common/datamodel/z;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private aQk()V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQf()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEv:I

    if-eq v0, v5, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQe()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f070488

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/o;->aIZ(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    const v1, 0x7f07048a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic aQl(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic aQm(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/powercenter/quickoptimize/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    return-object v0
.end method

.method static synthetic aQn(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEp:Lcom/miui/common/d/f;

    return-object v0
.end method

.method static synthetic aQo(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    return-object v0
.end method

.method static synthetic aQp(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lcom/miui/powercenter/quickoptimize/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQa(Lcom/miui/powercenter/quickoptimize/v;)V

    return-void
.end method

.method static synthetic aQq(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQb()V

    return-void
.end method

.method static synthetic aQr(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQd()V

    return-void
.end method

.method static synthetic aQs(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQh()V

    return-void
.end method

.method static synthetic aQt(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQj()V

    return-void
.end method

.method static synthetic aQu(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQk()V

    return-void
.end method


# virtual methods
.method public aPV(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    return-void
.end method

.method public aPW()V
    .locals 4

    const v3, 0x7f0901bc

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEt:Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFz(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEo:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/J;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/J;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    const v0, 0x7f0a032b

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    const v0, 0x7f0a032a

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEj:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEk:Landroid/widget/Button;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/K;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/K;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFz(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEl:Lcom/miui/powercenter/quickoptimize/e;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEq:Lcom/miui/common/d/f;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/e;->aOA(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/AutoPasteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/L;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/L;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->setPadding(IIII)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQk()V

    return-void
.end method

.method public aPX(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEp:Lcom/miui/common/d/f;

    return-void
.end method

.method public aPY(I)V
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOP()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEs:Lcom/miui/common/customview/AutoPasteListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQj()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aEp:Lcom/miui/common/d/f;

    const/16 v1, 0x41e

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQb()V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQc()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
