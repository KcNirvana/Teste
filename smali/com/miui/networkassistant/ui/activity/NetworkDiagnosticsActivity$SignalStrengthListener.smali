.class Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;
.super Landroid/telephony/PhoneStateListener;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    invoke-static {p1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    sput v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSignalStrength:I

    return-void
.end method
