.class Lcom/ali/user/mobile/common/ui/h;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/h;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/h;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onWait()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/h;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->callUpKeyboard()V

    return-void
.end method
