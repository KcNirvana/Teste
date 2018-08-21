.class Lcom/flybird/FBDocument$7;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$core:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$7;->this$0:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$7;->val$core:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocument$7;->this$0:Lcom/flybird/FBDocument;

    iget v1, p0, Lcom/flybird/FBDocument$7;->val$core:I

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->nativeCoreLayout(I)V

    return-void
.end method
