.class Lcom/ali/user/mobile/common/ui/e;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/e;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/e;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_resend:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/e;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$300(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;Ljava/util/ArrayList;)V

    return-void
.end method
