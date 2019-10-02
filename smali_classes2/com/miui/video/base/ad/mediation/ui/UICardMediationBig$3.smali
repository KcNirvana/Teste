.class Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;
.super Ljava/lang/Object;
.source "UICardMediationBig.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->changeLayoutParams(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;->this$0:Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;->this$0:Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->access$200(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;->this$0:Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->access$200(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
