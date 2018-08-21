.class Lcom/ali/user/mobile/login/ui/u;
.super Ljava/lang/Object;
.source "LoginManualSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/u;->a:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/u;->a:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->clearInput()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/u;->a:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->hideHints()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/u;->a:Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->sendSms()V

    return-void
.end method
