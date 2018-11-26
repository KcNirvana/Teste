.class final Lcom/miui/firstaidkit/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic vQ:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/B;->vQ:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/B;->vQ:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wB(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/B;->vQ:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wH(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
