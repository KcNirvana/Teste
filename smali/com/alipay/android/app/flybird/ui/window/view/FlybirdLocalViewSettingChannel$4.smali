.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;
.super Ljava/lang/Object;
.source "FlybirdLocalViewSettingChannel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

.field final synthetic val$channelText:Landroid/widget/TextView;

.field final synthetic val$dragLabelView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$dragLabelView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$channelText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$dragLabelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$channelText:Landroid/widget/TextView;

    const-string/jumbo v1, "flybird_setting_channel_auto_label"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$dragLabelView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;->val$channelText:Landroid/widget/TextView;

    const-string/jumbo v1, "flybird_setting_channel_label"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
