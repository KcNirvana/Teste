.class final Lcom/miui/powercenter/legacypowerrank/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aGm:Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/p;->aGm:Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.powercenter.BATTERY_HISTORY_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
