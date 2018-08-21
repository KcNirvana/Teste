.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;
.super Landroid/os/AsyncTask;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->requestReportFormat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1200(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const-string/jumbo v5, "key_font_size_selected"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const-string/jumbo v5, "key_font_bg_selected"

    const-string/jumbo v6, "white"

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5, v0}, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->requestServer()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$7;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const v1, 0x1b0b00d0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/util/ToastUtil;->show(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
