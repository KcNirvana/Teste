.class final Lcom/miui/powercenter/legacypowerrank/n;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source ""


# instance fields
.field final synthetic aGk:Lcom/miui/powercenter/legacypowerrank/m;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/n;->aGk:Lcom/miui/powercenter/legacypowerrank/m;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQZ(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/o;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/legacypowerrank/o;-><init>(Lcom/miui/powercenter/legacypowerrank/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
