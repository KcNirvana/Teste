.class public Landroid/support/a/a/r$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# instance fields
.field a:Landroid/support/v4/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/d/a",
            "<",
            "Landroid/support/a/a/r$w;",
            "Landroid/support/a/a/r$h;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/d/a",
            "<",
            "Landroid/support/a/a/r$w;",
            "Landroid/support/a/a/r$h;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/d/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/a/a/r$w;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field private f:I

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/a/a/r$t;->f:I

    new-instance v0, Landroid/support/v4/d/a;

    invoke-direct {v0}, Landroid/support/v4/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/v4/d/a;

    invoke-direct {v0}, Landroid/support/v4/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/v4/d/a;

    invoke-direct {v0}, Landroid/support/v4/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    iput v1, p0, Landroid/support/a/a/r$t;->e:I

    iput v1, p0, Landroid/support/a/a/r$t;->h:I

    iput v1, p0, Landroid/support/a/a/r$t;->i:I

    iput-boolean v1, p0, Landroid/support/a/a/r$t;->j:Z

    iput-boolean v1, p0, Landroid/support/a/a/r$t;->k:Z

    iput-boolean v1, p0, Landroid/support/a/a/r$t;->l:Z

    iput-boolean v1, p0, Landroid/support/a/a/r$t;->m:Z

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/r$t;I)I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$t;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/a/a/r$t;->i:I

    return v0
.end method

.method private a(Landroid/support/v4/d/a;Landroid/support/a/a/r$w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/d/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/a/a/r$w;",
            ">;",
            "Landroid/support/a/a/r$w;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/d/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/d/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/support/v4/d/a;->d(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/a/a/r$t;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->m:Z

    return v0
.end method

.method static synthetic a(Landroid/support/a/a/r$t;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r$t;->j:Z

    return p1
.end method

.method static synthetic b(Landroid/support/a/a/r$t;I)I
    .locals 0

    iput p1, p0, Landroid/support/a/a/r$t;->i:I

    return p1
.end method

.method static synthetic b(Landroid/support/a/a/r$t;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->l:Z

    return v0
.end method

.method static synthetic b(Landroid/support/a/a/r$t;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r$t;->k:Z

    return p1
.end method

.method static synthetic c(Landroid/support/a/a/r$t;I)I
    .locals 0

    iput p1, p0, Landroid/support/a/a/r$t;->h:I

    return p1
.end method

.method static synthetic c(Landroid/support/a/a/r$t;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->j:Z

    return v0
.end method

.method static synthetic c(Landroid/support/a/a/r$t;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r$t;->l:Z

    return p1
.end method

.method static synthetic d(Landroid/support/a/a/r$t;I)I
    .locals 0

    iput p1, p0, Landroid/support/a/a/r$t;->f:I

    return p1
.end method

.method static synthetic d(Landroid/support/a/a/r$t;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->k:Z

    return v0
.end method

.method static synthetic d(Landroid/support/a/a/r$t;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r$t;->m:Z

    return p1
.end method


# virtual methods
.method a(Landroid/support/a/a/r$w;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-direct {p0, v0, p1}, Landroid/support/a/a/r$t;->a(Landroid/support/v4/d/a;Landroid/support/a/a/r$w;)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->k:Z

    return v0
.end method

.method b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->m:Z

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Landroid/support/a/a/r$t;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/a/a/r$t;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/a/a/r$t;->h:I

    iget v1, p0, Landroid/support/a/a/r$t;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/a/a/r$t;->e:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/a/a/r$t;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/r$t;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/a/a/r$t;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/a/a/r$t;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/a/a/r$t;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/a/a/r$t;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/a/a/r$t;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/a/a/r$t;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/a/a/r$t;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
