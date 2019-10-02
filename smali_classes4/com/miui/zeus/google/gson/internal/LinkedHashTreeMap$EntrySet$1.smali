.class Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->this$1:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object p1, p1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->nextNode()Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
