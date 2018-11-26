.class final Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$2;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$2;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$2;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-set0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;I)I

    return-void
.end method
