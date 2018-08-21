.class Lcom/miui/personalassistant/stock/search/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/search/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$000(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$000(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    new-instance v1, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$100(Lcom/miui/personalassistant/stock/search/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$200(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/SearchAdapter;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/stock/search/SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$002(Lcom/miui/personalassistant/stock/search/SearchActivity;Lcom/miui/personalassistant/stock/search/QueryAsyncTask;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->access$000(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
