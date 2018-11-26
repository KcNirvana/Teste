.class final Lcom/miui/powercenter/autotask/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aLv:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXR(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdg()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aLu:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/X;->aMr:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aWG()V

    goto :goto_0
.end method
