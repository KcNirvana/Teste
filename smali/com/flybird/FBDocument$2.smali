.class Lcom/flybird/FBDocument$2;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$100(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$100(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBInput;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$100(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBInput;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$100(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBInput;->showKeyboard()V

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$200(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/FBFocusable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$200(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/FBFocusable;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBFocusable;->requestFocus()V

    :cond_0
    return-void
.end method
