.class Lcom/ali/user/mobile/ui/widget/h;
.super Ljava/lang/Object;
.source "APNormalPopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/f;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/h;->a:Lcom/ali/user/mobile/ui/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/ui/widget/l;->a()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/h;->a:Lcom/ali/user/mobile/ui/widget/f;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/f;->dismiss()V

    return-void
.end method
