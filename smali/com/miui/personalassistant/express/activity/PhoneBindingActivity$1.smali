.class Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;
.super Landroid/os/CountDownTimer;
.source "PhoneBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

.field final synthetic val$countDownStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;JJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    iput-object p6, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->val$countDownStr:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$000(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$000(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1b0b01ae

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$000(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;->val$countDownStr:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
