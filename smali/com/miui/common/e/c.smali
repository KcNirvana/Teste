.class public Lcom/miui/common/e/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aBB:Landroid/view/animation/Animation;

.field private aBC:Landroid/view/animation/Animation$AnimationListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/common/e/c;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/common/e/c;->aBB:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/miui/common/e/c;->aBC:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic aLl(Lcom/miui/common/e/c;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/e/c;->aBB:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic aLm(Lcom/miui/common/e/c;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/e/c;->aBC:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic aLn(Lcom/miui/common/e/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/e/c;->mView:Landroid/view/View;

    return-object v0
.end method
