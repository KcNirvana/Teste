.class Lcom/ali/user/mobile/ui/widget/ae;
.super Ljava/lang/Object;
.source "AUNetworkPopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/ad;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ae;->a:Lcom/ali/user/mobile/ui/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ae;->a:Lcom/ali/user/mobile/ui/widget/ad;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/ad;->cancel()V

    return-void
.end method
