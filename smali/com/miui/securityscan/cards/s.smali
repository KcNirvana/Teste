.class final Lcom/miui/securityscan/cards/s;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Cr:Lcom/miui/securityscan/cards/m;

.field final synthetic Cs:Lcom/miui/securityscan/cards/l;

.field final synthetic Ct:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/cards/m;Landroid/content/Context;Lcom/miui/securityscan/cards/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/cards/s;->Cr:Lcom/miui/securityscan/cards/m;

    iput-object p2, p0, Lcom/miui/securityscan/cards/s;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iput-object p4, p0, Lcom/miui/securityscan/cards/s;->Ct:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected DA(Lcom/miui/common/b/d;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-wide v2, p1, Lcom/miui/common/b/d;->azL:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/miui/common/b/d;->azK:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iput-boolean v1, v2, Lcom/miui/securityscan/cards/l;->BJ:Z

    iget-object v1, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iput-boolean v0, v1, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iput-wide v6, v0, Lcom/miui/securityscan/cards/l;->BL:J

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-boolean v1, p1, Lcom/miui/common/b/d;->azM:Z

    iput-boolean v1, v0, Lcom/miui/securityscan/cards/l;->BM:Z

    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->Ct:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/cards/o;

    iget-object v2, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-boolean v2, v2, Lcom/miui/securityscan/cards/l;->BJ:Z

    iget-object v3, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-boolean v3, v3, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-object v4, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-wide v4, v4, Lcom/miui/securityscan/cards/l;->BL:J

    iget-object v6, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-boolean v6, v6, Lcom/miui/securityscan/cards/l;->BM:Z

    invoke-interface/range {v1 .. v6}, Lcom/miui/securityscan/cards/o;->onNetworkAssistChange(ZZJZ)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-wide v4, p1, Lcom/miui/common/b/d;->azL:J

    iget-wide v6, p1, Lcom/miui/common/b/d;->azN:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, v2, Lcom/miui/securityscan/cards/l;->BJ:Z

    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iput-boolean v1, v0, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->Cs:Lcom/miui/securityscan/cards/l;

    iget-wide v2, p1, Lcom/miui/common/b/d;->azK:J

    iget-wide v4, p1, Lcom/miui/common/b/d;->azL:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/miui/securityscan/cards/l;->BL:J

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/common/b/d;
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/cards/s;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/c;->aHn(Landroid/content/Context;)Lcom/miui/common/b/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkassist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/s;->doInBackground([Ljava/lang/Void;)Lcom/miui/common/b/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/common/b/d;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/s;->DA(Lcom/miui/common/b/d;)V

    return-void
.end method
