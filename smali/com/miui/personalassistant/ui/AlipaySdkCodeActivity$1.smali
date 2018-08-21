.class Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;
.super Landroid/os/Handler;
.source "AlipaySdkCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "AlipaySdkCodeActivity"

    const-string/jumbo v1, "getUserInfo SUCCESS dismiss loadingDialog"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v0, v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$000(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$100(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Landroid/app/Fragment;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$200(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/AlipayUtil;->generatePayCode(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
