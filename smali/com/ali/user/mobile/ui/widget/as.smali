.class final Lcom/ali/user/mobile/ui/widget/as;
.super Ljava/lang/Object;
.source "WidgetUtil.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/as;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/as;->b:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/as;->a:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/as;->b:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/as;->b:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
