.class Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;
.super Ljava/lang/Object;
.source "AssistListView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/home/launcher/assistant/module/CardSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/assistant/module/CardSource;Lcom/miui/home/launcher/assistant/module/CardSource;)I
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    if-gez v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v3

    sub-int v1, v2, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/home/launcher/assistant/module/CardSource;

    check-cast p2, Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;->compare(Lcom/miui/home/launcher/assistant/module/CardSource;Lcom/miui/home/launcher/assistant/module/CardSource;)I

    move-result v0

    return v0
.end method
