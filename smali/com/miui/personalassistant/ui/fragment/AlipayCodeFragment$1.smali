.class Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;
.super Ljava/lang/Object;
.source "AlipayCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->showSettingPopupWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0b0243
        :pswitch_0
    .end packed-switch
.end method
