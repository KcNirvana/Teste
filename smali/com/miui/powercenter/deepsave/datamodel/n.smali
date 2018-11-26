.class final Lcom/miui/powercenter/deepsave/datamodel/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNc:Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/n;->aNc:Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "power_on_off_plan"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bds(Ljava/lang/String;)V

    return-void
.end method
