.class final Lcom/miui/powercenter/deepsave/datamodel/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNl:Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/r;->aNl:Lcom/miui/powercenter/deepsave/datamodel/HideModeStateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.POWER_HIDE_MODE_APP_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdu()V

    return-void
.end method
