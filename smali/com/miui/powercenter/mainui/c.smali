.class final Lcom/miui/powercenter/mainui/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aOj:Lcom/miui/powercenter/mainui/MainActivityView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/MainActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/c;->aOj:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/mainui/c;->aOj:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcH(Lcom/miui/powercenter/mainui/MainActivityView;)Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPD(FZ)V

    return-void
.end method
