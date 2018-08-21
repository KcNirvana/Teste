.class Lcom/flybird/FBInput$5;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$5;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBInput$5;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput$5;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$5;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->access$100(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
