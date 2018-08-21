.class Lcom/ali/user/mobile/register/ui/g;
.super Ljava/lang/Object;
.source "AliuserRegisterSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "UC-ZC-150512-29"

    const-string/jumbo v1, "zcsuccess"

    const-string/jumbo v2, "RegisterSuccess"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v3, v3, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v4, v4, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/g;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mToken:Ljava/lang/String;

    const-string/jumbo v3, "afterreg"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
