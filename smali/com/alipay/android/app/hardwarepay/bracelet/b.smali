.class Lcom/alipay/android/app/hardwarepay/bracelet/b;
.super Ljava/lang/Object;
.source "BraceletPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/f;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Landroid/app/Activity;

    const-string/jumbo v3, "alipay_cancel"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/b;)V

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Landroid/app/Activity;

    const-string/jumbo v4, "mini_auth_service_down_tips"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/d;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
