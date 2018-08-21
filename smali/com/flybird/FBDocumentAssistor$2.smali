.class final Lcom/flybird/FBDocumentAssistor$2;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:I

.field final synthetic val$completed:Landroid/os/ConditionVariable;

.field final synthetic val$doc:Lcom/flybird/FBDocument;

.field final synthetic val$interval:I

.field final synthetic val$repeats:Z

.field final synthetic val$ret:[Lcom/flybird/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$2;->val$doc:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocumentAssistor$2;->val$interval:I

    iput-boolean p3, p0, Lcom/flybird/FBDocumentAssistor$2;->val$repeats:Z

    iput p4, p0, Lcom/flybird/FBDocumentAssistor$2;->val$callback:I

    iput-object p5, p0, Lcom/flybird/FBDocumentAssistor$2;->val$ret:[Lcom/flybird/CountDownTimer;

    iput-object p6, p0, Lcom/flybird/FBDocumentAssistor$2;->val$completed:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$2;->val$doc:Lcom/flybird/FBDocument;

    iget v1, p0, Lcom/flybird/FBDocumentAssistor$2;->val$interval:I

    iget-boolean v2, p0, Lcom/flybird/FBDocumentAssistor$2;->val$repeats:Z

    iget v3, p0, Lcom/flybird/FBDocumentAssistor$2;->val$callback:I

    iget-object v4, p0, Lcom/flybird/FBDocumentAssistor$2;->val$ret:[Lcom/flybird/CountDownTimer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/flybird/FBDocumentAssistor;->access$000(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$2;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$2;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
