.class Lcom/miui/securityscan/ui/settings/c;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Iq:Lcom/miui/securityscan/ui/settings/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/c;->Iq:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Lcom/miui/securityscan/ui/settings/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/c;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;)V

    return-void
.end method


# virtual methods
.method protected HP(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/c;->Iq:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-static {v0, p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->HM(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/c;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securityscan/utils/g;->IL()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/c;->Iq:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelFactory;->produceManualGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/c;->HP(Ljava/util/List;)V

    return-void
.end method
