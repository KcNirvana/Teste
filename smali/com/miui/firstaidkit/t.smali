.class final Lcom/miui/firstaidkit/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vF:Lcom/miui/firstaidkit/s;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/s;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v0, v0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    iget-object v1, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v1, v1, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wz(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wJ(Lcom/miui/firstaidkit/FirstAidKitActivity;I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v0, v0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wx(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/common/card/CardViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v0, v0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wx(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/common/card/CardViewAdapter;

    move-result-object v0

    invoke-static {}, Lcom/miui/firstaidkit/k;->getInstance()Lcom/miui/firstaidkit/k;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v2, v2, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v1, v2}, Lcom/miui/firstaidkit/k;->wW(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/CardViewAdapter;->setModelList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/t;->vF:Lcom/miui/firstaidkit/s;

    iget-object v0, v0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wx(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/common/card/CardViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
