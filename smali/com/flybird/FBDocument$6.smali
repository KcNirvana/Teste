.class Lcom/flybird/FBDocument$6;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$completed:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$6;->this$0:Lcom/flybird/FBDocument;

    iput-object p2, p0, Lcom/flybird/FBDocument$6;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/flybird/FBDocument$6;->val$completed:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBDocument$6;->this$0:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDocument$6;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->innerLayout(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/flybird/FBDocument$6;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flybird/FBDocument$6;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
