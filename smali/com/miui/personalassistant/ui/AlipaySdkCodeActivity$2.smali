.class Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;
.super Landroid/os/Handler;
.source "AlipaySdkCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$400(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$600(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3, v4}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$000(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$200(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "key_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "AlipaySdkCodeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WHAT_GENERATE_PAY_CODE generateCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {v4}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;-><init>()V

    invoke-static {v3, v4, v6}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$100(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "AlipaySdkCodeActivity"

    const-string/jumbo v4, "WHAT_UPDATE_QR_CODE"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/AlipayUtil;->generatePayCode(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1003

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "AlipaySdkCodeActivity"

    const-string/jumbo v4, "WHAT_QUERY_PAY_RESULT"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    const-string/jumbo v5, "key_alipay_paycode"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v5}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/util/AlipayUtil;->queryPayResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1002

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "key_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/personalassistant/model/AlipayPayResult;

    const-string/jumbo v3, "AlipaySdkCodeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WHAT_QUERY_PAY_RESUTL payResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "key_pay_result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;

    invoke-direct {v4}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;-><init>()V

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$100(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Landroid/app/Fragment;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    const-string/jumbo v4, "key_alipay_paycode"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$500(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->access$500(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_3
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_1
    .end sparse-switch
.end method
