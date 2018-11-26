.class final Lcom/miui/powercenter/mainui/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic aOi:Lcom/miui/powercenter/mainui/MainActivityView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/MainActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/b;->aOi:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/b;->aOi:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-static {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcI(Lcom/miui/powercenter/mainui/MainActivityView;)Lcom/miui/common/d/f;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
