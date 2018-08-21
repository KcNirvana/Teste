.class Lcom/ali/user/mobile/register/ui/c;
.super Ljava/lang/Object;
.source "AliUserRegisterSixPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/c;->a:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/c;->a:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->goRegister()V

    return-void
.end method
