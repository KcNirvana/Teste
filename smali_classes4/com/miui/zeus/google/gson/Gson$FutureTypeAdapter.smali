.class Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    return-void
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

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setDelegate(Lcom/miui/zeus/google/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
