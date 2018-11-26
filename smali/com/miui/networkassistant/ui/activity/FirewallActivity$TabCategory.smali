.class final enum Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

.field public static final enum MobileAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

.field public static final enum WlanAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    const-string/jumbo v1, "MobileAppControl"

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->MobileAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    const-string/jumbo v1, "WlanAppControl"

    invoke-direct {v0, v1, v3, v3}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->WlanAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    sget-object v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->MobileAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->WlanAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->$VALUES:[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->value:I

    return-void
.end method

.method public static parse(I)Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->MobileAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->WlanAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->$VALUES:[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    return-object v0
.end method
