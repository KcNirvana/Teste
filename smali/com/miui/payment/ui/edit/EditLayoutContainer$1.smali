.class Lcom/miui/payment/ui/edit/EditLayoutContainer$1;
.super Ljava/lang/Object;
.source "EditLayoutContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/edit/EditLayoutContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v2}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$000(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/MethodView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodCode(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v2}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$000(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/MethodView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/payment/ui/view/MethodView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v2}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$000(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/MethodView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/payment/ui/view/MethodView;->setPaymentMethod(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
