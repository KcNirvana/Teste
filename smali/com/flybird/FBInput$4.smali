.class Lcom/flybird/FBInput$4;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;

.field final synthetic val$flag:Z

.field final synthetic val$isFrame:Z

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$4;->this$0:Lcom/flybird/FBInput;

    iput-object p2, p0, Lcom/flybird/FBInput$4;->val$parent:Landroid/view/View;

    iput-boolean p3, p0, Lcom/flybird/FBInput$4;->val$isFrame:Z

    iput-object p4, p0, Lcom/flybird/FBInput$4;->val$view:Landroid/view/View;

    iput-boolean p5, p0, Lcom/flybird/FBInput$4;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/flybird/FBInput$4;->val$parent:Landroid/view/View;

    iget-boolean v0, p0, Lcom/flybird/FBInput$4;->val$isFrame:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput$4;->this$0:Lcom/flybird/FBInput;

    iget-object v1, p0, Lcom/flybird/FBInput$4;->val$view:Landroid/view/View;

    invoke-static {v0, v4, v1}, Lcom/flybird/FBInput;->access$500(Lcom/flybird/FBInput;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$4;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$4;->this$0:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->access$100(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBInput$4;->this$0:Lcom/flybird/FBInput;

    invoke-static {v2}, Lcom/flybird/FBInput;->access$600(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v2

    iget-object v3, p0, Lcom/flybird/FBInput$4;->val$view:Landroid/view/View;

    iget-boolean v5, p0, Lcom/flybird/FBInput$4;->val$flag:Z

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    return-void
.end method
