.class Lcom/miui/zeus/google/gson/internal/Excluder$1;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/miui/zeus/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/zeus/google/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/miui/zeus/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/internal/Excluder;ZZLcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->this$0:Lcom/miui/zeus/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$gson:Lcom/miui/zeus/google/gson/Gson;

    iput-object p5, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$gson:Lcom/miui/zeus/google/gson/Gson;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->this$0:Lcom/miui/zeus/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/google/gson/Gson;->getDelegateAdapter(Lcom/miui/zeus/google/gson/TypeAdapterFactory;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/zeus/google/gson/internal/Excluder$1;->delegate()Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/zeus/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->nullValue()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/zeus/google/gson/internal/Excluder$1;->delegate()Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
