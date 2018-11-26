.class Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private pkgToTagMap:Ljava/util/HashMap;

.field private uidToMaxTagMap:Ljava/util/HashMap;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->pkgToTagMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->uidToMaxTagMap:Ljava/util/HashMap;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->uidToMaxTagMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->pkgToTagMap:Ljava/util/HashMap;

    return-void
.end method
