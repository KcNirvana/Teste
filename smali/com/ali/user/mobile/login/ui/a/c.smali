.class Lcom/ali/user/mobile/login/ui/a/c;
.super Ljava/lang/Object;
.source "LoginHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/a/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/a/c;->a:Lcom/ali/user/mobile/login/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/a/a$a;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/a/c;->a:Lcom/ali/user/mobile/login/ui/a/a;

    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/a/a;->b(Lcom/ali/user/mobile/login/ui/a/a;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
