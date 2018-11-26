.class final Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-set0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;IZ)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap6(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    return-void
.end method
