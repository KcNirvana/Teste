.class final Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/cards/o;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiSpamChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onAppManagerChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap1(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onGarbageChange(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap2(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onNetworkAssistChange(ZZJZ)V
    .locals 9

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap3(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onPowerCenterChange(ZIZILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap4(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSecurityScanChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$1:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->-wrap5(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method
