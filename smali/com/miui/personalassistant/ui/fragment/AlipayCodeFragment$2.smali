.class Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;
.super Ljava/lang/Object;
.source "AlipayCodeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->showAlipayLogoutDialog()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "AlipayCodeFragment"

    const-string/jumbo v1, "click logout"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/AlipayUtil;->loginOut(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method
