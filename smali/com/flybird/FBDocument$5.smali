.class Lcom/flybird/FBDocument$5;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$5;->this$0:Lcom/flybird/FBDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$5;->this$0:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$300(Lcom/flybird/FBDocument;)V

    return-void
.end method
