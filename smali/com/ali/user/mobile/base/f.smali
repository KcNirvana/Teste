.class Lcom/ali/user/mobile/base/f;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/d$b;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/d;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/ali/user/mobile/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseActivity;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/f;->c:Lcom/ali/user/mobile/base/BaseActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/base/f;->a:Lcom/ali/user/mobile/ui/widget/d;

    iput-object p3, p0, Lcom/ali/user/mobile/base/f;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/f;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->dismiss()V

    iget-object v1, p0, Lcom/ali/user/mobile/base/f;->c:Lcom/ali/user/mobile/base/BaseActivity;

    iget-object v0, p0, Lcom/ali/user/mobile/base/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/aq;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/base/BaseActivity;->performDialogAction(Lcom/ali/user/mobile/ui/widget/aq;)V

    return-void
.end method
