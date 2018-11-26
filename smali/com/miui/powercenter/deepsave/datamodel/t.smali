.class final Lcom/miui/powercenter/deepsave/datamodel/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNn:Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/t;->aNn:Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/t;->aNn:Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->aZD(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;Landroid/content/Context;)V

    const-string/jumbo v0, "expend_history"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bds(Ljava/lang/String;)V

    return-void
.end method
