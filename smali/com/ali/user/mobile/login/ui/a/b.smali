.class Lcom/ali/user/mobile/login/ui/a/b;
.super Ljava/lang/Object;
.source "LoginHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/a/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/a/b;->a:Lcom/ali/user/mobile/login/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/a/a$a;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/a/b;->a:Lcom/ali/user/mobile/login/ui/a/a;

    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/a/a;->a(Lcom/ali/user/mobile/login/ui/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
