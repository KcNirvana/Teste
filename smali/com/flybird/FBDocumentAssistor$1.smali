.class final Lcom/flybird/FBDocumentAssistor$1;
.super Lcom/flybird/CountDownTimer;
.source "FBDocumentAssistor.java"


# instance fields
.field final synthetic val$callback:I

.field final synthetic val$doc:Lcom/flybird/FBDocument;

.field final synthetic val$repeats:Z


# direct methods
.method constructor <init>(JJLcom/flybird/FBDocument;ZI)V
    .locals 1

    iput-object p5, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iput-boolean p6, p0, Lcom/flybird/FBDocumentAssistor$1;->val$repeats:Z

    iput p7, p0, Lcom/flybird/FBDocumentAssistor$1;->val$callback:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flybird/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDocumentAssistor$1;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    iget v1, p0, Lcom/flybird/FBDocumentAssistor$1;->val$callback:I

    invoke-static {v0, v1}, Lcom/flybird/FBDocumentAssistor;->nativeOnTimer(II)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flybird/FBDocumentAssistor$1;->cancel()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flybird/FBDocumentAssistor$1;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$repeats:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    iget v1, p0, Lcom/flybird/FBDocumentAssistor$1;->val$callback:I

    invoke-static {v0, v1}, Lcom/flybird/FBDocumentAssistor;->nativeOnTimer(II)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->val$doc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDocumentAssistor$1;->cancel()V

    goto :goto_0
.end method
