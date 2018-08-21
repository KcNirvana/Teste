.class final Lcom/flybird/FBDocumentAssistor$4;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$finalTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$4;->val$finalTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$4;->val$finalTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
