.class final Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get3(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap2(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    :cond_0
    return-void
.end method
