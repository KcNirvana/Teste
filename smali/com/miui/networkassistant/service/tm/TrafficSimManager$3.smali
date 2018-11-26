.class final Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field final synthetic val$isBackground:Z

.field final synthetic val$isCareUpdateResult:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-boolean p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isBackground:Z

    iput-boolean p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isCareUpdateResult:Z

    iput p4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportSmsCorrection(Ljava/lang/String;)Z

    move-result v2

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isBackground:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap2(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    :goto_0
    iget-boolean v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isCareUpdateResult:Z

    if-eqz v3, :cond_2

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap12(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap4(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-boolean v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isBackground:Z

    iget v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$type:I

    invoke-static {v0, v4, v2, v3, v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap15(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZJI)V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v2, "LRL startTrafficCorrection isBackground %b, isCareUpdateResult %b, type%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isBackground:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$isCareUpdateResult:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;->val$type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
