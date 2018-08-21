.class Lcom/flybird/FBDocument$15;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;II)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$15;->val$w:I

    iput p3, p0, Lcom/flybird/FBDocument$15;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/flybird/FBDocument$15;->val$w:I

    iget-object v1, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iget v1, p0, Lcom/flybird/FBDocument$15;->val$w:I

    iget v2, p0, Lcom/flybird/FBDocument$15;->val$h:I

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->layoutForMatchParent(II)V

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBDocument$15;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
