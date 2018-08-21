.class Lcom/ali/user/mobile/base/a/d;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/i$b;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/i;

.field final synthetic b:Lcom/ali/user/mobile/base/a/c;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/c;Lcom/ali/user/mobile/ui/widget/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/d;->b:Lcom/ali/user/mobile/base/a/c;

    iput-object p2, p0, Lcom/ali/user/mobile/base/a/d;->a:Lcom/ali/user/mobile/ui/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/d;->b:Lcom/ali/user/mobile/base/a/c;

    iget-object v0, v0, Lcom/ali/user/mobile/base/a/c;->e:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/d;->a:Lcom/ali/user/mobile/ui/widget/i;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
