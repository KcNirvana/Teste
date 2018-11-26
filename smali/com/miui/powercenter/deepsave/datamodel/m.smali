.class final Lcom/miui/powercenter/deepsave/datamodel/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNb:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/m;->aNb:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "expend_top"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bds(Ljava/lang/String;)V

    return-void
.end method
