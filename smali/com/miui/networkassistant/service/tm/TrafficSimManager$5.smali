.class final Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneNumberLoaded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap5(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V

    return-void
.end method
