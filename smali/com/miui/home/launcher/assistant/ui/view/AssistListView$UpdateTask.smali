.class Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;
.super Landroid/os/AsyncTask;
.source "AssistListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/ArrayList;
    .locals 9

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/Util;->getCardOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$102(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$302(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;I)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v8, "key_recommend"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->containInSources()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSource(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-direct {v6, v5, v4}, Lcom/miui/home/launcher/assistant/module/CardSource;-><init>(Lcom/miui/home/launcher/assistant/module/CardSource;Z)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6, v0, v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateTask onPostExecute result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->updateCards(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->notifyDataChanged()V

    goto :goto_0
.end method
