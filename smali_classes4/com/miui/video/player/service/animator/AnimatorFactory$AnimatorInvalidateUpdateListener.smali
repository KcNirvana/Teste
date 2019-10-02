.class public Lcom/miui/video/player/service/animator/AnimatorFactory$AnimatorInvalidateUpdateListener;
.super Ljava/lang/Object;
.source "AnimatorFactory.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/animator/AnimatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorInvalidateUpdateListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/animator/AnimatorFactory$AnimatorInvalidateUpdateListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/animator/AnimatorFactory$AnimatorInvalidateUpdateListener;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/animator/AnimatorFactory$AnimatorInvalidateUpdateListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/miui/video/player/service/animator/AnimatorFactory$AnimatorInvalidateUpdateListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
