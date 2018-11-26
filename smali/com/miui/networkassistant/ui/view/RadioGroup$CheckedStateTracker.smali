.class Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;-><init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get3(Lcom/miui/networkassistant/ui/view/RadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-set0(Lcom/miui/networkassistant/ui/view/RadioGroup;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get0(Lcom/miui/networkassistant/ui/view/RadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get0(Lcom/miui/networkassistant/ui/view/RadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-wrap1(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-set0(Lcom/miui/networkassistant/ui/view/RadioGroup;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v1, v0, v3}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-wrap0(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V

    return-void
.end method
