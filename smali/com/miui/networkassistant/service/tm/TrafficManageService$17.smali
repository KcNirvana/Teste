.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$17;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-set2(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I

    return-void
.end method
