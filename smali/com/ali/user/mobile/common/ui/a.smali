.class Lcom/ali/user/mobile/common/ui/a;
.super Ljava/lang/Object;
.source "AbsSupplyLoginPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/a;->a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/a;->a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method
