.class public abstract Landroid/support/a/a/r$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/a/a/r$w;

.field h:Landroid/support/a/a/r$w;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/a/a/r;

.field private l:I

.field private n:I

.field private o:Landroid/support/a/a/r$o;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/a/a/r$w;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/support/a/a/r$w;->b:I

    iput v3, p0, Landroid/support/a/a/r$w;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/a/a/r$w;->d:J

    iput v3, p0, Landroid/support/a/a/r$w;->e:I

    iput v3, p0, Landroid/support/a/a/r$w;->f:I

    iput-object v2, p0, Landroid/support/a/a/r$w;->g:Landroid/support/a/a/r$w;

    iput-object v2, p0, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    iput-object v2, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    iput-object v2, p0, Landroid/support/a/a/r$w;->j:Ljava/util/List;

    iput v4, p0, Landroid/support/a/a/r$w;->n:I

    iput-object v2, p0, Landroid/support/a/a/r$w;->o:Landroid/support/a/a/r$o;

    iput v4, p0, Landroid/support/a/a/r$w;->p:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    return-void
.end method

.method private A()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/e/w;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/a/a/r$w;Landroid/support/a/a/r$o;)Landroid/support/a/a/r$o;
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/r$w;->o:Landroid/support/a/a/r$o;

    return-object p1
.end method

.method static synthetic a(Landroid/support/a/a/r$w;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/a/a/r$w;->y()V

    return-void
.end method

.method static synthetic b(Landroid/support/a/a/r$w;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/a/a/r$w;->z()V

    return-void
.end method

.method static synthetic c(Landroid/support/a/a/r$w;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/a/a/r$w;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/a/a/r$w;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/a/a/r$w;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/support/a/a/r$w;)I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    return v0
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/r$w;->j:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/e/w;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r$w;->p:I

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/e/w;->c(Landroid/view/View;I)V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/a/a/r$w;->p:I

    invoke-static {v0, v1}, Landroid/support/v4/e/w;->c(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a/r$w;->p:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/a/a/r$w;->c:I

    iput v0, p0, Landroid/support/a/a/r$w;->f:I

    return-void
.end method

.method a(II)V
    .locals 2

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    return-void
.end method

.method a(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/a/a/r$w;->b(I)V

    invoke-virtual {p0, p2, p3}, Landroid/support/a/a/r$w;->a(IZ)V

    iput p1, p0, Landroid/support/a/a/r$w;->b:I

    return-void
.end method

.method a(IZ)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Landroid/support/a/a/r$w;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/a/a/r$w;->b:I

    iput v0, p0, Landroid/support/a/a/r$w;->c:I

    :cond_0
    iget v0, p0, Landroid/support/a/a/r$w;->f:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/a/a/r$w;->b:I

    iput v0, p0, Landroid/support/a/a/r$w;->f:I

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Landroid/support/a/a/r$w;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/a/a/r$w;->f:I

    :cond_2
    iget v0, p0, Landroid/support/a/a/r$w;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/a/a/r$w;->b:I

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/a/a/r$j;->c:Z

    :cond_3
    return-void
.end method

.method a(Landroid/support/a/a/r$o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/r$w;->o:Landroid/support/a/a/r$o;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/a/a/r$w;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/a/a/r$w;->x()V

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/a/a/r$w;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/a/a/r$w;->n:I

    iget v0, p0, Landroid/support/a/a/r$w;->n:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a/r$w;->n:I

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/support/a/a/r$w;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/a/a/r$w;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/a/a/r$w;->n:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    goto :goto_1
.end method

.method a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 2

    iget v0, p0, Landroid/support/a/a/r$w;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/a/a/r$w;->b:I

    iput v0, p0, Landroid/support/a/a/r$w;->c:I

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    return-void
.end method

.method c()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Landroid/support/a/a/r$w;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/a/a/r$w;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/a/a/r$w;->f:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$w;->k:Landroid/support/a/a/r;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$w;->k:Landroid/support/a/a/r;

    invoke-static {v0, p0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r;Landroid/support/a/a/r$w;)I

    move-result v0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/a/a/r$w;->d:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->e:I

    return v0
.end method

.method h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$w;->o:Landroid/support/a/a/r$o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$w;->o:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$o;->d(Landroid/support/a/a/r$w;)V

    return-void
.end method

.method j()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    return-void
.end method

.method l()V
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    return-void
.end method

.method m()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r$w;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/a/a/r$w;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/a/a/r$w;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/a/a/r$w;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/a/a/r$w;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/a/a/r$w;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/a/a/r$w;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->p()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->r()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->w()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/a/a/r$w;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Landroid/support/a/a/r$w;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/support/a/a/r$w;->m:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r$w;->j:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/support/a/a/r$w;->m:Ljava/util/List;

    goto :goto_0
.end method

.method v()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput v3, p0, Landroid/support/a/a/r$w;->l:I

    iput v2, p0, Landroid/support/a/a/r$w;->b:I

    iput v2, p0, Landroid/support/a/a/r$w;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/a/a/r$w;->d:J

    iput v2, p0, Landroid/support/a/a/r$w;->f:I

    iput v3, p0, Landroid/support/a/a/r$w;->n:I

    iput-object v4, p0, Landroid/support/a/a/r$w;->g:Landroid/support/a/a/r$w;

    iput-object v4, p0, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    invoke-virtual {p0}, Landroid/support/a/a/r$w;->t()V

    iput v3, p0, Landroid/support/a/a/r$w;->p:I

    return-void
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r$w;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/e/w;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
