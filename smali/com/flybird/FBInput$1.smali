.class Lcom/flybird/FBInput$1;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v1, v1, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v1, v1, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-wide v2, v1, Lcom/flybird/FBInput;->mNode:J

    const/16 v1, 0xa

    invoke-static {v2, v3, v1}, Lcom/flybird/FBView;->nativePlatformOnKeyDown(JI)Z

    iget-object v1, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v1, v1, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v0, p0, Lcom/flybird/FBInput$1;->this$0:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    const/4 v0, 0x1

    goto :goto_0
.end method
