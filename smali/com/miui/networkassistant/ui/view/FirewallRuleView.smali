.class public Lcom/miui/networkassistant/ui/view/FirewallRuleView;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sRuleImageMap:Ljava/util/HashMap;


# instance fields
.field private mRule:Lcom/miui/networkassistant/model/FirewallRule;

.field private mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->sRuleImageMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->sRuleImageMap:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    const v2, 0x7f0200fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->sRuleImageMap:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    const v2, 0x7f0200fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, p0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0200fe

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public getRule()Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v1, p0, v2}, Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;->onRuleChanging(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setRule(Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, p0, v1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;->onRuleChanged(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0
.end method

.method public setRule(Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->sRuleImageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRuleChangedListener(Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    return-void
.end method
