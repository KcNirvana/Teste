.class Lcom/xiaomi/push/ck;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/ch;

.field a:Lcom/xiaomi/push/co;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/co;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ch;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/push/ck;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/ck;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/co;

    iput-object p4, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ch;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/push/ck;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/ck;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ch;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/cl;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ch;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/co;

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ch;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/push/co;->a(Ljava/lang/Integer;Lcom/xiaomi/push/ch;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ck;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/co;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ch;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/push/co;->a(Ljava/lang/Integer;Lcom/xiaomi/push/ch;)V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ck;->a(Ljava/lang/Integer;)V

    return-void
.end method
