.class final Lcom/miui/firstaidkit/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/firstaidkit/f;


# instance fields
.field final synthetic vE:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wh(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "finish"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uo:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->up:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->un:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uq:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    iget-object v1, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wA(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/firstaidkit/d;->vS()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wF(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I

    iget-object v0, p0, Lcom/miui/firstaidkit/s;->vE:Lcom/miui/firstaidkit/FirstAidKitActivity;

    new-instance v1, Lcom/miui/firstaidkit/t;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/t;-><init>(Lcom/miui/firstaidkit/s;)V

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
