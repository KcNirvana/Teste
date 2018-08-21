.class Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;
.super Landroid/os/AsyncTask;
.source "FavTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateData()V
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
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$100(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->getAllRecords(Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$002(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$000(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$000(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateUIToTip(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateUIToTip(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$000(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method
