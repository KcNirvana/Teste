.class final Lcom/miui/powercenter/legacypowerrank/l;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aGi:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/l;->aGi:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/l;->aGi:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/l;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRe(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;Z)Z

    return-void
.end method
