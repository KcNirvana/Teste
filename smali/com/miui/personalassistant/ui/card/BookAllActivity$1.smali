.class Lcom/miui/personalassistant/ui/card/BookAllActivity$1;
.super Landroid/os/AsyncTask;
.source "BookAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/card/BookAllActivity;->initData()V
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
        "Ljava/util/List",
        "<",
        "Lcom/miui/personalassistant/model/BaseEventGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/card/BookAllActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x16d

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/api/CalendarAPI;->loadTripEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$000(Lcom/miui/personalassistant/ui/card/BookAllActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$100(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$200(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$300(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$100(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;->this$0:Lcom/miui/personalassistant/ui/card/BookAllActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->access$200(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0
.end method
