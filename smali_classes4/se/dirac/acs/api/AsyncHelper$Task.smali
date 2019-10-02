.class Lse/dirac/acs/api/AsyncHelper$Task;
.super Landroid/os/AsyncTask;
.source "AsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final onDone:Lse/dirac/acs/api/AsyncHelper$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper$Function<",
            "TResult;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lse/dirac/acs/api/AsyncHelper;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/AsyncHelper$Function<",
            "TResult;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lse/dirac/acs/api/AsyncHelper$Task;->onDone:Lse/dirac/acs/api/AsyncHelper$Function;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation

    iget-object p1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {p1}, Lse/dirac/acs/api/AsyncHelper;->access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {p1}, Lse/dirac/acs/api/AsyncHelper;->access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object p1

    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$100(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->onDone:Lse/dirac/acs/api/AsyncHelper$Function;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
