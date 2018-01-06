.class Lcom/miui/weather2/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/t;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/t;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/v;->a:Lcom/miui/weather2/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/b/v;->a:Lcom/miui/weather2/b/t;

    invoke-static {v2}, Lcom/miui/weather2/b/t;->c(Lcom/miui/weather2/b/t;)[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/miui/weather2/b/t;->e()[I

    move-result-object v4

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x10

    aput v3, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/b/v;->a:Lcom/miui/weather2/b/t;

    invoke-virtual {v2}, Lcom/miui/weather2/b/t;->invalidateSelf()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
