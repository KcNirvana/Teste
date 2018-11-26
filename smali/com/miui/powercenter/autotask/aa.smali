.class final Lcom/miui/powercenter/autotask/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/OperationEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/OperationEditActivity;->aLv:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->aYG(Lcom/miui/powercenter/autotask/OperationEditActivity;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/OperationEditActivity;->aLu:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/aa;->aMt:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->aWG()V

    goto :goto_0
.end method
