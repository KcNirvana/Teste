.class final Lcom/flybird/FBDocumentAssistor$3;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completed:Landroid/os/ConditionVariable;

.field final synthetic val$doc:Lcom/flybird/FBDocument;

.field final synthetic val$timer:Lcom/flybird/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$3;->val$doc:Lcom/flybird/FBDocument;

    iput-object p2, p0, Lcom/flybird/FBDocumentAssistor$3;->val$timer:Lcom/flybird/CountDownTimer;

    iput-object p3, p0, Lcom/flybird/FBDocumentAssistor$3;->val$completed:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$3;->val$doc:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$3;->val$timer:Lcom/flybird/CountDownTimer;

    invoke-static {v0, v1}, Lcom/flybird/FBDocumentAssistor;->destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$3;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$3;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
