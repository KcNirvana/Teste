.class final Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;->this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/model/WhiteGroupHeader;Lcom/miui/networkassistant/model/WhiteGroupHeader;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    check-cast p2, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;->compare(Lcom/miui/networkassistant/model/WhiteGroupHeader;Lcom/miui/networkassistant/model/WhiteGroupHeader;)I

    move-result v0

    return v0
.end method
