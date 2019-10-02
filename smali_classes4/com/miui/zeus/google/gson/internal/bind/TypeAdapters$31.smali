.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field final synthetic val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 0
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

    iget-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
