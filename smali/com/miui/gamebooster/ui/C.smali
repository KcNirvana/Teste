.class final Lcom/miui/gamebooster/ui/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

.field final synthetic cP:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/C;->cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iput p2, p0, Lcom/miui/gamebooster/ui/C;->cP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/C;->cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qz:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    iget v2, p0, Lcom/miui/gamebooster/ui/C;->cP:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/C;->cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ac()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/C;->cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ae(Lcom/miui/gamebooster/ui/MainTopContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/C;->cO:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07093f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
