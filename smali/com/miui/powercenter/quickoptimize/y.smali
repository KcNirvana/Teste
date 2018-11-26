.class final Lcom/miui/powercenter/quickoptimize/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aEJ:Lcom/miui/powercenter/quickoptimize/e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/y;->aEJ:Lcom/miui/powercenter/quickoptimize/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/y;->aEJ:Lcom/miui/powercenter/quickoptimize/e;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/e;->aOC(Lcom/miui/powercenter/quickoptimize/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/powercenter/quickoptimize/g;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/g;

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method
