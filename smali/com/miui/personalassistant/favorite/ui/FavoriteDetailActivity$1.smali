.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;
.super Landroid/os/AsyncTask;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->initData()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "key_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->getRecordByUrl(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$002(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$200(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    return-void
.end method
