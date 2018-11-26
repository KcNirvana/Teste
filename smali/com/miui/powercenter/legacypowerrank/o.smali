.class final Lcom/miui/powercenter/legacypowerrank/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aGl:Lcom/miui/powercenter/legacypowerrank/n;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/o;->aGl:Lcom/miui/powercenter/legacypowerrank/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/o;->aGl:Lcom/miui/powercenter/legacypowerrank/n;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRd(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/o;->aGl:Lcom/miui/powercenter/legacypowerrank/n;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQY(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/o;->aGl:Lcom/miui/powercenter/legacypowerrank/n;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQX(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/o;->aGl:Lcom/miui/powercenter/legacypowerrank/n;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    const v1, 0x7f0704fc

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    return-void
.end method
