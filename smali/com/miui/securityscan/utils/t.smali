.class final Lcom/miui/securityscan/utils/t;
.super Lcom/miui/common/e/a;
.source ""


# instance fields
.field final synthetic Jm:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/utils/t;->Jm:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/common/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/utils/t;->Jm:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/utils/t;->Jm:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/common/customview/OverScrollLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/utils/t;->Jm:Landroid/view/View;

    check-cast v0, Lcom/miui/common/customview/OverScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/OverScrollLayout;->aFQ(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/utils/t;->Jm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
