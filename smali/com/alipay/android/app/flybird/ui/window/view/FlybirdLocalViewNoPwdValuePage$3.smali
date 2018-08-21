.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdValuePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->setmDefaultValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
