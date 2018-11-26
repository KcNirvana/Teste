.class final Lcom/miui/gamebooster/ui/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic cQ:Lcom/miui/gamebooster/ui/MainTopContentFrame;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/D;->cQ:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/D;->cQ:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/D;->cQ:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->af(Lcom/miui/gamebooster/ui/MainTopContentFrame;Z)Z

    :cond_0
    return-void
.end method
