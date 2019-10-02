.class public Lcom/facebook/ads/internal/w/b/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "w"


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->c:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->d:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->e:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->f:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    iput-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->i:J

    iput-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->j:J

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->k:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->l:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->m:I

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->n:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->q:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lcom/facebook/ads/internal/w/b/w;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/facebook/ads/internal/w/b/w;->b:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->q:F

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/w/b/w;->q:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/internal/w/b/w;->q:F

    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v0, v0, [I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget p2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    iget p3, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    iget v0, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    iget p2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p3

    iget v0, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    iget p2, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iget p3, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iget v0, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iget p2, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p1

    iget p3, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iget p1, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/facebook/ads/internal/w/b/w;->j:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    add-float/2addr p2, v5

    float-to-int p2, p2

    aget v4, v0, v1

    add-int/2addr p2, v4

    aget v1, v3, v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    aget p2, v0, v2

    add-int/2addr p1, p2

    aget p2, v3, v2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    sget p2, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/facebook/ads/internal/w/b/w;->n:I

    iput-object p3, p0, Lcom/facebook/ads/internal/w/b/w;->s:Landroid/view/View;

    goto :goto_0

    :pswitch_2
    aget v4, v3, v1

    int-to-float v4, v4

    sget v6, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/facebook/ads/internal/w/b/w;->c:I

    aget v4, v3, v2

    int-to-float v4, v4

    sget v6, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/facebook/ads/internal/w/b/w;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/facebook/ads/internal/w/b/w;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget v4, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->f:I

    iput v2, p0, Lcom/facebook/ads/internal/w/b/w;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/facebook/ads/internal/w/b/w;->i:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    add-float/2addr p2, v5

    float-to-int p2, p2

    aget v4, v0, v1

    add-int/2addr p2, v4

    aget v1, v3, v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr p2, v5

    float-to-int p2, p2

    aget v0, v0, v2

    add-int/2addr p2, v0

    aget v0, v3, v2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->l:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    iput p2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p1

    iput p1, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iput-object p3, p0, Lcom/facebook/ads/internal/w/b/w;->r:Landroid/view/View;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->d(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/w/b/w;->c()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()J
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/w/b/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/w/b/w;->b:Z

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/internal/w/b/w;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/w/b/w;->p:F

    iget v1, p0, Lcom/facebook/ads/internal/w/b/w;->q:F

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->j:J

    iget-wide v3, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/internal/w/b/w;->j:J

    iget-wide v3, p0, Lcom/facebook/ads/internal/w/b/w;->g:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "adPositionX"

    iget v5, p0, Lcom/facebook/ads/internal/w/b/w;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adPositionY"

    iget v5, p0, Lcom/facebook/ads/internal/w/b/w;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "width"

    iget v5, p0, Lcom/facebook/ads/internal/w/b/w;->e:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "height"

    iget v5, p0, Lcom/facebook/ads/internal/w/b/w;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "clickDelayTime"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/w/b/w;->i:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/w/b/w;->j:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startX"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startY"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickX"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickY"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endX"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endY"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force"

    iget v2, p0, Lcom/facebook/ads/internal/w/b/w;->o:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "radiusX"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "radiusY"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clickedViewTag"

    iget-object v1, p0, Lcom/facebook/ads/internal/w/b/w;->r:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/internal/w/b/w;->s:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/w/b/w;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/ads/internal/w/b/w;->s:Landroid/view/View;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->b:Lcom/facebook/ads/internal/w/b/j;

    goto :goto_2

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->c:Lcom/facebook/ads/internal/w/b/j;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/w/b/w;->r:Landroid/view/View;

    sget v2, Lcom/facebook/ads/internal/w/b/j;->p:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->a:Lcom/facebook/ads/internal/w/b/j;

    goto :goto_2

    :cond_5
    instance-of v2, v1, Lcom/facebook/ads/internal/w/b/j;

    if-nez v2, :cond_6

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->d:Lcom/facebook/ads/internal/w/b/j;

    goto :goto_2

    :cond_6
    check-cast v1, Lcom/facebook/ads/internal/w/b/j;

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->e:Lcom/facebook/ads/internal/w/b/j;

    :goto_2
    invoke-virtual {v1}, Lcom/facebook/ads/internal/w/b/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method
