.class abstract Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method private constructor <init>(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget-object p1, p1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->header:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, p1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget p1, p1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->header:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextNode()Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->header:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
