.class final Lcom/miui/gamebooster/service/E;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic ng:Lcom/miui/gamebooster/service/f;

.field final synthetic nh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/E;->ng:Lcom/miui/gamebooster/service/f;

    iput-object p2, p0, Lcom/miui/gamebooster/service/E;->nh:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/E;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string/jumbo v0, "videopalyer_list"

    iget-object v1, p0, Lcom/miui/gamebooster/service/E;->ng:Lcom/miui/gamebooster/service/f;

    invoke-static {v1}, Lcom/miui/gamebooster/service/f;->pZ(Lcom/miui/gamebooster/service/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/m;->fQ(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/E;->nh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/E;->ng:Lcom/miui/gamebooster/service/f;

    iget-object v1, p0, Lcom/miui/gamebooster/service/E;->nh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/f;->qb(Lcom/miui/gamebooster/service/f;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
