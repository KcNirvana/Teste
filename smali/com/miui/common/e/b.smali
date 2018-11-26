.class public Lcom/miui/common/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private aBA:Ljava/util/ArrayList;

.field private final aBy:Ljava/lang/Runnable;

.field private aBz:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/common/e/d;

    invoke-direct {v0, p0}, Lcom/miui/common/e/d;-><init>(Lcom/miui/common/e/b;)V

    iput-object v0, p0, Lcom/miui/common/e/b;->aBy:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/e/b;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic aLj(Lcom/miui/common/e/b;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    return v0
.end method

.method static synthetic aLk(Lcom/miui/common/e/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public aLi(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lcom/miui/common/e/b;
    .locals 2

    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/e/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/common/e/c;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    iget-object v1, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/common/e/b;->aBz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/e/c;

    invoke-static {v0}, Lcom/miui/common/e/c;->aLn(Lcom/miui/common/e/c;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/common/e/c;->aLm(Lcom/miui/common/e/c;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/common/e/b;->aBz:I

    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    iget-object v2, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/common/e/b;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/common/e/b;->aBy:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    iget-object v1, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/common/e/b;->aBz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/e/c;

    invoke-static {v0}, Lcom/miui/common/e/c;->aLm(Lcom/miui/common/e/c;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget v0, p0, Lcom/miui/common/e/b;->aBz:I

    iget-object v1, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/common/e/b;->aBz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/e/c;

    invoke-static {v0}, Lcom/miui/common/e/c;->aLn(Lcom/miui/common/e/c;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/common/e/c;->aLm(Lcom/miui/common/e/c;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/e/b;->aBA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/miui/common/e/b;->aBz:I

    iget-object v0, p0, Lcom/miui/common/e/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/e/b;->aBy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
