.class Lcom/miui/powercenter/legacypowerrank/c;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aFF:Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/c;->aFF:Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;Lcom/miui/powercenter/legacypowerrank/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/c;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/c;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRq()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/c;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/c;->aFF:Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->aRl(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V

    return-void
.end method
