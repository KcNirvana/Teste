.class Lcom/amap/api/col/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/z;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/col/bw;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/z;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/z$b;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/z;Lcom/amap/api/col/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/z$b;-><init>(Lcom/amap/api/col/z;)V

    return-void
.end method

.method private a(FIIZI)V
    .locals 4

    const/16 v0, 0xa0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/amap/api/col/bw;

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-direct {v0, v1, p0, p5}, Lcom/amap/api/col/bw;-><init>(Lcom/amap/api/col/hw;Landroid/view/animation/Animation$AnimationListener;I)V

    iput-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iput-boolean p4, v0, Lcom/amap/api/col/bw;->b:Z

    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iput p1, v0, Lcom/amap/api/col/bw;->a:F

    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    const/4 v1, 0x0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/col/bw;->a(FZFF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-gt p5, v0, :cond_2

    move p5, v0

    :cond_2
    invoke-virtual {v1, p5}, Lcom/amap/api/col/bw;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "doZoomOut"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(FIIZI)V
    .locals 4

    const/16 v0, 0xa0

    const/4 v2, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-nez v1, :cond_1

    new-instance v0, Lcom/amap/api/col/bw;

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-direct {v0, v1, p0, p5}, Lcom/amap/api/col/bw;-><init>(Lcom/amap/api/col/hw;Landroid/view/animation/Animation$AnimationListener;I)V

    iput-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iput p1, v0, Lcom/amap/api/col/bw;->a:F

    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iput-boolean p4, v0, Lcom/amap/api/col/bw;->b:Z

    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iget-boolean v0, v0, Lcom/amap/api/col/bw;->b:Z

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->b()Lcom/amap/api/col/au;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/amap/api/col/au;->a(II)Lcom/amap/api/col/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v2}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v3}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v3, v1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ah;->a(Landroid/graphics/Point;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    const/4 v1, 0x1

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/col/bw;->a(FZFF)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-gt p5, v0, :cond_2

    move p5, v0

    :cond_2
    invoke-virtual {v1, p5}, Lcom/amap/api/col/bw;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "doZoomIn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(IIFFI)V
    .locals 4

    const/16 v0, 0xa0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-nez v1, :cond_0

    new-instance v0, Lcom/amap/api/col/bw;

    iget-object v1, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-direct {v0, v1, p0, p5}, Lcom/amap/api/col/bw;-><init>(Lcom/amap/api/col/hw;Landroid/view/animation/Animation$AnimationListener;I)V

    iput-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    iput p3, v0, Lcom/amap/api/col/bw;->a:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, p3, v0, v2, v3}, Lcom/amap/api/col/bw;->a(FZFF)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/z$b;->c:Lcom/amap/api/col/bw;

    if-gt p5, v0, :cond_1

    move p5, v0

    :cond_1
    invoke-virtual {v1, p5}, Lcom/amap/api/col/bw;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "zoomTo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(IIFZZI)V
    .locals 6

    if-nez p4, :cond_0

    move-object v0, p0

    move v1, p3

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/z$b;->a(FIIZI)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p3

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/z$b;->b(FIIZI)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/z$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0}, Lcom/amap/api/col/am$a;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/z$b;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/z$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hw;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
