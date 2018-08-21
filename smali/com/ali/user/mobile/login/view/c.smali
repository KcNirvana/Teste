.class Lcom/ali/user/mobile/login/view/c;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/LoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/LoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/c;->a:Lcom/ali/user/mobile/login/view/LoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "UC-GY-161225-09"

    const-string/jumbo v1, "loginmoreback"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/c;->a:Lcom/ali/user/mobile/login/view/LoginView;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
