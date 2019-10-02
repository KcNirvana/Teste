.class Lcom/miui/zeus/columbus/util/e;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "GsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/zeus/google/gson/TypeAdapter;

.field final synthetic b:Lcom/miui/zeus/google/gson/reflect/TypeToken;

.field final synthetic c:Lcom/miui/zeus/columbus/util/d;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/util/d;Lcom/miui/zeus/google/gson/TypeAdapter;Lcom/miui/zeus/google/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/util/e;->c:Lcom/miui/zeus/columbus/util/d;

    iput-object p2, p0, Lcom/miui/zeus/columbus/util/e;->a:Lcom/miui/zeus/google/gson/TypeAdapter;

    iput-object p3, p0, Lcom/miui/zeus/columbus/util/e;->b:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/e;->b:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/miui/zeus/columbus/util/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/zeus/columbus/util/e;->c:Lcom/miui/zeus/columbus/util/d;

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/d;->a(Lcom/miui/zeus/columbus/util/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAF: skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which has customized DESERIALIZER"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/e;->a:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->peek()Lcom/miui/zeus/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/miui/zeus/google/gson/stream/JsonToken;->STRING:Lcom/miui/zeus/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->skipValue()V

    iget-object p1, p0, Lcom/miui/zeus/columbus/util/e;->c:Lcom/miui/zeus/columbus/util/d;

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/d;->a(Lcom/miui/zeus/columbus/util/d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAF: skip string value for type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/util/e;->a:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/miui/zeus/columbus/util/e;->a:Lcom/miui/zeus/google/gson/TypeAdapter;

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

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/e;->a:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
