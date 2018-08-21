.class Lcom/flybird/FBDocument$8;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$funcKey:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$8;->this$0:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$8;->val$funcKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBDocument$8;->this$0:Lcom/flybird/FBDocument;

    iget v1, p0, Lcom/flybird/FBDocument$8;->val$funcKey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    return-void
.end method
