.class public Lcom/miui/networkassistant/model/TempFirewallRule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public rule:Lcom/miui/networkassistant/model/FirewallRule;

.field public srcPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object p2, p0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    return-void
.end method
