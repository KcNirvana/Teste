.class Lcom/ali/user/mobile/ui/widget/ai;
.super Ljava/lang/Object;
.source "AUPhoneInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/register/region/b;->a()Lcom/ali/user/mobile/register/region/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/ui/widget/aj;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/ui/widget/aj;-><init>(Lcom/ali/user/mobile/ui/widget/ai;)V

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/region/b;->a(Landroid/content/Context;Lcom/ali/user/mobile/register/region/b$a;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    throw v0
.end method
