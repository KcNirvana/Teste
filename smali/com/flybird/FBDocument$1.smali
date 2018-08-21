.class Lcom/flybird/FBDocument$1;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$1;->this$0:Lcom/flybird/FBDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocument$1;->this$0:Lcom/flybird/FBDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flybird/FBDocument;->access$002(Lcom/flybird/FBDocument;Z)Z

    return-void
.end method
