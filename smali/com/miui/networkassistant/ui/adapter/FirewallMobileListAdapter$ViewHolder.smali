.class Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field appName:Landroid/widget/TextView;

.field arrow:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field simButton:[Lcom/miui/networkassistant/ui/view/FirewallRuleView;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->simButton:[Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;-><init>()V

    return-void
.end method
