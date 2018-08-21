.class Lcom/miui/payment/ui/edit/EditLayoutContainer$2;
.super Ljava/lang/Object;
.source "EditLayoutContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/edit/EditLayoutContainer;->getCategoryCustomView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

.field final synthetic val$categoryAdapter:Lcom/miui/payment/ui/edit/CategoryAdapter;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;Lcom/miui/payment/ui/edit/CategoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    iput-object p2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;->val$categoryAdapter:Lcom/miui/payment/ui/edit/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$100(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/CategoryView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;->val$categoryAdapter:Lcom/miui/payment/ui/edit/CategoryAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/payment/ui/edit/CategoryAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/view/CategoryView;->setCategoryCode(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$200(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->dismissCustomDialog(Landroid/app/FragmentManager;)V

    return-void
.end method
