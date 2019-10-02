.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$26$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$26$1;-><init>(Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$26;Lcom/miui/zeus/google/gson/TypeAdapter;)V

    return-object p2
.end method
