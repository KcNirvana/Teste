.class Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, v2, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0
.end method

.method reset(Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, v0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/miui/zeus/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method
