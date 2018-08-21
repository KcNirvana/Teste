.class Lcom/ali/user/mobile/login/view/b;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/d$b;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/d;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/ali/user/mobile/login/view/LoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/LoginView;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/b;->c:Lcom/ali/user/mobile/login/view/LoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/b;->a:Lcom/ali/user/mobile/ui/widget/d;

    iput-object p3, p0, Lcom/ali/user/mobile/login/view/b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/b;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->dismiss()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/b;->c:Lcom/ali/user/mobile/login/view/LoginView;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/view/LoginView;->performDialogAction(Ljava/lang/String;)V

    return-void
.end method
