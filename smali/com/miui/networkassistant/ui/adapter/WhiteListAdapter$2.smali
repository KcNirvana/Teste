.class final Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;->this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/model/WhiteListItem;Lcom/miui/networkassistant/model/WhiteListItem;)I
    .locals 1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    check-cast p2, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;->compare(Lcom/miui/networkassistant/model/WhiteListItem;Lcom/miui/networkassistant/model/WhiteListItem;)I

    move-result v0

    return v0
.end method
