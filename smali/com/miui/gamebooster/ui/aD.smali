.class final Lcom/miui/gamebooster/ui/aD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eh:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aD;->eh:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p1, Lcom/miui/gamebooster/customview/BottomTabItem;

    invoke-virtual {p1, v2}, Lcom/miui/gamebooster/customview/BottomTabItem;->jE(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aD;->eh:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dV(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aD;->eh:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dW(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;IZ)V

    return-void
.end method
