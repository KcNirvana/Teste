.class Lcom/miui/gamebooster/service/c;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic mc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/c;->mc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/c;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "incomingNumber"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/c;->mc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oN(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/c;->mc:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->oN(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
