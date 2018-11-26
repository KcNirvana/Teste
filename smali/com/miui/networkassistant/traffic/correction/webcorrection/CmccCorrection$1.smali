.class final Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/miui/common/g/b;->aMA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->-wrap0(Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;Ljava/lang/String;)V

    return-void
.end method
