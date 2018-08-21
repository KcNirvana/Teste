.class Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;
.super Ljava/lang/Object;
.source "AlipayCodePayedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;

.field final synthetic val$payResult:Lcom/miui/personalassistant/model/AlipayPayResult;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;Lcom/miui/personalassistant/model/AlipayPayResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;->val$payResult:Lcom/miui/personalassistant/model/AlipayPayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;->val$payResult:Lcom/miui/personalassistant/model/AlipayPayResult;

    iget-object v1, v1, Lcom/miui/personalassistant/model/AlipayPayResult;->extGuide:Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;

    iget-object v1, v1, Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;->guideAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;Ljava/lang/String;)V

    return-void
.end method
