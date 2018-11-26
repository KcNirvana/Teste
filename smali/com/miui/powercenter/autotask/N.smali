.class final Lcom/miui/powercenter/autotask/N;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aLZ:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/N;->aLZ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/N;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string/jumbo v0, "OperationsHelper"

    const-string/jumbo v1, "apply airplane mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "airplane_mode"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/N;->aLZ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/m;->aXq(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
