.class Lcom/miui/powercenter/deepsave/datamodel/c;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field aMF:I

.field aMG:[Lcom/miui/powercenter/deepsave/datamodel/b;

.field final synthetic aMH:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;Landroid/content/Context;[Lcom/miui/powercenter/deepsave/datamodel/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMH:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMG:[Lcom/miui/powercenter/deepsave/datamodel/b;

    iput p4, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMF:I

    return-void
.end method


# virtual methods
.method protected aZq(Ljava/util/List;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMF:I

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMH:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    invoke-static {v1}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->aZo(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMH:Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->aMG:[Lcom/miui/powercenter/deepsave/datamodel/b;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;->aZp(Lcom/miui/powercenter/deepsave/datamodel/RecentConsumeModel;[Lcom/miui/powercenter/deepsave/datamodel/b;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/c;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/c/b;->ben(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/c;->aZq(Ljava/util/List;)V

    return-void
.end method
