.class final Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->expander_open_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onItemSelected(Lmiui/widget/DropDownSingleChoiceMenu;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lmiui/widget/DropDownSingleChoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->expander_close_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
